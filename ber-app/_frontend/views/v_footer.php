<footer class="footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="widget widget_text style_1">
                            <div class="textwidget">
                                <h1><strong>Fusion</strong> a model Business wp theme</h1>
                            </div>
                        </div><!-- /.widget_text -->
                    </div><!-- /.col-md-3 -->

                    <div class="col-md-3">
                        <div class="widget widget_recent_entries">
                            <h3 class="widget-title"><span class="style_1">P</span>engumuman</h3>
                            <ul>
                                <?php
                                $pengumuman = $this->M_data->pengumuman(4);
                                foreach ($pengumuman->result() as $row) {
                                    $judul = seo_link($row->judul);
                                    $tahunp = substr($row->tanggal_pengumuman, 0, 4);
                                    $bulanp = substr($row->tanggal_pengumuman, 5, 2);
                                    $tanggalp = substr($row->tanggal_pengumuman, 8, 10);
                                    $photopath = str_replace('-', '/', $row->tanggal_pengumuman);
                                    ?>
                                    <li>
                                        <a href="<?php echo base_url(); ?>pengumuman/detail/<?php echo $row->id_pengumuman . "/" . $judul; ?>"><?php echo $row->judul; ?></a>
                                        <span class="post-date"><?php echo $tanggalp; ?>/<?php echo $bulanp; ?>/<?php echo $tahunp; ?> - <?php echo $row->jam; ?> WIB</span>
                                    </li>

                                <?php } ?>
                            </ul>
                        </div><!-- /.widget .widget_recent_entries -->

                    </div><!-- /.col-md-3 -->

                    <div class="col-md-3">
                        <div class="widget widget_recent_entries">
                            <h3 class="widget-title"><span class="style_1">A</span>genda Kegiatan</h3>
                            <ul>
                                <?php
                                $tampilkegiatan = $this->M_data->tampil_kegiatan(4);
                                foreach ($tampilkegiatan->result() as $row) {
                                    $a = substr($row->tanggal, 0, 4);
                                    $b = substr($row->tanggal, 5, 2);
                                    $c = substr($row->tanggal, 8, 9);
                                    $tanggal = $c . '/' . $b . '/' . $a;
                                    ?>
                                    <li>
                                        <a href="<?php echo base_url(); ?>kegiatan/detail/<?php echo $row->id_kegiatan . "/" . $judul; ?>"><?php echo $row->namakegiatan; ?></a>
                                        <span class="post-date"><?php echo tgl_indo($row->tgl_kegiatan); ?></span>
                                    </li>
                                <?php } ?>
                            </ul>
                        </div><!-- /.widget .widget_recent_entries -->
                    </div><!-- /.col-md-3 -->

                    <div class="col-md-3">
                        <div class="widget widget_text information style_1">
                            <h3 class="widget-title"><span class="style_1">H</span>ubungi Kami</h3>
                            <div class="textwidget">
                                <?php
                                $identitas = $this->M_data->identitasfooter();
                                foreach ($identitas->result() as $row) {
                                    ?>
                                    <p><strong>Alamat :</strong><br><?php echo $row->alamat; ?></p>
                                    <p>
                                        <i class="fa fa-phone ft-widget-margin-right-12"></i> <?php echo $row->no_telp; ?><br>
                                        <i class="fa fa-envelope-o ft-widget-margin-right-10"></i> <?php echo $row->email; ?>
                                    </p>
                                    <div class="social-links">
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-behance"></i></a>
                                        <a href="#"><i class="fa fa-spotify"></i></a>
                                        <a href="#"><i class="fa fa-rss"></i></a>
                                    </div>
                                <?php } ?>
                            </div>
                        </div><!-- /.widget .widget_text information -->
                    </div><!-- /.col-md-3 -->


                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.footer-content -->

        <div class="footer-content">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">
                        <div class="ft-wrap clearfix">
                            <div class="copyright">
                                <div class="copyright-content">
                                    Copyright © 2019 <a href="http://#/" target="_blank"> Dinas Komunikasi dan Informatika Tanjung Jabung Timur</a>
                                </div>
                            </div>
                        </div><!-- /.ft-wrap -->
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.footer-content -->
    </footer>