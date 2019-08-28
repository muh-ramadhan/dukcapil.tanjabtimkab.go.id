<!DOCTYPE html>
<html lang="en">
<head> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Cache-control" content="no-cache">
<meta name="robots" content="index, follow" />
<meta name="keywords" content="<?php echo $keyword; ?>">
<meta name="title" content="<?php echo $judulapp; ?>" />
<meta name="author" content="Bagian Hukum Kab. Tanjung Jabung Timur" />
<meta name="description" content="<?php echo $deskripsi; ?>">
<title><?php echo $judulapp; ?></title>
<meta property="og:description" content="<?php echo $deskripsi; ?>"/>
<meta property="fb:app_id" content="134668073230548"/>
<meta property="og:title" content="<?php echo $judulapp; ?>"/>
 
<meta property="og:image" content="<?php echo $gambar; ?>"/> 
<link rel="image_src" href="<?php echo $gambar; ?>" />  
<base href="<?php echo base_url(); ?>"/>
 
<meta property="og:type" content="article"/>
<meta property="og:url" content="<?php echo current_url(); ?>"/>
<meta property="og:site_name" content="JDIH.TANJUNG JABUNG TIMURKAB.GO.ID"/>
<meta property="og:locale" content="id_ID"/>
<meta property="my:fb" content="on"/>
<meta name="alexaVerifyID" content="QQ4z9L44M4FeRfCV-exkU5e0Ru4" />
<meta http-equiv="refresh" content="900">
<meta content='Aeiwi, Alexa, AllTheWeb, AltaVista, AOL Netfind, Anzwers, Canada, DirectHit, EuroSeek, Excite, Overture, Go, Google, HotBot, InfoMak, Kanoodle, Lycos, MasterSite, National Directory, Northern Light, SearchIt, SimpleSearch, WebsMostLinked, WebTop, What-U-Seek, AOL, Yahoo, WebCrawler, Infoseek, Excite, Magellan, LookSmart, CNET, Googlebot' name='search engines'/>
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php echo base_url(); ?>feed.php?sindikasi=rss" />
<meta name="copyright" content="Copyright 2017 Bagian Hukum Kab. Tanjung Jabung Timur" />  
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
<!--[if lt IE 9]>
 <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link href="<?php echo base_url(); ?>style/css/style.css" rel="stylesheet" type="text/css" >
<link rel="stylesheet" href="<?php echo base_url(); ?>style/css/menu.css"/>
<link href="<?php echo base_url(); ?>style/css/fonts.css" rel="stylesheet" />
	<link href="<?php echo base_url(); ?>style/css/owl.carousel.css--" rel="stylesheet" />
	<link href="<?php echo base_url(); ?>style/css/slick.css" rel="stylesheet" />
	<link href="<?php echo base_url(); ?>style/css/slick-theme.css" rel="stylesheet" />
	<link href="<?php echo base_url(); ?>style/css/style-slick.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>style/css/jquery-ui-1.10.3.custom.min.css">
 
<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.12.4.js">	</script>
<script src="<?php echo base_url(); ?>style/js/jquery-ui-1.10.3.custom.min.js"></script> 
 
<script type="text/javascript" src="<?php echo base_url(); ?>style/js/custom.js"></script> 
<link rel="shortcut icon" href="http://tanjung jabung timurkab.go.id/portal/favicon.ico">
</head>
<body>

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
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/id_ID/sdk.js#xfbml=1&version=v2.4&appId=184233161641366";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script> 
<?php  $this->load->view($vheader); ?>  
<div class="clearfix"></div> 
<div class="main produkhukum grid">
    <div class="container" style="margin-top: 30px;">
		<div class="row">
            <div class="col8">
				<?php $this->load->view($vdata); ?>
            </div>
            <div class="col4 sidebar">
				<?php  
				if ($this->session->userdata('perkategori')==true) {
					$this->load->view("v_kiri1"); 
				} else {
					$this->load->view("v_kiri2"); 
				} 
				?> 
			</div>
		</div>
	</div>
</div>   
<div class="clearfix"></div> 
<br><br>
<?php  $this->load->view($vfooter); ?> 
</body>
</html>

