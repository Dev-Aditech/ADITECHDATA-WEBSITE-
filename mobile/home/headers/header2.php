<!-- Page Header -->
        <div class="header header-fixed mb-3 pt-2 pb-2 bg-white" style="height: auto !important; transform: translateX(0px);">
    <div class="container-fluid">
        <div class="d-flex align-items-center justify-content-between">

            <div class="d-flex align-items-center">
                <div>
                    <a href="profile">
                        <img src="../../assets/images/icons/pro.jpeg" style="border-radius:5rem; width:45px; height:45px; margin-right:10px;">
                    </a>
                </div>
                <div>
                    <h5 class="my-0 py-0 mt-2" style="line-height: 10px;"><a href="profile" style="color:<?php echo $sitecolor; ?>">Hi, <?php echo $profileDetails->sFname . " (" . $controller->formatUserType($profileDetails->sType) . ")"; ?></a></h5>
                    <p class="my-0 py-0  text-dark"><strong>Balance: ₦<?php echo number_format($data->sWallet); ?></strong></p>
                </div>
            </div>

            <div class="d-flex align-items-center">
                <a href="notifications" class="me-3">
                    <h3><ion-icon class="font-23" style="color:<?php echo $sitecolor; ?>;" name="notifications"></ion-icon></h3>
                </a>

                <a href="logout" class="mr-2">
                    <h3><ion-icon class="font-23" style="color:<?php echo $sitecolor; ?>;" name="power"></ion-icon></h3>
                </a>
            </div>

        </div>
    </div>
</div>