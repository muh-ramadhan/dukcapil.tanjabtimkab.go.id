<div id="site-header">
    <div class="flat-top">
        <div class="container">
            <div class="row">
                <?php $identitas = $this->M_data->identitasfooter();
                foreach ($identitas->result() as $row) { ?>
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
                            <?php $identitas = $this->M_data->identitasfooter();
                            foreach ($identitas->result() as $row) { ?>
                                <a href="<?php echo base_url(); ?>">
                                    <img src="<?php echo base_url() ?>style/images/<?php echo $row->logo; ?>" alt="images">
                                </a>
                            <?php } ?>
                        </div><!-- /.logo -->
                        <div class="btn-menu">
                            <span></span>
                        </div><!-- //mobile menu button -->

                        <div class="nav-wrap">
                            <nav id="mainnav" class="mainnav">
                                <?php $menu = $this->M_data->ambilmenu(2);
                                $no = 1;
                                foreach ($menu->result() as $row) { ?>
                                    <?php $submenu = $this->M_data->ambilsubmenu('', $row->id_menu);
                                        $jumlah = $submenu->num_rows();
                                        ?>
                                    <ul class="menu">
                                        <li>
                                            <a href="<?php echo base_url();
                                                            echo $row->link; ?>"><?php echo $row->nama_menu; ?></a>
                                            <?php if ($jumlah >= 1) { ?>
                                                <ul class="submenu">
                                                    <?php foreach ($submenu->result() as $sub) {
                                                                $lin1 = substr($sub->link_submenu, 0, 3);
                                                                if ($lin1 != "htt") {
                                                                    $link1 = base_url() . $sub->link_submenu;
                                                                } else {
                                                                    $link1 = $sub->link_submenu;
                                                                }
                                                                $subsubmenu = $this->M_data->ambilsubsubmenu('', $sub->id_submenu);
                                                                $jumlahh = $subsubmenu->num_rows(); ?>
                                                        <li>
                                                            <a href="<?php echo $link1; ?>"><?php echo $sub->nama_submenu; ?></a>
                                                            <?php if ($jumlahh >= 1) { ?>
                                                                <ul class="submenu">
                                                                    <?php foreach ($subsubmenu->result() as $sub2) {
                                                                                        $lin2 = substr($sub2->link_subsubmenu, 0, 3);
                                                                                        if ($lin2 != "htt") {
                                                                                            $link2 = base_url() . $sub2->link_subsubmenu;
                                                                                        } else {
                                                                                            $link2 = $sub->link_submenu;
                                                                                        }
                                                                                        ?>
                                                                        <li><a href="<?php echo $link2; ?>"><?php echo $sub2->nama_subsubmenu; ?></a></li>
                                                                    <?php } ?>
                                                                </ul>
                                                            <?php } ?>
                                                        </li>
                                                    <?php } ?>
                                                </ul><!-- /.submenu -->
                                            <?php } ?>
                                        </li>
                                    </ul><!-- /.menu -->
                                <?php $no++;
                                } ?>
                            </nav><!-- /.mainnav -->
                        </div><!-- /.nav-wrap -->


                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.header-inner -->
    </header><!-- /.header -->
    <!-- SELESAI MAIN MENU -->
</div><!-- /.site-header -->