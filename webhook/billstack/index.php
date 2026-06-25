<?php
// Billstack API Webhook Notification

// Auto Load Classes
require_once("../autoloader.php");
require_once("../../core/helpers/vendor/autoload.php");
header('Content-Type: application/json');
date_default_timezone_set('Africa/Lagos');

$headers = getallheaders();
$response = array();
$controller = new ApiAccess;

$input = @file_get_contents("php://input");
$res = json_decode($input);
file_put_contents("billstack_complete.txt", $input);
file_put_contents("billstack_header.txt", json_encode($headers));

// Get the signature from the headers
$key = isset($headers["x-wiaxy-signature"]) ? $headers["x-wiaxy-signature"] : "";

$amount = isset($res->data->amount) ? $res->data->amount : "";
$email = isset($res->data->customer->email) ? $res->data->customer->email : "";
$transactionReference = isset($res->data->transaction_ref) ? $res->data->transaction_ref : "";

if (empty($key) || empty($amount) || empty($email)) {
    echo "Unauthorized"; 
    http_response_code(401); 
    exit();
}

// Verify the signature and email
$check = $controller->verifyBillstackNotification($key, $email);

if ($check->status == "success") {
    $userid = $check->userid;
    $userbalance = $check->balance;
    $charges = (float) $check->charges;
    $chargestype = $check->chargestype;

    // Calculate amount to save
    $amounttosave = ($chargestype == "flat") ? $amount - $charges : $amount - ($amount * ($charges / 100));
    
    // Prepare service details
    $servicename = "Wallet Topup";
    $servicedesc = "Wallet funding of N{$amount} with service charges of N{$charges}.";
    $transactionReference = "Billstack_".$transactionReference;
    
    // Record the transaction
    $result = $controller->recordBillstackTransaction($userid, $servicename, $servicedesc, $amounttosave, $userbalance, $transactionReference, "0");
    
    // Send email notification
    $message = "Your wallet has been credited with N{$amounttosave}. Transaction reference: {$transactionReference}";
    $controller->sendEmailNotification($servicename, $message, $check->useremail);

    echo "Success";
    http_response_code(200);
    exit();
} else {
    echo "Unauthorized"; 
    http_response_code(401); 
    exit();
}
?>
