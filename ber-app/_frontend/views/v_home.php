<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->

<head>
    <meta id="viewport" name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Cache-control" content="no-cache">
    <meta name="robots" content="index, follow" />
    <meta name="keywords" content="<?php echo $keyword; ?>">
    <meta name="title" content="<?php echo $judulapp; ?>" />
    <meta name="author" content="Bagian Hukum Kab. Tanjabtim" />
    <meta name="description" content="<?php echo $deskripsi; ?>">
    <title><?php echo $judulapp; ?></title>
    <meta property="og:description" content="<?php echo $deskripsi; ?>" />
    <meta property="fb:app_id" content="134668073230548" />
    <meta property="og:title" content="<?php echo $judulapp; ?>" />
    <?php
    $gambar =   base_url() . "foto_berita/default-image-big.jpg";
    ?>
    <meta property="og:image" content="<?php echo $gambar; ?>" />
    <link rel="image_src" href="<?php echo $gambar; ?>" />
    <base href="<?php echo base_url(); ?>" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="<?php echo current_url(); ?>" />
    <meta property="og:site_name" content="JDIH.TANJABTIMKAB.GO.ID" />
    <meta property="og:locale" content="id_ID" />
    <meta property="my:fb" content="on" />
    <meta name="alexaVerifyID" content="QQ4z9L44M4FeRfCV-exkU5e0Ru4" />
    <meta http-equiv="refresh" content="900">
    <meta content='Aeiwi, Alexa, AllTheWeb, AltaVista, AOL Netfind, Anzwers, Canada, DirectHit, EuroSeek, Excite, Overture, Go, Google, HotBot, InfoMak, Kanoodle, Lycos, MasterSite, National Directory, Northern Light, SearchIt, SimpleSearch, WebsMostLinked, WebTop, What-U-Seek, AOL, Yahoo, WebCrawler, Infoseek, Excite, Magellan, LookSmart, CNET, Googlebot' name='search engines' />

    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'>

    <!-- Bootstrap  -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>style/css/bootstrap.css">
    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>style/css/style.css">
    <!-- Responsive -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>style/css/responsive.css">
    <!-- Colors -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>style/css/colors/color1.css" id="colors">
    <!-- Animation Style -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>style/css/animate.css">

    <link rel="shortcut icon" href="<?php echo base_url(); ?>style/images/favicon.png">

</head>

