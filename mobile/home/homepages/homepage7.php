<div class="page-content header-clear-medium">

        <div class="card card-style bg-20" data-card-height="190" 
           
            style="height: 100px; background-image: url('../../assets/img/card5.png');">
            <div class="card-top ps-3 pt-2">
                <h5 class=" font-16 float-start color-white"> <?php echo $data->sPhone; ?>&nbsp;<img src="/assets/sim.gif" alt="copy" width="18" height="18" /></h5>
            </div>
            <div class="card-top pe-3 pt-2">
                <h5 class="color-white float-end"  style="text-shadow: 2px 2px 2px #000000;">• Active </h5>
            </div>
            <div class="card-center ps-3 pt-2">
                
                <h2 class="color-white font-20" style="text-shadow: 2px 2px 2px #000000;">
                     ₦<?php echo number_format($data->sWallet); ?> 
                </h2>
                <h6 class="color-white font-16"  style="text-shadow: 2px 2px 2px #000000;">
                    
                ..
                </h6>
            </div>
            <div class="card-center pe-3 pt-2">
            <a href="fund-wallet" class="float-end text-center">
                    <span class="icon icon-l bg-light shadow-l rounded-sm">
                        <i class="fa fa-plus font-18" style="color:#00A264;>"></i>
                    </span>
                    <h5 class="mb-0 pt-1 font-14 text-white" style="text-shadow: 2px 2px 2px #000000;">Add Fund</h5>
                </a>
            </div>
            <div class="card-bottom ps-3 pb-2 bt-3">
                <h5 class="font-15"><a href="fund-wallet" style="text-shadow: 2px 2px 2px #000000;"><b class="text-white">Kuda Bank</b></a></h5>
                <p class="mb-2 text-white font-600 font-16" onclick="copyToClipboard('<?php echo $data3->accountname; ?>')"> <b>Acc No: </b><?php echo $data3->accountno; ?>&nbsp;<img src="/assets/copy.png" alt="copy" width="23" height="23" /></p>
                <!--<p class="mb-2 text-white font-600 font-16" onclick="copyToClipboard('<?php echo $data->sRolexBank; ?>')"> <b>Acc No: </b><?php echo $data->sPayvesselBank; ?>&nbsp;<img src="/assets/copy.png" alt="copy"</p>-->
            </div>
            
            <div class="card-overlay bg-gradient"></div>

        </div>
        
         <div class="card card-style mt-n3">
            <div class="content mb-2 mt-3">
                <div class="row text-center mb-0">                    
                   <marquee><b>Please Take Note All Charges: </b> Top-up Bank Transfer Charges <b>₦15 and 2%</b> for transfer..  Automated Bank Transfer Attracts Additional Charges of 2% only..  Notification changes <b>₦20</b> every  month. Available Data Network: MTN • GLO •  AIRTEL •  9MOBILE...</marquee>                   
                </div>
            </div>
        </div>

<!-- START -->        
        <div class="card card-style mt-n3">
            <div class="content mb-2 mt-3">
                <div class="row text-center mb-0">
                    <a href="buy-data" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="../../assets/images/icons/mtn.png" width="45" height="45">
                        </span>
                        <p class="mb-0 pt-1 font-11">MTN</p>
                    </a>
                    
                    <a href="buy-data" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="../../assets/images/icons/airtel.png" width="45" height="45">
                        </span>
                        <p class="mb-0 pt-1 font-11">AIRTEL</p>
                    </a>
                    
                    <a href="buy-data" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="../../assets/images/icons/glo.png" width="45" height="45">
                        </span>
                        <p class="mb-0 pt-1 font-11">GLO</p>
                    </a>
                    
                    <a href="buy-data" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="../../assets/images/icons/9mobile.png" width="45" height="45">
                        </span>
                        <p class="mb-0 pt-1 font-11">9MOBILE</p>
                    </a>
                </div>
            </div>
        </div>
<!-- END -->

<!-- START -->        
        <div class="card card-style mt-n3">
            <div class="content mb-2 mt-3">
                <div class="row text-center mb-0">
                    <a href="verify-nin" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="/assets/print/nin.png" width="45" height="45">
                        </span>
                        <p class="mb-0 pt-1 font-11">Print NIN</p>
                    </a>
                    
                    <a href="verify-bvn" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="/assets/print/bvn.png" width="45" height="45">
                        </span>
                        <p class="mb-0 pt-1 font-11">Print BVN</p>
                    </a>
                    
                    <a href="cac" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="/assets/print/cac.png" width="45" height="45">
                        </span>
                        <p class="mb-0 pt-1 font-11">Reg CAC</p>
                    </a>
                    
                    <a href="verify-pnv" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="/assets/print/bvn2.png" width="45" height="45">
                        </span>
                        <p class="mb-0 pt-1 font-11">Phone BVN</p>
                    </a>
                </div>
            </div>
        </div>
<!-- END -->

