<!DOCTYPE html>
<html>
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

<meta property="og:description" content="<?php echo $deskripsi; ?>"/>
 
<meta property="fb:app_id" content="134668073230548"/>
<meta property="og:title" content="<?php echo $judulapp; ?>"/>
<?php 
$gambar=   base_url() ."foto_berita/default-image-big.jpg";
?>
<meta property="og:image" content="<?php echo $gambar; ?>"/> 
<link rel="image_src" href="<?php echo $gambar; ?>" /> 
<base href="<?php echo base_url(); ?>"/>
 
<meta property="og:type" content="article"/>
<meta property="og:url" content="<?php echo current_url(); ?>"/>
<meta property="og:site_name" content="JDIH.TANJABTIMKAB.GO.ID"/>
<meta property="og:locale" content="id_ID"/>
<meta property="my:fb" content="on"/>

<meta name="alexaVerifyID" content="QQ4z9L44M4FeRfCV-exkU5e0Ru4" />
<meta http-equiv="refresh" content="900">
<meta content='Aeiwi, Alexa, AllTheWeb, AltaVista, AOL Netfind, Anzwers, Canada, DirectHit, EuroSeek, Excite, Overture, Go, Google, HotBot, InfoMak, Kanoodle, Lycos, MasterSite, National Directory, Northern Light, SearchIt, SimpleSearch, WebsMostLinked, WebTop, What-U-Seek, AOL, Yahoo, WebCrawler, Infoseek, Excite, Magellan, LookSmart, CNET, Googlebot' name='search engines'/> 
    
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
    
	<!-- Bootstrap  -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>style/css/bootstrap.css" >

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

<div class="modal"><!-- Place at bottom of page --></div>

<div id="spinner-container" style="display:none">
	<div class="spinner"></div>
</div>

<style> 
.modal {
    display:    none;
    position:   fixed;
    z-index:    1000;
    top:        0;
    left:       0;
    height:     100%;
    width:      100%;
    background: rgba( 255, 255, 255, .8 ) 
                url('<?php echo base_url(); ?>style/images/ajax-loader.gif') 
                50% 50% 
                no-repeat;
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
    ajaxStart: function() { $body.addClass("loading");    },
     ajaxStop: function() { $body.removeClass("loading"); }    
});		   
 
</script> 

 

    <div class="boxed">
<?php  $this->load->view($vheader); ?> 
        <!-- Slider -->
