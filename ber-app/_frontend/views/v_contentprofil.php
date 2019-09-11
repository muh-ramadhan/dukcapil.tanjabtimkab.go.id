<?php if (count($detail_berita)) {
    foreach ($detail_berita  as $row) {
        $photopath = str_replace('-', '/', $row->tanggal_modif);
        //$judul=seo_link($row->nama_kategori);
        ?>
        <div id="site-content">
            <div id="page-header">
                <div class="container">
                    <div class="row">
                        <div class="page-title">
                            <h2 class="title"><?php echo $row->judul; ?></h2>
                        </div>
                        <div id="page-breadcrumbs">
                            <nav class="breadcrumb-trail breadcrumbs">
                                <ul class="trail-items">
                                    <li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>">Home</a></li>
                                    <li class="trail-item trail-begin"><?php echo $row->judul; ?></li>
                                </ul>
                            </nav>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /#page-header -->
            <div id="page-body">
                <div class="container">
                    <div class="row">
                        <div class="blog-single">
                            <div class="main-content">
                                <article class="post">
                                    <div class="entry-wrapper">
                                        <div class="entry-cover">
                                            <a href="blog-single.html">
                                                <?php if ($row->gambar != '') { ?>
                                                    <img src="<?php echo base_url(); ?>foto_halamanprofil/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>" alt="images">
                                            </a>
                                            <div style="padding:10px 0;color:#6f777a;border-bottom:1px solid #ccc;font-style:italic;margin:0;"><?php echo $row->text_foto; ?></div>
                                        <?php } ?>
                                        </div><!-- /.entry-cover -->
                                        <div class="entry-header">
                                            <span class="entry-time" style="background-color: #0263d4;"><?php $tanggal = $row->tanggal;
                                                                                                                echo nama_hari($tanggal) . ', ';
                                                                                                                echo tgl_indo($tanggal) . ' | ';
                                                                                                                echo $row->jam . ' WIB '; ?></span>
                                            <h2 class="entry-title"><?php echo $row->judul; ?></h2>
                                            <div class="entry-meta">
                                                <span class="entry-categorues"><?php echo $row->judul; ?></span>
                                                <span class="entry-comments-link">Dibaca: <?php echo $row->dibaca; ?> Kali</span>
                                            </div><!-- /.entry-meta -->
                                        </div><!-- /.entry-header -->
                                        <div class="entry-content">
                                            <p><?php echo $row->isi_halaman; ?></p>
                                        </div><!-- /.entry-content -->
                                    </div><!-- /.entry-wrapper -->
                                </article><!-- /.post -->
                            </div><!-- /.main-content -->
                            <!-- MULAI SIDEBAR -->
                            <?php $this->load->view($vkanan); ?>
                            <!-- SELESAI SIDEBAR -->
                        </div><!-- /.blog -->
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.page-body -->
        </div><!-- /#site-content -->
    <?php
            $id = $row->id_halamanprofil;
            $ip_addr = $this->input->ip_address();
        }
        $data = array('dibaca' => $row->dibaca + 1);
        $where = "id_halamanprofil = '" . $row->id_halamanprofil . "'";
        $str = $this->db->update('halamanprofil', $data, $where);
    } else {
        ?>
    ! Maaf Data Belum Tersedia
<?php } ?>