<!-- START -->
        <div class="card card-style mt-n3">
            <div class="content mb-3 mt-3">
            <div>
                <h5>Quick Access</h5>
                <hr/>
               </div>
                <div class="row text-center mb-0">
                    <a href="fund-walle" class="col-3">
                        <span class="icon icon-l rounded-sm" style="background:#fcead9; color:#ff7614;">
                            <i class="fa fa-credit-card font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-11">Deposit</p>
                    </a>
                    <a href="sendbulksms" class="col-3">
                        <span class="icon icon-l rounded-sm" style="background:#d9fcf7; color:#32a852;">
                            <i class="fas fa-sms font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-11">BulkSMS</p>
                    </a>
                    <a href="#agent-upgrade-modal" id="upgrade-agent-btn" data-menu="agent-upgrade-modal" class="col-3">
                        <span class="icon icon-l rounded-sm" style="background:#e2d9fc; color:#5138cf;">
                            <i class="fa fa-user font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-11">Agent</p>
                    </a>
                    <a href="#vendor-upgrade-modal" id="upgrade-vendor-btn" data-menu="vendor-upgrade-modal" class="col-3">
                        <span class="icon icon-l rounded-sm" style="background:#f5d9fc; color:#ae38cf;">
                            <i class="fa fa-user-plus font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-11">Vendor</p>
                    </a>
                </div>
            </div>
        </div>
<!-- END -->



<!-- START -->
        <div class="card card-style mt-n3">
            <div class="content mb-3 mt-3">
               <div>
                <h5>Menu</h5>
                <hr/>
               </div>

                <div class="row text-center mb-0">
                    
                <a href="buy-airtime" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-phone font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Airtime</p>
                    </a>

                    <a href="buy-data" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-wifi font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Data</p>
                    </a>
                    
                    <a href="beneficiary" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-group font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Add Cont</p>
                    </a>

                    <a href="cable-tv" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-tv font-18 "></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Cable TV</p>
                    </a>

                    <a href="electricity" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-bolt font-18 "></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Electricity</p>
                    </a>

                    <a href="exam-pins" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-graduation-cap font-18 "></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Exam</p>
                    </a>
                    
                    <a href="about-us" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-sitemap font-18 "></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">About</p>
                    </a>
                    
                   <a href="status" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-rocket font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Status</p>
                    </a>
                    
                    <a href="recharge-pin" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-fax font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Card Pin</p>
                    </a>
                    
                    <a href="buy-data-pin" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-calculator font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Card</p>
                    </a>
                    
                    <!--<a href="2bank" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-arrow-up font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Wallet 2 Bank</p>
                    </a>-->
                    
                    <a href="transactions" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-calendar font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Trans.</p>
                    </a>
                   
                    <a href="pricing" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-list font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Pricing</p>
                    </a>

                    <a href="apidocumentation" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-book font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">API Doc</p>
                    </a>
                    
                    <a href="kyc-verification" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-shield font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">KYC Va.</p>
                    </a>
                    
                    <a href="our-services" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-briefcase font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Services</p>
                    </a>
                    
                    <a href="own-website" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-globe font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">VTU Offer</p>
                    </a>

                    <a href="profile" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-cog font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Profile</p>
                    </a>
                    
                    <a href="transactions" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-bookmark font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">History</p>
                    </a>
                    
                    <a href="network" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-toggle-on font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Network</p>
                    </a>
                    
                    <a href="issues" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-lightbulb-o font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Report</p>
                    </a>

                    <a href="logout" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:<?php echo $sitecolor; ?>;">
                            <i class="fa fa-power-off  font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Logout</p>
                    </a>
                    
                </div>
            </div>
        </div>
<!-- END -->

<!-- START -->
        <div class="row mb-1">
            <div class="col-6">
                <div class="card card-style" data-card-height="85" 
                style="height: 100px;  margin-right:0;">
                        <div class="card-top ps-3 pt-3">
                            <h6 class="font-5" style="color:<?php echo $sitecolor; ?>" >Invites</h6>
                            
                        </div>
                        <div class="card-center pe-3">
                        
                        </div>
                        <div class="card-bottom ps-3 pb-2">
                            <h4><?php echo $data->refCount; ?></h4>
                        </div>                        
                </div>
            </div>
            <div class="col-6">
                <div class="card card-style" data-card-height="85" 
                style="height: 100px;  margin-left:0;">
                        <div class="card-top ps-3 pt-3">
                            <h5 class="font-5" style="color:#00A264">My Earning</h5>
                            
                        </div>
                        <div class="card-center pe-3">
                        
                        </div>
                        <div class="card-bottom ps-3 pb-2">
                            <h3 class="font-5" style="color:#00A264">₦<?php echo $data->sRefWallet; ?></h3>
                        </div>                        
                </div>
            </div>
        </div>
<!-- END -->

<!-- START -->
       <div class="card card-style">
            
            <div class="content">
            <div>
                <h5>Refer & Earn</h5>
                <hr/>
            </div>
               
               <div>
                    <input type="text" class="form-control" readonly value="<?php echo $siteurl."mobile/register/?referral=".$data->sPhone; ?>" />
                    <button class="btn btn-danger btn-sm mt-2" style="border-radius:1.5rem;" onclick="copyToClipboard('<?php echo $siteurl."mobile/register/?referral=".$data->sPhone; ?>')">Copy Link</button>
                    <a href="transfer" class="btn btn-success btn-sm mt-2" style="border-radius:1.5rem; margin-left:5px;">Withdraw</a>
                </div>
            </div>
        </div>
<!-- END -->        