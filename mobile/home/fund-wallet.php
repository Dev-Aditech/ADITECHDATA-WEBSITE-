<div class="page-content header-clear-medium">
        
        
        <div class="card card-style bg-theme pb-0">
            <div class="content" id="tab-group-1">
                <div class="tab-controls tabs-small tabs-rounded" data-highlight="bg-highlight">
                    <a href="#" data-active data-bs-toggle="collapse" data-bs-target="#tab-1">Bank</a>
                    <a href="#" data-bs-toggle="collapse" data-bs-target="#tab-2">Card</a>
                    <a href="#" data-bs-toggle="collapse" data-bs-target="#tab-3">Manual</a>
                </div>
                <div class="clearfix mb-3"></div>
                <div data-bs-parent="#tab-group-1" class="collapse show" id="tab-1">
                <div class="text-center">
                    <p class="text-center">
                        <span class="icon icon-l gradient-blue shadow-l rounded-sm">
                            <i class="fa fa-arrow-up font-30 color-white"></i>
                        </span>
                    </p>
                    <h4 class="text-primary">FUND WALLET</h4>
                    
                    <!-- BILLSTACK BANK START -->
<?php 
if ($controller->getConfigValue($data2, "billstackStatus") == "On"): 
    $billstackCharges = $controller->getConfigValue($data2, "billstackCharges");
    $billstackChargesType = $controller->getConfigValue($data2, "billstackChargesType");
    $billstackChargesText = ($billstackChargesType == "flat") ? "N" . $billstackCharges : $billstackCharges . "N";

    // Array of bank options
    $banks = [
        "PALMPAY" => $data->sPalmpayBank,
    ];
?>

<p class="mb-2 text-danger font-600 font-15">Select a bank to generate a dedicated account number. Funding attracts <?php echo $billstackChargesText; ?> only.</p>

<?php foreach ($banks as $bankName => $bankAccount): ?>
    <?php if (empty($bankAccount)): ?>
        <form method="POST" id="billstackForm_<?php echo $bankName; ?>">
            <input type="hidden" name="generate-billstack-account" value="<?php echo $bankName; ?>" />
        </form>
        <button class="btn btn-primary font-700 rounded-xl mt-3" id="billstackBtn_<?php echo $bankName; ?>"
            onclick="$('#billstackBtn_<?php echo $bankName; ?>').removeClass('btn-primary').addClass('btn-secondary').html('<i class=\'fa fa-spinner fa-spin\'></i> Processing ...'); $('#billstackForm_<?php echo $bankName; ?>').submit();">
            Generate <?php echo $bankName; ?> Account
        </button>
    <?php else: ?>
        <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b><?php echo $bankName; ?></p>
        <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $bankAccount; ?></p>
        <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $billstackChargesText; ?> only.</p>
        <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $bankAccount; ?>')">Copy Account No</button>
    <?php endif; ?>
    <hr />
<?php endforeach; ?>

<?php endif; ?>
<!-- BILLSTACK BANK END -->
            
                    <!-- PAYVESSEL BANK START-->
                  <?php if($controller->getConfigValue($data2,"payvesselStatus") == "On"): ?>
                  <?php $payvesCharges = $controller->getConfigValue($data2,"payvesselCharges"); 
                  $payvesChargesType = $controller->getConfigValue($data2,"payvesselChargesType"); 
                  $payvesChargesText = ($payvesChargesType == "flat") ? "N".$payvesCharges : $payvesCharges."%";?>
                  <?php $generatedAccountNumber = $controller->generatePayvesselDynamic();?> 
                 <?php  if($data->pVerify == "yes"): ?>
                 <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b>9Payment Service Bank (9PSB)</p>
                 <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sPayvesselBank; ?></p>
                 <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $payvesChargesText; ?> only.</p>
                 <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sPayvesselBank; ?>')">Copy Account No</button>
                 <?php else: ?>
                 
                 <?php  if($profileDetails->sKycStatus <> "verified" && $siteSettings->kycShouldEnable == "yes"): ?>
                        

                        <div id="kycNoteBox" class="border" style="padding:20px;">
                            <img src="../../assets/images/icons/user-verify.png" style="width:50px; height:50px;" />

                            <p class="mb-0 font-600 color-highlight">KYC Verification</p>
                            <h1>Account Verification</h1>
                            <h6 class="color-highlight">Get A Dedicated Bank Account For Fast And Automatic Funding</h6>
                            <hr />
                            <p class="mb-1 font-600 text-danger">As Required By The Central Bank Of Nigeria (CBN), Before You Can Fund Your Wallet With A Virtual Account, We Would Need To Verify Your Identity Using Your NIN or BVN. This Process Is Automatic And You Would Be Able To Fund Your Wallet Once Verified.</p>
                            
                            <a href="payvessel-verify" style="width: 100%;" class="the-form-btn btn btn-full btn-l font-600 font-15 gradient-highlight mt-4 rounded-s">
                                            Start Verification
                            </a>

                        </div>
                    <?php else: ?>

                 
               <?php endif; ?> <?php endif; ?><?php endif; ?><hr/>

                <!-- PAYVESSEL BANK END -->
                    
                <!-- ASPFIY BANK START -->