<body class="header-sticky page-loading">
    <div class="modal"></div>
    <div id="spinner-container" style="display:none">
        <div class="spinner"></div>
    </div>

    <style>
        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: rgba(255, 255, 255, .8) url('<?php echo base_url(); ?>style/images/ajax-loader.gif') 50% 50% no-repeat;
        }

        body.loading {
            overflow: hidden;
        }

        body.loading .modal {
            display: block;
        }
    </style>

    <script type="text/javascript">
        $body = $("body");

        $(document).on({
            ajaxStart: function() {
                $body.addClass("loading");
            },
            ajaxStop: function() {
                $body.removeClass("loading");
            }
        });
    </script>

    <div class="boxed">
        <!-- MULAI HEADER -->
        <?php $this->load->view($vheader); ?>
        <!-- SELESAI HEADER -->

        <!-- MULAI SLIDER -->
        <?php $this->load->view("$vslide"); ?>
        <!-- SELESAI SLIDER -->

        <!-- MULAI COUNTER BOX -->
        <div class="flat-row parallax parallax1">
            <div class="overlay"></div>
            <div class="container">

                <div class="flat-divider d30px"></div>

                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="title-section">
                            <h2 class="title color-ffffff"><strong>Since 2001 we have guided the management of SMEs.</strong></h2>
                            <div class="desc color-style_1">
                                We are at present in companies that are responsible for a total of €85 million and that work with more than 600 employees.<br>We recognize the importance of internationalization for company growth. Approximately 25% of our clients have an international presence.
                            </div>
                        </div>
                    </div><!-- /.col-md-6 -->
                </div><!-- /.row -->

                <div class="flat-divider d50px"></div>

                <div class="row">
                    <div class="col-md-3 col-md-offset-2">
                        <div class="counter style_1">
                            <div class="counter-content">
                                <span class="numb-count" data-to="69" data-speed="3000" data-waypoint-active="yes">69</span>
                            </div>
                            <div class="counter-title">Employees</div>
                        </div><!-- /.counter -->
                    </div><!-- /.col-md-3 -->
                    <div class="col-md-2">
                        <div class="counter style_1">
                            <div class="counter-content">
                                <span class="numb-count" data-to="20" data-speed="3000" data-waypoint-active="yes">20</span>
                            </div>
                            <div class="counter-title">Year Experience</div>
                        </div><!-- /.counter -->
                    </div><!-- /.col-md-2 -->
                    <div class="col-md-3">
                        <div class="counter style_1">
                            <div class="counter-content">
                                <span class="numb-count" data-to="12" data-speed="3000" data-waypoint-active="yes">12</span>
                            </div>
                            <div class="counter-title">Locations</div>
                        </div><!-- /.counter -->
                    </div><!-- /.col-md-3 -->
                </div><!-- /.row -->

                <div class="flat-divider d60px"></div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="text-center">
                            <img src="<?php echo base_url(); ?>images/icon/button1.png" alt="images">
                        </div>
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->
        <!-- SELESAI COUNTER BOX -->

        <!-- MULAI SAMBUTAN KEPALA -->
        <div class="flat-row bg-222222 pad-top80px">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <img src="images/services/3.jpg" alt="images">
                    </div><!-- /.col-md-4 -->
                    <div class="col-md-8">
                        <div class="row">
                            <div class="services-text-1">
                                <h3 class="color-ffffff">Sambutan Kepala</h3>
                                <p class="color-999999">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer imperdiet iaculis ipsum aliquet ultricies. Sed a tincidunt enim. Maecenas ultrices viverra ligula, vel lobortis ante pulvinar sed deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum.</p>
                            </div><!-- /.services-text-1 -->
                        </div><!-- /.row -->
                    </div><!-- /.col-md-8 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->
        <!-- SELESAI SAMBUTAN KEPALA -->


        <!-- MULAI TAMPIL 4 BERITA -->
        <div class="flat-row pad-top60px pad-bottom60px">
            <div class="blog-shortcode blog-grid">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title-section">
                                <h3 class="title">Berita <strong>Terbaru</strong></h3>
                            </div><!-- /.title-section -->
                        </div>
                    </div>
                    <div class="flat-divider d50px"></div>
                    <div class="row">

                        <?php $no = 1;
                        $beritaterbaru = $this->M_data->beritaterbaru2(0, 4);
                        foreach ($beritaterbaru->result() as $row) {
                            $isi = strip_tags($row->isi_berita);
                            $isi = substr($isi, 0, 180);
                            $judul = seo_link($row->judul);
                            $judulan = seo_link($row->nama_kategori);
                            $photopath = str_replace('-', '/', $row->tanggal_modif);
                            $a = substr($row->tanggal, 0, 4);
                            $b = substr($row->tanggal, 5, 2);
                            $c = substr($row->tanggal, 8, 9);
                            $tanggal = $c . '/' . $b . '/' . $a;
                            if ($row->gambar != '') {
                                $gambar = base_url() . "foto_berita/" . $photopath . "/" . $row->gambar;
                            } else {
                                $gambar = base_url() . "foto_berita/image-default.jpg";
                            } ?>
                            <div class="col-md-6">
                                <article class="hentry">
                                    <div class="entry-cover">
                                        <a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita . "/" . $judul; ?>">
                                            <img src="<?php echo $gambar; ?>" alt="images">
                                        </a>
                                    </div>
                                    <div class="entry-header">
                                        <h2 class="entry-title">
                                            <a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita . "/" . $judul; ?>"><?php echo $row->judul; ?></a>
                                        </h2>
                                        <div class="post-meta">
                                            <div class="entry-time"><?php echo $row->hari; ?>, <?php echo tgl_indo($row->tanggal); ?></div>
                                        </div>
                                    </div>
                                    <div class="entry-content"><?php echo $isi; ?></div>
                                </article><!-- /.hentry -->
                                <div class="flat-divider d20px"></div>
                            </div><!-- /.col-md-6 -->
                        <?php $no = $no + 1;
                        } ?>
                    </div><!-- /.row -->
                    <div class="flat-divider d40px"></div>
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.blog-shortcodes -->
    </div><!-- /.flat-row -->
    <!-- SELESAI TAMPIL 4 BERITA -->


    <!-- MULAI GALERI KEGIATAN -->
    <div class="flat-row bg-scheme pad-bottom60px">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-section">
                        <h3 class="title about-text-1">Galeri <strong>Kegiatan</strong></h3>
                        <div class="desc about-text-1">
                            Berikut adalah Galeri kegiatan di instansi kami.
                        </div>
                    </div>
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
        <div class="flat-divider d32px"></div>
        <div class="flat-portfolio portfolio-masonry margin20px">
            <!-- MULAI MODUL GALERI -->
            <div class="portfolio">
                <div class="portfolio-item item-four-column management">
                    <div class="portfolio-wrap">
                        <?php
                        $fotokolom = $this->M_data->fotokolom(7, 1);
                        foreach ($fotokolom->result() as $row) {
                            $isi = strip_tags($row->keterangan);
                            $isi = substr($isi, 0, 140);
                            $judul = seo_link($row->judul_fotoberita);
                            $photopath = str_replace('-', '/', $row->tanggal_modif);
                            $a = substr($row->tanggal, 0, 4);
                            $b = substr($row->tanggal, 5, 2);
                            $c = substr($row->tanggal, 8, 9);
                            $tanggal = $c . '/' . $b . '/' . $a;
                            ?>
                            <div class="portfolio-thumbnail">
                                <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>">
                                    <img src="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>"><span>Perbesar</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">
                                    <h6 class="portfolio-title">
                                        <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $row->judul_fotoberita; ?>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $tanggal; ?></a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div><!-- /.portfolio-item -->

                <div class="portfolio-item item-four-column business">
                    <div class="portfolio-wrap">
                        <?php
                        $fotokolom = $this->M_data->fotokolom(6, 1);
                        foreach ($fotokolom->result() as $row) {
                            $isi = strip_tags($row->keterangan);
                            $isi = substr($isi, 0, 140);
                            $judul = seo_link($row->judul_fotoberita);
                            $photopath = str_replace('-', '/', $row->tanggal_modif);
                            $a = substr($row->tanggal, 0, 4);
                            $b = substr($row->tanggal, 5, 2);
                            $c = substr($row->tanggal, 8, 9);
                            $tanggal = $c . '/' . $b . '/' . $a;
                            ?>
                            <div class="portfolio-thumbnail">
                                <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>">
                                    <img src="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>"><span>Perbesar</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">
                                    <h6 class="portfolio-title">
                                        <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $row->judul_fotoberita; ?></a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $tanggal; ?></a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div><!-- /.portfolio-item -->

                <div class="portfolio-item item-four-column economy">
                    <div class="portfolio-wrap">
                        <?php
                        $fotokolom = $this->M_data->fotokolom(5, 1);
                        foreach ($fotokolom->result() as $row) {
                            $isi = strip_tags($row->keterangan);
                            $isi = substr($isi, 0, 140);
                            $judul = seo_link($row->judul_fotoberita);
                            $photopath = str_replace('-', '/', $row->tanggal_modif);
                            $a = substr($row->tanggal, 0, 4);
                            $b = substr($row->tanggal, 5, 2);
                            $c = substr($row->tanggal, 8, 9);
                            $tanggal = $c . '/' . $b . '/' . $a;
                            ?>
                            <div class="portfolio-thumbnail">
                                <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>">
                                    <img src="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>"><span>Perbesar</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">
                                    <h6 class="portfolio-title">
                                        <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $row->judul_fotoberita; ?></a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $tanggal; ?></a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div><!-- /.portfolio-item -->

                <div class="portfolio-item item-four-column business">
                    <div class="portfolio-wrap">
                        <?php
                        $fotokolom = $this->M_data->fotokolom(4, 1);
                        foreach ($fotokolom->result() as $row) {
                            $isi = strip_tags($row->keterangan);
                            $isi = substr($isi, 0, 140);
                            $judul = seo_link($row->judul_fotoberita);
                            $photopath = str_replace('-', '/', $row->tanggal_modif);
                            $a = substr($row->tanggal, 0, 4);
                            $b = substr($row->tanggal, 5, 2);
                            $c = substr($row->tanggal, 8, 9);
                            $tanggal = $c . '/' . $b . '/' . $a;
                            ?>
                            <div class="portfolio-thumbnail">
                                <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>">
                                    <img src="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>"><span>Perbesar</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">
                                    <h6 class="portfolio-title">
                                        <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $row->judul_fotoberita; ?></a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $tanggal; ?></a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div><!-- /.portfolio-item -->

                <div class="portfolio-item item-four-column management">
                    <div class="portfolio-wrap">
                        <?php
                        $fotokolom = $this->M_data->fotokolom(2, 1);
                        foreach ($fotokolom->result() as $row) {
                            $isi = strip_tags($row->keterangan);
                            $isi = substr($isi, 0, 140);
                            $judul = seo_link($row->judul_fotoberita);
                            $photopath = str_replace('-', '/', $row->tanggal_modif);
                            $a = substr($row->tanggal, 0, 4);
                            $b = substr($row->tanggal, 5, 2);
                            $c = substr($row->tanggal, 8, 9);
                            $tanggal = $c . '/' . $b . '/' . $a;
                            ?>
                            <div class="portfolio-thumbnail">
                                <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>">
                                    <img src="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>"><span>Perbesar</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">
                                    <h6 class="portfolio-title">
                                        <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $row->judul_fotoberita; ?></a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $tanggal; ?></a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div><!-- /.portfolio-item -->

                <div class="portfolio-item item-four-column economy">
                    <div class="portfolio-wrap">
                        <?php
                        $fotokolom = $this->M_data->fotokolom(0, 1);
                        foreach ($fotokolom->result() as $row) {
                            $isi = strip_tags($row->keterangan);
                            $isi = substr($isi, 0, 140);
                            $judul = seo_link($row->judul_fotoberita);
                            $photopath = str_replace('-', '/', $row->tanggal_modif);
                            $a = substr($row->tanggal, 0, 4);
                            $b = substr($row->tanggal, 5, 2);
                            $c = substr($row->tanggal, 8, 9);
                            $tanggal = $c . '/' . $b . '/' . $a;
                            ?>
                            <div class="portfolio-thumbnail">
                                <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>">
                                    <img src="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>"><span>Perbesar</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">
                                    <h6 class="portfolio-title">
                                        <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $row->judul_fotoberita; ?></a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $tanggal; ?></a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div><!-- /.portfolio-item -->

                <div class="portfolio-item item-four-column invoicing">
                    <div class="portfolio-wrap">
                        <?php
                        $fotokolom = $this->M_data->fotokolom(3, 1);
                        foreach ($fotokolom->result() as $row) {
                            $isi = strip_tags($row->keterangan);
                            $isi = substr($isi, 0, 140);
                            $judul = seo_link($row->judul_fotoberita);
                            $photopath = str_replace('-', '/', $row->tanggal_modif);
                            $a = substr($row->tanggal, 0, 4);
                            $b = substr($row->tanggal, 5, 2);
                            $c = substr($row->tanggal, 8, 9);
                            $tanggal = $c . '/' . $b . '/' . $a;
                            ?>
                            <div class="portfolio-thumbnail">
                                <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>">
                                    <img src="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>"><span>Perbesar</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">
                                    <h6 class="portfolio-title">
                                        <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $row->judul_fotoberita; ?></a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $tanggal; ?></a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div><!-- /.portfolio-item -->

                <div class="portfolio-item item-four-column business invoicing">
                    <div class="portfolio-wrap">
                        <?php
                        $fotokolom = $this->M_data->fotokolom(1, 1);
                        foreach ($fotokolom->result() as $row) {
                            $isi = strip_tags($row->keterangan);
                            $isi = substr($isi, 0, 140);
                            $judul = seo_link($row->judul_fotoberita);
                            $photopath = str_replace('-', '/', $row->tanggal_modif);
                            $a = substr($row->tanggal, 0, 4);
                            $b = substr($row->tanggal, 5, 2);
                            $c = substr($row->tanggal, 8, 9);
                            $tanggal = $c . '/' . $b . '/' . $a;
                            ?>
                            <div class="portfolio-thumbnail">
                                <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>">
                                    <img src="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>"><span>Perbesar</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">
                                    <h6 class="portfolio-title">
                                        <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $row->judul_fotoberita; ?></a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>"><?php echo $tanggal; ?></a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div><!-- /.portfolio-item -->


            </div><!-- /.portfolio -->
            <!-- SELESAI MODUL GALERI -->
        </div><!-- /.flat-portfolio -->
    </div><!-- /.flat-row -->
    <!-- SELESAI GALERI KEGIATAN -->


    <!-- MULAI VIDEO KEGIATAN -->
    <div class="flat-row parallax parallax5 pad-top90px pad-bottom90px">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-section">
                        <h3 class="title color-ffffff">Video Kegiatan</h3>
                    </div>
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->

            <div class="flat-divider d20px"></div>

            <div class="row">
                <?php
                $video = $this->M_data->video(0, 1);
                foreach ($video->result_array() as $row) {
                    $link = str_replace('watch?v=', 'embed/', $row['link']);
                    ?>
                    <div class="col-md-12">
                        <div class="flat-video-fancybox text-center">
                            <a class="fancybox" data-type="iframe" href="<?php echo $link; ?>">
                                <iframe width="100%" height="450" src="<?php echo $link; ?>" allowfullscreen></iframe>
                            </a>
                        </div>
                        <div class="title-section">
                            <div class="desc color-style_1 mag-top10px">
                                Arsip Video
                            </div>
                        </div>
                    </div><!-- /.col-md-12 -->
                <?php
                }
                ?>
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.flat-row -->

   <!-- SELESAI VIDEO KEGIATAN -->


    <!-- MULAI ARTIKEL -->
    <div class="flat-row bg-f4f4f4 pad-top60px pad-bottom60px">
        <div class="container">
            <div class="col-md-12">
                <div class="title-section">
                    <h3 class="title">Arikel <strong>Terbaru</strong></h3>
                </div><!-- /.title-section -->
            </div>
        </div>
        <div class="flat-divider d50px"></div>
        <div class="row">
            <div class="col-md-12">
                <div class="flat-imagebox-carousel" data-item="4" data-nav="false" data-dots="true" data-auto="true">
                    <?php $no = 1;
                    $artikel = $this->M_data->artikelterbaru2(0, 4);
                    foreach ($artikel->result() as $row) {
                        $isi = strip_tags($row->isi_artikel);
                        $isi = substr($isi, 0, 100);
                        $judul = seo_link($row->judul);
                        $judulan = seo_link($row->nama_kategori);
                        $photopath = str_replace('-', '/', $row->tanggal_modif);
                        $a = substr($row->tanggal, 0, 4);
                        $b = substr($row->tanggal, 5, 2);
                        $c = substr($row->tanggal, 8, 9);
                        $tanggal = $c . '/' . $b . '/' . $a;
                        if ($row->gambar != '') {
                            $gambar = base_url() . "foto_artikel/" . $photopath . "/" . $row->gambar;
                        } else {
                            $gambar = base_url() . "foto_berita/image-default.jpg";
                        }
                        ?>
                        <div class="imagebox">
                            <div class="box-wrapper">
                                <div class="box-image">
                                    <a href="<?php echo base_url(); ?>artikel/detail/<?php echo $row->id_artikel . "/" . $judul; ?>"><img src="<?php echo $gambar; ?>" alt="images"></a>
                                </div>
                                <div class="box-header">
                                    <h3 class="box-title">
                                        <a href="<?php echo base_url(); ?>artikel/detail/<?php echo $row->id_artikel . "/" . $judul; ?>"><?php echo $row->judul; ?></a>
                                    </h3>
                                </div>
                                <div class="box-content">
                                    <div class="box-desc"><?php echo $isi; ?>...</div>
                                </div>
                            </div><!-- /.box-wrapper -->
                        </div><!-- /.imagebox   -->
                    <?php $no = $no + 1;
                    } ?>
                </div><!-- /.flat-imagebox-carousel -->
            </div><!-- /.col-md-12 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
    </div><!-- /.flat-row -->
    <!-- SELESAI ARTIKEL -->

    <!-- MULAI FOOTER -->
    <?php $this->load->view($vfooter); ?>
    <!-- SELESAI FOOTER -->

    <!-- Go Top -->
    <a class="go-top">
    </a>

    </div>

    <?php  //$this->load->view($vfooter); 
    ?>


    <!-- Javascript -->
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery.easing.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/owl.carousel.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery-waypoints.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/imagesloaded.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery-countTo.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery.fancybox.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/gmap3.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery-validate.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/parallax.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/main.js"></script>

    <!-- Revolution Slider -->
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>style/js/slider.js"></script>

</body>

</html>