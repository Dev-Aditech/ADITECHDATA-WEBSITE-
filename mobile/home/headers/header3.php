<!-- Page Header -->
        <div style="background-image:url(../../assets/img/bg/cover8.jpg); margin-bottom:-66px;">
    <div class="mb-3 pt-2 pb-2" style="height: auto !important; transform: translateX(0px); background-color:<?php echo $sitecolor; ?>; opacity:0.9;">
        <div class="container-fluid">
            <div class="d-flex align-items-center justify-content-between">

                <div class="d-flex align-items-center">
                    <div>
                        <a href="profile">
                            <img src="../../assets/images/user-smile.png" style="border-radius:5rem; width:45px; height:45px; margin-right:10px;">
                        </a>
                    </div>
                    <div>
                        <h5 class="my-0 py-0 mt-2  text-white" style="line-height: 10px;">Hi, <a href="profile" class=" text-white"><?php echo $profileDetails->sFname . " (".$controller->formatUserType($profileDetails->sType).")"; ?></a></h5>
                        <p class="my-0 py-0  text-white"><strong>Commission:₦ <?php echo $data->sRefWallet; ?></strong></p>
                    </div>
                </div>

                <div class="d-flex align-items-center">
                    <a href="notifications" class="me-3 text-white">
                        <h3><ion-icon class="font-25 text-white" name="notifications"></ion-icon></h3>
                    </a>

                    <a href="logout" class="mr-2 text-white">
                        <h3><ion-icon class="font-25 text-white" name="power"></ion-icon></h3>
                    </a>
                </div>

            </div>
        </div>
    </div>
</div>