<?php if($controller->getConfigValue($data2,"asfiyStatus") == "On"): ?>
    <?php 
    $asfiyCharges = $controller->getConfigValue($data2,"asfiyCharges");
    $asfiyChargesType = $controller->getConfigValue($data2,"asfiyChargesType");
    $asfiyChargesText = ($asfiyChargesType == "flat") ? "N".$asfiyCharges : $asfiyCharges."%"; 
    ?>
    <?php if(empty($data->sAsfiyBank)): ?>
        <p class="mb-2 text-danger font-600 font-15">Get A Paga Account For Automated Transfer, Generate A Dedicated Account Number Now. Funding Attracts <?php echo $asfiyChargesText; ?> only.</p>
        <form method="POST" id="aspfiyform"><input type="hidden" name="generate-aspfiy-account" value="YES" /></form>
        <button class="btn btn-primary font-700 rounded-xl mt-3" id="aspfiybtn" onclick="$('#aspfiybtn').removeClass('btn-primary'); $('#aspfiybtn').addClass('btn-secondary'); $('#aspfiybtn').html('<i class=\'fa fa-spinner fa-spin\'></i> Processing ...'); $('#aspfiyform').submit();">Generate Account</button>
    <?php else: ?>
        <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b>Paga Microfinance Bank</p>
        <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sAsfiyBank; ?></p>
        <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $asfiyChargesText; ?> only.</p>
        <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sAsfiyBank; ?>')">Copy Account No</button>
    <?php endif; ?>
    <hr/>
