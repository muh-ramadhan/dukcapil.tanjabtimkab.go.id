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
		
		<!-- MULAI ISI KONTEN -->
		<?php $this->load->view($vdata); ?>
		<!-- SELESAI ISI KONTEN -->

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