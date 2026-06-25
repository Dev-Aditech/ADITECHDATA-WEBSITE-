<?php

    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;


	class Model{

		public static $host="localhost";
		public static $dbName="quickjot_updatedv7"; //Database Name
		public static $username="quickjot_updatedv7"; // Database Username
		public static $password="quickjot_updatedv7"; //Database Password
 
        public $dbh;
        
		public $emailUsername="help@wegochat.i.ng"; //Support Email Address support@aspvtu.com
		public $emailPassword="Mul-@2022@ti."; //Support Email Password @aspvtu.com 

        public $sitename;

        public function __construct(){
            $this->dbh = $this->connectDb();
            global $sitename;
			$this->sitename = $sitename;
        }
        
        public function connectDb(){
            $pdo = new PDO("mysql:host=".self::$host.";dbname=".self::$dbName,self::$username,self::$password);
	    	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	    	return $pdo;
        }

		public function connect(){
			return $this->dbh;
		}

		//Send Secure Email With SMTP
		public function sendMail($email,$subject,$message){
		    global $sitename;
	        //Create an instance; passing `true` enables exceptions
            $mail = new PHPMailer(true);

	        try {
                //Server settings
                //$mail->SMTPDebug = SMTP::DEBUG_SERVER;                    //Enable verbose debug output
                $mail->isSMTP();                                            //Send using SMTP
                $mail->Host       = $_SERVER['SERVER_NAME'];                //Set the SMTP server to send through
                $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
                $mail->Username   = $this->emailUsername;                   //SMTP username
                $mail->Password   = $this->emailPassword;                   //SMTP password
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
                $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
            
                //Recipients
                $mail->setFrom($this->emailUsername, $sitename);
                $mail->addAddress($email);     //Add a recipient
                
                //Content
                $mail->isHTML(true);                                  //Set email format to HTML
                $mail->Subject = $subject;
                $mail->Body    = $message;
                $mail->AltBody = strip_tags($message);
            
                $mail->send();
                return 0;
                return 'Message has been sent';
            } catch (Exception $e) {
                return 1;
                return "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }
	    }
	    
	    public function sendBEmail($recipient, $subject, $body) {
    $mail = new PHPMailer(true);
    
    try {
        // SMTP settings
        $mail->isSMTP();
        $mail->Host       = 'mail.vtutelecom.ng';
        $mail->SMTPAuth   = true;
        $mail->Username   = 'support@vtutelecom.ng';
        $mail->Password   = '@Sunusi82kiru'; // Use your actual SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        $mail->Port       = 465;

        // Sender and recipient
        $mail->setFrom('support@vtutelecom.ng', 'VTU TELECOM');
        $mail->addAddress($recipient);

        // Email content
        $mail->isHTML(true);
        $mail->Subject = $subject;
        $mail->Body    = $body;
        $mail->AltBody = strip_tags($body);

        // Send the email
        if ($mail->send()) {
            return 'Email sent successfully to ' . $recipient;
        } else {
            return 'Email could not be sent. Mailer Error: ' . $mail->ErrorInfo;
        }
    } catch (Exception $e) {
        return 'Email could not be sent. Mailer Error: ' . $e->getMessage();
    }
}

        //Get Api Config Values
        public function getConfigValue($list,$name){
			foreach($list AS $item){
				if($item->name == $name){return $item->value;}
			}
		}

        //Get API Setting
		public function getApiConfiguration(){
			$dbh=self::connect();
			$sql = "SELECT * FROM apiconfigs";
            $query = $dbh->prepare($sql);
            $query->execute();
            $results=$query->fetchAll(PDO::FETCH_OBJ);
            return $results;
		}

        //Get Site Setting
		public function getSiteConfiguration(){
			$dbh=self::connect();
			$sql = "SELECT * FROM sitesettings WHERE sId=1";
            $query = $dbh->prepare($sql);
            $query->execute();
            $results=$query->fetch(PDO::FETCH_OBJ);
            return $results;
		}

	    
        public function __destruct()
        {
            $dbh="";
        }

	}

?>