<?php endif; ?>
<!-- ASPFIY BANK END -->

                    <!-- MONNIFY BANK START -->
                    <?php if($controller->getConfigValue($data2,"monifyStatus") == "On"): ?>
                        <?php $chargesText = $controller->getConfigValue($data2,"monifyCharges"); ?>
                        <?php if($chargesText == 50 || $chargesText == "50"){$chargesText = "N".$chargesText;} else {$chargesText = $chargesText."%";} ?>
                  <?php  if($profileDetails->sKycStatus <> "verified" && $siteSettings->kycShouldEnable == "yes"): ?>
                       <p class="mb-2 text-danger font-600 font-15">Get Wema Bank Account  <?php echo $chargesText; ?> Charge only.</p>
                        <p class="mb-2"><b>Note: </b> This is dynamic account and is a TEMPORARY account for funding, can only be used ONE TIME. <?php echo $chargesText; ?> Charge only. <br> <a href="kyc-verification" class="text-danger"> <b>[ Or Get Permanent Wema, GTB, Fidelity Account ]</b></a></p>
                
                           <a href="dynamic-account" style="" class="btn btn-primary font-700 rounded-xl mt-3">Generate Account</a>
                   
                       <?php else: ?>
                        <?php if($controller->getConfigValue($data2,"monifyGtStatus") == "On"): ?>
                                   
                        <?php if(empty($data->sGtBank)): ?>
                        
                        
                            <p class="mb-2 text-danger font-600 font-15">Get A GT Bank Account For Automated Transfer, Generate A Dedicated Account Number Now. Funding Attracts <?php echo $chargesText; ?> only.</p>
                            <form method="POST" id="gtbankform"><input type="hidden" name="generate-gtbank-account" value="YES" /></form>
                            <button class="btn btn-primary font-700 rounded-xl mt-3" id="gtbankbtn" onclick="$('#gtbankbtn').removeClass('btn-primary'); $('#gtbankbtn').addClass('btn-secondary'); $('#gtbankbtn').html('<i class=\'fa fa-spinner fa-spin\'></i> Processing ...'); $('#gtbankform').submit();">Generate Account</button>
                        <?php else: ?>
                            <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b>GT Bank</p>
                            <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sGtBank; ?></p>
                            <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $chargesText; ?> only.</p>
                            <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sGtBank; ?>')">Copy Account No</button>
                        <?php endif; ?>
                        <hr/>
                        <?php endif; if($controller->getConfigValue($data2,"monifyFeStatus") == "On"): ?>
                        <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b>Fidelity  Bank</p>
                        <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sFidelityBank; ?></p>
                        <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $chargesText; ?> only.</p>
                        <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sFidelityBank; ?>')">Copy Account No</button>
                        <hr/>
                        <?php endif; if($controller->getConfigValue($data2,"monifyMoStatus") == "On"): ?>
                        <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b>Moniepoint Bank</p>
                        <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sRolexBank; ?></p>
                        <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $chargesText; ?> only.</p>
                        <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sRolexBank; ?>')">Copy Account No</button>
                        <hr/>
                        <?php endif; if($controller->getConfigValue($data2,"monifyWeStatus") == "On"): ?>
                        <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: Wema Bank</p>
                        <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sBankNo; ?></p>
                        <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $chargesText; ?> only.</p>
                        <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sBankNo; ?>')">Copy Account No</button>
                        <hr/>
                        <?php endif; if($controller->getConfigValue($data2,"monifySaStatus") == "On"): ?>
                        <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b>Sterling Bank</p>
                        <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sSterlingBank; ?></p>
                        <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $chargesText; ?> only.</p>
                        <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sSterlingBank; ?>')">Copy Account No</button>
                        <?php endif; ?>
                    <?php endif; ?>
                    <!-- MONNIFY BANK END -->

                    <?php endif; ?>
                </div>
                </div>
                

                <div data-bs-parent="#tab-group-1" class="collapse" id="tab-2">
                        <div class="text-center">
                            <p class="text-center">
                                <span class="icon icon-l gradient-blue shadow-l rounded-sm">
                                    <i class="fa fa-arrow-up font-30 color-white"></i>
                                </span>
                            </p>
                            <h4 class="text-primary">FUND WALLET</h4>
                            <p class="mb-2 text-dark font-600 font-16">
                            Pay with bank card or ussd. Secured by Monnify
                            </p>
                    
                        </div>
                        
                        <?php if($controller->getConfigValue($data2,"monifyCardStatus") == "On"): ?>
                        <form  method="post">
                        <div class="mt-5 mb-3">
                            
                            <div class="input-style has-borders no-icon input-style-always-active mb-4">
                                
                                <input type="number" class="form-control" id="amount" name="amount" placeholder="Amount" required>
                                <label for="amount" class="color-highlight">Amount</label>
                                <em>(required)</em>
                            </div>
                            <div class="input-style has-borders no-icon input-style-always-active  mb-4">
                                <input type="text" class="form-control" value="<?php echo $chargesText; ?>" disabled>
                                <label for="charges" class="color-highlight">Charges</label>
                                <em>(required)</em>
                            </div>
                        </div>
                        <button type="submit" name="fund-with-card" style="width: 100%;" class="btn btn-full btn-l font-600 font-15 gradient-highlight mt-4 rounded-s" id="card" onclick="$('#card').removeClass('btn-primary'); $('#card').addClass('btn-secondary'); $('#card').html('<i class=\'fa fa-spinner fa-spin\'></i> Processing ...'); $('#gtbankform').submit();">
                         Pay Now
                        </button> <div class="text-center"><img src="../../assets/img/monnifyimage.png" style="height: 35px;" /></div>
                        </form>
                        <?php else : ?>
                            <h3 class="text-danger">Opps!! Card Payment Is Disabled, Please Contact Admin</h3>
                        <?php endif; ?>
                </div>

                <div data-bs-parent="#tab-group-1" class="collapse" id="tab-3">
                <div class="text-center">
                    <p class="text-center">
                        <span class="icon icon-l gradient-blue shadow-l rounded-sm">
                            <i class="fa fa-arrow-up font-30 color-white"></i>
                        </span>
                    </p>
                    <h4 class="text-primary">FUND WALLET</h4>
                    <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b><?php echo $data3->bankname; ?></p>
                    <p class="mb-2 text-dark font-600 font-16"><b>Account Name: </b><?php echo $data3->accountname; ?></p>
                    <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data3->accountno; ?></p>
                    <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Please contact admin before making any transfer.</p>
                    <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data3->accountno; ?>')">Copy Account No</button>
                    <a class="btn btn-success font-700 rounded-xl mt-3" href="https://wa.me/234<?php echo $data3->whatsapp; ?>">Contact Admin</a>
                    
                </div>
                </div>

                
                
            </div>
        </div> 

</div>