<?php  $this->load->view("v_slide"); ?>  

        <!-- Icon box -->
        <div class="flat-row parallax parallax1">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="iconbox style_1 mag-top">
                            <div class="box-header">
                                <div class="box-icon">
                                    <i class="fa icons icon-calculator"></i>
                                </div>
                                <h5 class="box-title">Management Support</h5>
                            </div>
                            <div class="box-content">
                                <span class="font-size-14px">The professional management of a business doesn’t live without accurate information and timely.</span>
                                <p class="box-readmore">
                                    <a href="#">Read More</a>
                                </p>
                            </div>
                        </div><!-- /.iconbox -->
                    </div><!-- /.col-md-3 -->
                    <div class="col-md-3">
                        <div class="iconbox style_1 mag-top">
                            <div class="box-header">
                                <div class="box-icon">
                                    <i class="fa icons icon-layers"></i>
                                </div>
                                <h5 class="box-title">Investment Projects</h5>
                            </div>
                            <div class="box-content">
                                <span class="font-size-14px">For those looking to invest in the<br>growth of your business or create a new business.</span>  
                                <p class="box-readmore">
                                    <a href="#">Read More</a>
                                </p>                                      
                            </div>
                        </div><!-- /.iconbox -->
                    </div><!-- /.col-md-3 -->
                    <div class="col-md-3">
                        <div class="iconbox style_1 mag-top">
                            <div class="box-header">
                                <div class="box-icon">
                                    <i class="fa icons icon-chart"></i>
                                </div>
                                <h5 class="box-title">Restructuring Plans</h5>
                            </div>
                            <div class="box-content">
                                <span class="font-size-14px">Adapt your business to the new market conditions. Redefine your strategy, restructure your debt.</span>  
                                <p class="box-readmore">
                                    <a href="#">Read More</a>
                                </p>                                      
                            </div>
                        </div><!-- /.iconbox -->
                    </div><!-- /.col-md-3 -->
                    <div class="col-md-3">
                        <div class="iconbox style_1 highlight">
                            <div class="box-header">
                                <h5 class="box-title pad-top">What we Offer?</h5>
                            </div>
                            <div class="box-content">
                                <span class="font-size-14px">With over 20 years of experience we’ll ensure you’re getting the best guidance from the Fusion.</span> 
                                <p class="iconbox-button">
                                    <a href="#" class="button style_1 has-icon small highlight">View Services</a>
                                </p>                                       
                            </div>
                        </div><!-- /.iconbox -->
                    </div><!-- /.col-md-3 -->
                </div><!-- /.row -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="flat-border-bottom">
                            <span class="sep-holder">
                                <span class="sep-line"></span>
                            </span>
                        </div>
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->

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
                            <img src="images/icon/button1.png" alt="images">
                        </div>
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->

        <!-- Group button -->
        <div class="flat-row bg-222222">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="title-section style_1">
                            <h3 class="title color-ffffff">Management in hard times.</h3>
                            <div class="desc">
                                Don’t let your business evolve according to the pace of others. Contact us to discover how we can help with the management of your company.
                            </div>
                        </div>
                    </div><!-- /.col-md-8 -->
                    <div class="col-md-4">
                        <div class="group-button text-center">
                            <a class="button white lg rounded" href="#">Read More</a>
                            <a class="button lg rounded" href="contact.html">Contact Us</a>
                        </div>
                    </div><!-- /.col-md-4 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->

        <!-- Accordion -->
        <div class="flat-row bg-f7f7f7 pad-top0px pad-bottom0px">
            <div class="image-single style_1 clearfix">
                <div class="item-two-column">
                    <div class="flat-single-image-autoheight"></div>                    
                </div><!-- /.item-two-column -->
                <div class="item-two-column">
                    <div class="section-accordion">
                        <div class="title-section style_1">
                            <h3 class="title">Frequently Asked Questions</h3>                        
                        </div>

                        <div class="flat-divider d30px"></div>

                        <div class="flat-accordion">
                            <div class="flat-toggle">
                                <h6 class="toggle-title active"><i class="fa fa-bar-chart"></i>What are all the different types of accountants?</h6>
                                <div class="toggle-content">
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.</p>
                                </div>
                            </div><!-- /toggle -->
                            <div class="flat-toggle">
                                <h6 class="toggle-title"><i class="fa fa-line-chart"></i>What Do Accountants Without Their CPA do?</h6>
                                <div class="toggle-content">
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.</p>
                                </div>
                            </div><!-- /toggle -->

                            <div class="flat-toggle">
                                <h6 class="toggle-title"><i class="fa fa-signal"></i>How do I make a mid-career switch into accounting?</h6>
                                <div class="toggle-content">
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.</p>
                                </div>
                            </div><!-- /toggle -->                                                                
                        </div><!-- /.flat-accordion -->
                    </div><!-- /.section-accordion -->
                </div><!-- /.item-two-column -->
            </div><!-- /.image-single -->
        </div><!-- /.flat-row -->

        <!-- Portfolio -->
        <div class="flat-row pad-top80px pad-bottom0px">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-section">
                            <h3 class="title">Rencent <strong>Portfolio</strong></h3>
                            <div class="desc">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce cursus leo orci,<br>id pharetra odio varius ac.
                            </div>
                        </div>
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
            <div class="flat-divider d32px"></div>
            <div class="flat-portfolio portfolio-masonry margin20px">
                <div class="portfolio"> 
                    <div class="portfolio-item item-four-column management">
                        <div class="portfolio-wrap">
                            <div class="portfolio-thumbnail">
                                <a href="portfolio-single-type-list.html"><img src="images/portfolio/1.jpg" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="portfolio-single-type-list.html"><span>Quick View</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">                                                
                                    <h6 class="portfolio-title">
                                        <a href="portfolio-single-type-list.html">Identity Card Holder</a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="#">Management</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.portfolio-item -->

                    <div class="portfolio-item item-four-column business">
                        <div class="portfolio-wrap">
                            <div class="portfolio-thumbnail">
                                <a href="portfolio-single-type-list.html"><img src="images/portfolio/2.jpg" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="portfolio-single-type-list.html"><span>Quick View</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">                                                
                                    <h6 class="portfolio-title">
                                        <a href="portfolio-single-type-list.html">Business Cards Mockup</a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="#">Business</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.portfolio-item -->

                    <div class="portfolio-item item-four-column economy">
                        <div class="portfolio-wrap">
                            <div class="portfolio-thumbnail">
                                <a href="portfolio-single-type-list.html"><img src="images/portfolio/3.jpg" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="portfolio-single-type-list.html"><span>Quick View</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">                                                
                                    <h6 class="portfolio-title">
                                        <a href="portfolio-single-type-list.html">Black Wine Bottle</a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="#">Economy</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.portfolio-item -->

                    <div class="portfolio-item item-four-column business">
                        <div class="portfolio-wrap">
                            <div class="portfolio-thumbnail">
                                <a href="portfolio-single-type-list.html"><img src="images/portfolio/4.jpg" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="portfolio-single-type-list.html"><span>Quick View</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">                                                
                                    <h6 class="portfolio-title">
                                        <a href="portfolio-single-type-list.html">Coffee &amp; Tea Exchange</a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="#">Business</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.portfolio-item -->

                    <div class="portfolio-item item-four-column management">
                        <div class="portfolio-wrap">
                            <div class="portfolio-thumbnail">
                                <a href="portfolio-single-type-list.html"><img src="images/portfolio/6.jpg" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="portfolio-single-type-list.html"><span>Quick View</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">                                                
                                    <h6 class="portfolio-title">
                                        <a href="portfolio-single-type-list.html">P H . D Card Mocup</a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="#">Management</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.portfolio-item -->

                    <div class="portfolio-item item-four-column economy">
                        <div class="portfolio-wrap">
                            <div class="portfolio-thumbnail">
                                <a href="portfolio-single-type-list.html"><img src="images/portfolio/8.jpg" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="portfolio-single-type-list.html"><span>Quick View</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">                                                
                                    <h6 class="portfolio-title">
                                        <a href="portfolio-single-type-list.html">Rambler &amp; Co</a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="#">Economy</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.portfolio-item -->

                    <div class="portfolio-item item-four-column invoicing">
                        <div class="portfolio-wrap">
                            <div class="portfolio-thumbnail">
                                <a href="portfolio-single-type-list.html"><img src="images/portfolio/5.jpg" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="portfolio-single-type-list.html"><span>Quick View</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">                                                
                                    <h6 class="portfolio-title">
                                        <a href="portfolio-single-type-list.html">Oskar Kullander<br>Booklet</a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="#">Invoicing</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.portfolio-item -->

                    <div class="portfolio-item item-four-column business invoicing">
                        <div class="portfolio-wrap">
                            <div class="portfolio-thumbnail">
                                <a href="portfolio-single-type-list.html"><img src="images/portfolio/7.jpg" alt="images"></a>
                                <div class="flat-figcaption">
                                    <div class="project-buttons">
                                        <a href="portfolio-single-type-list.html"><span>Quick View</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-info">
                                <div class="portfolio-info-wrap">                                                
                                    <h6 class="portfolio-title">
                                        <a href="portfolio-single-type-list.html">Rubber Stamp MockUp</a>
                                    </h6>
                                    <ul class="portfolio-categories">
                                        <li><a href="#">Business</a></li>
                                        <li><a href="#">Invoicing</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.portfolio-item -->                                        
                </div><!-- /.portfolio -->
            </div><!-- /.flat-portfolio -->
        </div><!-- /.flat-row -->

        <!-- List -->
        <div class="flat-row pad-top0px pad-bottom20px">
            <div class="image-single style_1 clearfix">
                <div class="item-two-column section-iconlist">
                    <div class="title-section style_1">
                        <h3 class="title">Why Choose <strong>Fusion?</strong></h3>  
                        <div class="desc">
                            With over 20 years of experience, we recognize the importance of internationalization for company growth. Approximately 25% of our clients have an international presence.
                        </div>                      
                    </div>
                    <div class="flat-divider d30px"></div>
                    <div class="flat-iconlist">
                        <div class="row">
                            <div class="col-md-6">
                                <ul class="iconlist">
                                    <li><i class="fa fa-cog"></i> Highly professional staff.</li>
                                    <li><i class="fa fa-cog"></i> On Time and on Budget.</li>
                                    <li><i class="fa fa-cog"></i> Vision for the business.</li>
                                </ul>
                            </div> 
                            <div class="col-md-6">
                                <ul class="iconlist">
                                    <li><i class="fa fa-cog"></i> Real value to a community.</li>
                                    <li><i class="fa fa-cog"></i> Keeping you out of trouble.</li>
                                    <li><i class="fa fa-cog"></i>  With you for the long haul.</li>
                                </ul>
                            </div>  
                        </div>
                    </div><!-- /.flat-iconlist -->
                    <div class="flat-divider d30px"></div>
                    <a href="#" class="button lg dark">How can we help you?</a>
                </div><!-- /.item-two-column -->
                <div class="item-two-column mag-left flat-single-image-autoheight-style1">
                    
                </div><!-- /.item-two-column -->
            </div><!-- /.image-single -->
        </div><!-- /.flat-row -->

        <!-- Video -->
        <div class="flat-row parallax parallax5 pad-top90px pad-bottom90px">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-section">
                            <h3 class="title color-ffffff">OUR VISION</h3>
                            <div class="desc color-style_1">
                                A company isn’t distinguished by its dimension, but by how it is run.<br>Implementing good management practices is a reality that allows for an increase in<br>professionalism and competitiveness.
                            </div>
                        </div>
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->

                <div class="flat-divider d20px"></div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="flat-video-fancybox text-center">
                            <a class="fancybox" data-type="iframe" href="https://www.youtube.com/embed/p_E9S2nRrwM?autoplay=1"> 
                                <img src="images/img-single/bg-video.png" alt="images">
                            </a>
                        </div>
                        <div class="title-section">
                            <div class="desc color-style_1 mag-top10px">
                                Show Amazing Video
                            </div>
                        </div>
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->

        <!-- Blgo shortcode -->
        <div class="flat-row pad-top100px pad-bottom100px">
            <div class="blog-shortcode blog-grid">
                <div class="container">
                    <div class="row">
                    <?php
						$no=1;
						$beritaterbaru = $this->M_data->beritaterbaru2(0,4);
						foreach($beritaterbaru->result() as $row){
							$isi=strip_tags($row->isi_berita);
							$isi=substr($isi,0,180); 
							$judul=seo_link($row->judul);
							$judulan=seo_link($row->nama_kategori);
							$photopath = str_replace('-', '/', $row->tanggal_modif);
							$a=substr($row->tanggal, 0,4);
							$b=substr($row->tanggal, 5,2);
							$c=substr($row->tanggal, 8,9);
							$tanggal=$c.'/'.$b.'/'.$a;
							if  ($row->gambar!='') { 
								$gambar=base_url() ."foto_berita/".$photopath."/".$row->gambar;
							}
							else { 
								$gambar=base_url() ."foto_berita/image-default.jpg";
							}

							?>
                        <div class="col-md-6">
                            <article class="hentry">
                                <div class="entry-cover">
                                    <a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul;?>"><?php echo $row->judul; ?>">
                                        <img src="<img src="<?php echo $gambar; ?>" alt="images">
                                    </a>
                                </div>
                                <div class="entry-header">
                                    <h2 class="entry-title">
                                        <a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul;?>"><?php echo $row->judul; ?>">3 Reasons Your Business Needs A Budget Now</a>
                                    </h2>
                                    <div class="post-meta">
                                        <div class="entry-time"><?php echo $row->hari; ?>, <?php echo tgl_indo($row->tanggal); ?></div>
                                    </div>
                                </div>
                                <div class="entry-content"><?php echo $isi; ?></div>
                            </article><!-- /.hentry -->
                        </div><!-- /.col-md-6 -->

                        <?php 
						$no=$no+1;
					} ?>   
                    </div><!-- /.row -->

                    <div class="flat-divider d40px"></div>

                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.blog-shortcodes -->
        </div><!-- /.flat-row -->

        <!-- Testimonial -->
        <div class="flat-row bg-f7f7f7 pad-top0px pad-bottom0px">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="section-testimonial">
                            <div class="title-section style_2">
                                <h2 class="title">What our<br>clients say about us</h2>
                            </div>
                            <div class="flat-divider d20px"></div>
                            <div class="flat-testimonial">
                                <div class="flexslider">
                                    <ul class="slides">
                                        <li>
                                            <div class="testimonial bg-f7f7f7">
                                                <div class="testimonial-content">
                                                    <blockquote>John Doe and his crew are true craftsmen that produced high-quality work and were easy to work with too. The end result is magnificent and we get comments all of the time, from friends and strangers alike, how beautiful our home is.</blockquote>
                                                </div>
                                                <div class="testimonial-meta">
                                                    <div class="testimonial-author">
                                                        <strong class="author-name">Phat Vo Ngoc</strong>
                                                        <div class="author-info"><a href="#" class="company">ThemesFlat</a></div>
                                                    </div>
                                                </div>
                                            </div><!-- /.testimonial -->
                                        </li>
                                        <li>
                                            <div class="testimonial bg-f7f7f7">
                                                <div class="testimonial">
                                                    <div class="testimonial-content">
                                                        <blockquote>We had a vision, a budget and a very short timeline. John Doe and his crew came in and said yes to all three. It’s rare you are able to have an awesome space you love built for you, without hidden costs, and delivered the exact day promised.</blockquote>
                                                    </div>
                                                    <div class="testimonial-meta">
                                                        <div class="testimonial-author">
                                                            <strong class="author-name">Phat Vo Ngoc</strong>
                                                            <div class="author-info"><a href="#" class="company">ThemesFlat</a></div>
                                                        </div>
                                                    </div>
                                                </div><!-- /.testimonial -->
                                            </div><!-- /.testimonial -->
                                        </li> 
                                        <li>
                                            <div class="testimonial bg-f7f7f7">
                                                <div class="testimonial">
                                                    <div class="testimonial-content">
                                                        <blockquote>The reason we like dealing with Fusion is because they respond quickly and if there is no chance of obtaining planning they will tell you on day one. They will not waste your money if there is no hope so that to me is fair play.</blockquote>
                                                    </div>
                                                    <div class="testimonial-meta">
                                                        <div class="testimonial-author">
                                                            <strong class="author-name">Phat Vo Ngoc</strong>
                                                            <div class="author-info"><a href="#" class="company">ThemesFlat</a></div>
                                                        </div>
                                                    </div>
                                                </div><!-- /.testimonial -->
                                            </div><!-- /.testimonial -->
                                        </li>                                            
                                    </ul>
                                </div><!-- /.flexslider -->                                        
                            </div><!-- /.flat-testimonial -->
                        </div><!-- /.section-testimonial -->
                    </div><!-- /.col-md-6 -->
                    <div class="col-md-6">
                        <div class="image-single">
                            <img src="images/img-single/img-clients.jpg" alt="images">
                        </div>
                    </div><!-- /.col-md-6 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->

        <!-- Clients -->
        <div class="flat-row pad-top20px pad-bottom20px">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="flat-clients" data-item="6" data-nav="false" data-dots="false" data-auto="true">
                            <div class="client-featured">
                                <img src="images/client/1.png" alt="images">
                            </div>
                            <div class="client-featured">
                                <img src="images/client/2.png" alt="images">
                            </div>
                            <div class="client-featured">
                                <img src="images/client/3.png" alt="images">
                            </div>
                            <div class="client-featured">
                                <img src="images/client/4.png" alt="images">
                            </div>
                            <div class="client-featured">
                                <img src="images/client/5.png" alt="images">
                            </div>
                            <div class="client-featured">
                                <img src="images/client/6.png" alt="images">
                            </div>
                            <div class="client-featured">
                                <img src="images/client/1.png" alt="images">
                            </div>
                            <div class="client-featured">
                                <img src="images/client/2.png" alt="images">
                            </div>
                            <div class="client-featured">
                                <img src="images/client/3.png" alt="images">
                            </div>
                            <div class="client-featured">
                                <img src="images/client/4.png" alt="images">
                            </div>
                        </div><!-- /.flat-clients -->
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->
       
        <!-- Footer -->
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
								$pengumuman=$this->M_data->pengumuman(4);	
								foreach($pengumuman->result() as $row){
									$judul=seo_link($row->judul);
									$tahunp=substr($row->tanggal_pengumuman, 0,4);
									$bulanp=substr($row->tanggal_pengumuman, 5,2);
									$tanggalp=substr($row->tanggal_pengumuman, 8,10);
									$photopath = str_replace('-', '/', $row->tanggal_pengumuman);
									?>
									<li>
										<a href="<?php echo base_url(); ?>pengumuman/detail/<?php echo $row->id_pengumuman."/".$judul;?>"><?php echo $row->judul; ?></a>
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
								$tampilkegiatan=$this->M_data->tampil_kegiatan(4);	
								foreach($tampilkegiatan->result() as $row){
									$a=substr($row->tanggal, 0,4);
									$b=substr($row->tanggal, 5,2);
									$c=substr($row->tanggal, 8,9);
									$tanggal=$c.'/'.$b.'/'.$a;  
									?>
									<li>
										<a href="<?php echo base_url(); ?>kegiatan/detail/<?php echo $row->id_kegiatan."/".$judul;?>"><?php echo $row->namakegiatan; ?></a>
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
								foreach($identitas->result() as $row) {
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

        <!-- Go Top -->
        <a class="go-top">            
        </a>   

    </div>
    
<?php  //$this->load->view($vfooter); ?> 

 
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