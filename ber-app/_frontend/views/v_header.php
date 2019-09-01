<div id="site-header">
    <div class="flat-top">
        <div class="container">
            <div class="row">
                <?php
                $identitas = $this->M_data->identitasfooter();
                foreach ($identitas->result() as $row) {
                    ?>
                    <div class="flat-wrapper">
                        <div class="custom-info">
                            <span>Sampaikan Pertanyaan Anda</span>
                            <span><i class="fa fa-phone"></i><?php echo $row->no_telp; ?></span>
                            <span><i class="fa fa-envelope"></i><?php echo $row->email; ?></span>
                        </div>

                        <div class="social-links">
                            <a href="#">
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a href="#">
                                <i class="fa fa-facebook"></i>
                            </a>
                            <a href="#">
                                <i class="fa fa-behance"></i>
                            </a>
                            <a href="#">
                                <i class="fa fa-spotify"></i>
                            </a>
                            <a href="#">
                                <i class="fa fa-rss"></i>
                            </a>
                        </div>
                    </div><!-- /.flat-wrapper -->
                <?php } ?>
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.flat-top -->

    <!-- MULAI MAIN MENU -->
    <header id="header" class="header clearfix">
        <div class="header-wrap clearfix">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">
                        <div id="logo" class="logo">
                            <a href="<?php echo base_url(); ?>">
                                <img src="<?php echo base_url(); ?>style/images/logo.png" alt="images">
                            </a>
                        </div><!-- /.logo -->
                        <div class="btn-menu">
                            <span></span>
                        </div><!-- //mobile menu button -->

                        <div class="nav-wrap">
                            <nav id="mainnav" class="mainnav">
                                <ul class="menu">
                                    <li><a href="#">Portfolio</a>
                                        <ul class="submenu">
                                            <li><a href="portfolio-grid-classic-03-columns.html">Grid Classic Layouts</a>
                                                <ul class="submenu">
                                                    <li><a href="portfolio-grid-classic-02-columns.html">Grid Classic 02 Columns</a></li>
                                                    <li><a href="portfolio-grid-classic-03-columns.html">Grid Classic 03 Columns</a></li>
                                                    <li><a href="portfolio-grid-classic-04-columns.html">Grid Classic 04 Columns</a></li>
                                                    <li><a href="portfolio-grid-classic-05-columns.html">Grid Classic 05 Columns</a></li>
                                                </ul>
                                            </li>
                                        </ul><!-- /.submenu -->
                                    </li>
                                </ul><!-- /.menu -->
                            </nav><!-- /.mainnav -->
                        </div><!-- /.nav-wrap -->
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.header-inner -->
    </header><!-- /.header -->
    <!-- SELESAI MAIN MENU -->
</div><!-- /.site-header -->