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
	
	 
	
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>style/css/jquery-ui-1.10.3.custom.min.css">

<script src="<?php echo base_url(); ?>style/js/modernizr.min.js" type="text/javascript"></script>	

<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.12.4.js">	</script>

<script src="<?php echo base_url(); ?>style/js/jquery-ui-1.10.3.custom.min.js"></script> 

<script src="<?php echo base_url(); ?>style/js/bjqs-1.3.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>style/js/custom.js"></script> 
 
<link rel="shortcut icon" href="<?php echo base_url(); ?>style/images/favicon.png">
</head>
<body>

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
<div class="homebanner">
<div class="slider single-item">
<?php 
	$slideimage = $this->M_data->imageslide(5);
		foreach($slideimage->result() as $row){
		$photopath = str_replace('-', '/', $row->tgl_modif);
	?>
<div class="itemslider"><img src="<?php echo base_url(); ?>foto_imageslide/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>"></div> 
	<?php  
	} 
	?>  
</div>
</div> 
<div class="clearfix"></div><br> 
<div class="main">
<div class="container iklan">
<?php
$iklan2 = $this->M_data->ambiliklan(1,1);
if(count($iklan2->result_array())>0){
foreach($iklan2->result_array() as $raw)
{ 
$photopath = str_replace('-', '/', $raw['tanggal_modif']);


if ($raw['link']!=null) {
$contiklan="<a href='".$raw['link']."'> <img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'  class='banner'> </a>";
} else {
$contiklan="<img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'  class='banner' >";
}
echo "<center>";
echo $contiklan;
echo "</center>";
?> <?php }
} else { ?>
 
<?php } ?> 
</div>
</div>


<div class="clearfix"></div> 
<div class="main grid ">
<div class="container galle">
<div class="row">
			
 <div class="col6"> 
<h4 class="rs title-box-outside">Berita Terbaru</h4><br>
<div class="grid_7 allberita marked-category"> 
		<?php
$no=1;
$berita2 = $this->M_data->beritaterbaru2(0,6);
	foreach($berita2->result() as $row){
	$isi=strip_tags($row->isi_berita);
	$isi=substr($isi,0,100); 
	$judul=seo_link($row->judul);
	$photopath = str_replace('-', '/', $row->tanggal_modif);
	$tanggal=$row->tanggal;
	if ($row->gambar!='') { 
		$gambar=base_url() ."foto_berita/".$photopath."/small_".$row->gambar;
	}
	else { 
		$gambar=base_url() ."foto_berita/image-default.jpg";
	}				
?>
<div class="content-info-short clearfix">
	<a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul."/";?>" class="thumb-img">
		<div class="rowwfront" data-original="<?php echo $gambar; ?>" style="background-image: url(<?php echo $gambar; ?>); display: block;"></div> 
	</a>
    <div class="wrap-short-detail">
		<h3 class="rs acticle-title"><a class="be-fc-orange" href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul."/";?>"><?php echo $row->judul; ?></a></h3>
        <p class="rs tiny-desc"><?php echo nama_hari($tanggal).', ';?> <span class="fc-gray"><?php   echo tgl_indo($tanggal).' | '; echo $row->jam.' WIB ';
		?></span></p>
        <p class="rs title-description"><?php echo $isi; ?>...</p> 
	</div> 
</div> 
<?php 
$no=$no+1;
}
?>
</div>
<center><a href="<?php echo base_url(); ?>berita" class="button right">Semua Berita</a></center>
 <br>
 
</div> 

				
<div class="col6" style="margin-bottom:30px;">  

<section>
    <h3 style="margin-bottom:0;"> <span>Kata Sambutan</span></h3>
	<div class="borderpad sambutanka">
		<center>
	<?php  
$identitas = $this->M_data->sambutan();
foreach($identitas->result() as $row) {
?>  
		
<img src="<?php echo base_url(); ?>images/<?php echo $row->gambar; ?>" alt="image" width="150" height="150">
	<div style="font-style:italic;color: #333;">
	<i class="fa fa-quote-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $row->isi_sambutan; ?>&nbsp;&nbsp;<i class="fa fa-quote-right"></i>
	</div><br>
	<a href="<?php echo $row->link; ?>"><b><?php echo $row->nama; ?></b></a>  
<?php
}
?> 
			 </center>
	</div>
</section>  
 <br> 
  <div class="list-group">
<h3 style="margin-bottom:0;"> <span>PENGUMUMAN</span></h3>
<?php 
$pengumuman = $this->M_data->pengumuman(4); 
foreach($pengumuman->result() as $row){
	$isi=strip_tags($row->isi_pengumuman);
	$isi=substr($isi,0,180); 
	$judul=seo_link($row->judul);
	$a=substr($row->tanggal_pengumuman, 0,4);
	$b=substr($row->tanggal_pengumuman, 5,2);
	$c=substr($row->tanggal_pengumuman, 8,9);
	$tanggal=$c.'/'.$b.'/'.$a; 
?>
<a href="<?php echo base_url(); ?>pengumuman/detail/<?php echo $row->id_pengumuman."/".$judul; ?>" class="list-group-item"><?php echo $row->judul; ?><br>
<span style="font-weight:700;"><?php echo tgl_indo($row->tanggal_pengumuman); ?> WIB - <?php echo $row->dibaca; ?> kali dibaca</span>
</a>  
<?php } ?>
</div> 
<br>
<section style="*border-bottom:1px solid #ccc;*padding-bottom:10px;*margin-bottom:10px;">
    <h3><span>VIDEO KEGIATAN</span></h3> 
	<?php
$video = $this->M_data->video(0,1); 
foreach($video->result_array() as $row) {
	$link=str_replace('watch?v=','embed/', $row['link']); 
?>
<iframe width="100%" height="300" src="<?php echo $link; ?>" allowfullscreen></iframe>  
<?php
}
?>
	
   
</section> 

</div> 	
 
<div class="col6"> 
<?php
$iklan2 = $this->M_data->ambiliklan(1,2);
if(count($iklan2->result_array())>0){
foreach($iklan2->result_array() as $raw)
{ 
$photopath = str_replace('-', '/', $raw['tanggal_modif']);


if ($raw['link']!=null) {
$contiklan="<a href='".$raw['link']."'> <img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."' width='100%' class='banner'> </a>";
} else {
$contiklan="<img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'  class='banner'  width='100%' >";
}
echo "<center>";
echo $contiklan;
echo "</center>";
?> <?php }
} else { ?>
 
<?php } ?> 

</div>
</div>
</div> 
<div class="clearfix"></div>
<div class="main grid otherornm">
<div class="container"> 
</div>
</div>


<div class="clearfix"></div><br><br>
<div class="homebanner galery">
<div class="container">
<div class="wrap-title">
                <h2 class=""> <span style="width: auto;">Galeri Kegiatan </span> <a href="<?php echo base_url(); ?>galeri" class="button right">+ selengkapnya</a></h2>
				<!-- <a href="<?php echo base_url(); ?>dewan" class="button right">Selengkapnya</a> -->
  </div>
			<div class="clearfix"></div>
<div class="slider responsive">
<?php
$fotokolom=$this->M_data->fotokolom(0,6);
foreach($fotokolom->result() as $row){ 
	$isi=strip_tags($row->keterangan);
	$isi=substr($isi,0,140); 
	$judul=seo_link($row->judul_fotoberita);
	$photopath = str_replace('-', '/', $row->tanggal_modif);
	$a=substr($row->tanggal, 0,4);
	$b=substr($row->tanggal, 5,2);
	$c=substr($row->tanggal, 8,9);
	$tanggal=$c.'/'.$b.'/'.$a;  
?> 
					
					
					
<div class="itemgalery"><a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>" style="width:inherit;">
		<div class="thumb-news-hukum-hl" data-original="<?php echo base_url(); ?>foto_galeri/<?php echo$photopath; ?>/small_<?php echo $row->gbr_gallery;?>" style="background-image: url('<?php echo base_url(); ?>foto_galeri/<?php echo$photopath; ?>/small_<?php echo $row->gbr_gallery;?>')"></div>
		
		<div class="galerydesc"><h4><?php echo $row->judul_fotoberita; ?></h4>
		<p style="color:#ccc;margin-top:8px;"><?php echo $row->jumlah; ?> Foto - <?php echo $tanggal; ?></p>
		</div>
		</a>
	</div>  
	<?php } ?> 
 
</div>
</div>		
</div>
<div class="clearfix"></div>

<?php /* ?>
<div class="main otherornm">
<div class="container">
	 
	<div class="col-md-3">
	
	<div class="list-group">
<h3 style="margin-bottom:0;"> <span>Artikel Hukum</span></h3>
<?php 
$arthuk = $this->M_data->arthuk(5); 
foreach($arthuk->result() as $row){
	$isi=strip_tags($row->isi_artikel);
	$isi=substr($isi,0,180); 
	$juduls=($row->judul_seo);
?>
<a href="<?php echo base_url(); ?>artikel/detail/<?php echo $row->id_artikel."/".$juduls; ?>" class="list-group-item"><?php echo $row->judul; ?> <br>
<span style="font-weight:700;">Penulis: <em><?php echo $row->kutipan; ?></em> </span>
</a>
<?php } ?>   

<center style='padding-top:5px;'><a href="<?php echo base_url(); ?>artikel" class="button right">Semua Artikel</a></center>
</div> 
<div style='padding-top:40px;'><br></div>
	
		
	</div> 
	
<div class="col-md-3 event"> 
     <h3 style="margin-bottom:0;"> <span>JADWAL KEGIATAN</span></h3> 
<div style="border:1px solid #ccc;padding:15px 15px 0 15px;">
  

<?php 
$agenda = $this->M_data->jadwalkegiatan(3); 
foreach($agenda->result() as $row){ 
	$judul=seo_link($row->namakegiatan);
	$tanggalan=substr($row->tgl_kegiatan,8,2);
	$bulanan=substr($row->tgl_kegiatan,5,2);
	$bulan=bulan($bulanan);
?>
			
<div class="itemevent">	
	<div class="date rounded_2 alignleft"> <span> <?php echo $tanggalan; ?> </span> <?php echo $bulan; ?> </div>
		<div class="wrap-short-detail">
			 <a href="<?php echo base_url(); ?>kegiatan/detail/<?php echo $row->id_kegiatan; ?>/<?php echo $judul; ?>"><?php echo $row->namakegiatan; ?></a> 
			<p class="rs project-location">
            <i class="icon iLocation"></i>
				<?php echo $row->tempat; ?>
            </p>							 
		<p class="rs title-description"><?php echo $row->perihal; ?>.</p>
	</div>
</div>	 
<?php } ?>
<br>
 Klik Link Berikut untuk Melihat Arsip Jadwal Kegiatan
<a href="<?php echo base_url(); ?>kegiatan" class="button right">Arsip Jadwal</a>
<div class="clearfix"></div>
<br>

</div>	 
	</div>
	
	<div class="col-md-3">
	<div class="list-group">
<h3 style="margin-bottom:0;"> <span>Buku Hukum</span></h3>
<?php 
$arthuk = $this->M_data->ambilbukuhukum(5); 
foreach($arthuk->result() as $row){
	$isi=strip_tags($row->deskripsi);
	$isi=substr($isi,0,180); 
	$juduls=seo_link($row->judul);
?>
<a href="<?php echo base_url(); ?>buku/detail/<?php echo $row->id_buku."/".$juduls; ?>" class="list-group-item"><?php echo $row->judul; ?> <br>
<span style="font-weight:700;">
<?php if ($row->penulis!='') { ?>
Penulis: <em><?php echo $row->penulis; ?></em>
<?php } else { ?>
Penyusun: <em><?php echo $row->penyusun; ?></em>
<?php } ?>
</span>
</a>
<?php } ?>   

<center style='padding-top:5px;'><a href="<?php echo base_url(); ?>buku" class="button right">Semua Buku Hukum</a></center>
</div> 


	</div> 
<div class="clearfix"></div>
</div>
</div>
<?php */ ?>

 
<div class="main otherornm">
<div class="container">
	 
	
	
	<div class="col-md-3">
<h3 style="margin-bottom:0;"><span>Data Weblink</span></h3> 
		<div class=" unduh borderpad">
		<ul>
		<?php 
		$weblink = $this->M_data->weblink(5);
foreach($weblink->result() as $row){
	$judul=seo_link($row->nama_weblink);
?>
<li><div class="leftt" style="height:30px;margin-right:10px;"><i class="fa fa-globe"></i></div><a href="<?php echo $row->link; ?>" target="_blank"><?php echo $row->nama_weblink; ?></a><br><?php echo $row->link; ?></li> 
<?php } ?>  
		</ul>
		<br>
Klik Data Link Terkait <a href="<?php echo base_url(); ?>weblinks" class="button right" style="color:#fff;">Data Weblink</a><br><br>
		</div>  		
	</div> 
	<div class="col-md-3">
<h3 style="margin-bottom:0;"><span>e-Polling</span></h3> 
 
<div style="border:1px solid #ccc;padding:15px;">
  <script type='text/javascript'> 
  $(document).ready(function () {
 $('#chartdivpolling').highcharts({
      chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
                text: 'Hasil e-Polling'
            },
<?php
 
?>
			subtitle: {
            text: '<?php echo $pertanyaan; ?>',
            x: -20
          },
        tooltip: {
            pointFormat: '{series.name} : <b>{point.y}</b> Presentase <b>{point.percentage:.1f}%</b>'
        },

       plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
        credits: {
            enabled: false
        },
<?php
 
?>
        series: [{
            type: 'pie',
            name: 'Total',
            data: [
			<?php
//$ook = mysql_query("SELECT * from pollingpilihan where id_polling='$rss[id_polling]' order by rating");
$jumlah=count($pollingpilihan->result());
$no=1;
foreach($pollingpilihan->result() as $row){
//while ($rs=mysql_fetch_array($ook)){
if ($no==1) {
$warna="#00FF00";
}
elseif ($no==2) {
$warna="#ff0000";
}
elseif ($no==3) {
$warna="#7463b9";
}
elseif ($no==4) {
$warna="#000";
}
elseif ($no==5) {
$warna="#e9ae0f";
}
elseif ($no==6) {
$warna="#6c6758";
}
elseif ($no==7) {
$warna="#5b4246";
}
?>
                {name: '<?php echo $row->pilihan; ?>',
                    y: <?php echo $row->rating; ?>,
                    sliced: true,
                    selected: true,
                    color:'<?php echo $warna;?>'}<?php if ($no<$jumlah) { ?> ,
<?php
} 
$no++;
}
?>					
]
        }]
    });
 });
</script>
  <div id="chartdivpolling" style="height:400px"></div>  
  
  <?php 
  $pollingan=$this->M_data->pollingan("");
  echo $pollingan; ?> 
  
<script type="text/javascript" src="<?php echo base_url(); ?>style/js/exporting.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>style/js/highcharts.js"></script>
</div>		
	</div> 
	
	
<div class="col-md-3 event"> 
     <h3 style="margin-bottom:0;"> <span>JADWAL KEGIATAN</span></h3> 
<div style="border:1px solid #ccc;padding:15px 15px 0 15px;">
  

<?php 
$agenda = $this->M_data->jadwalkegiatan(3); 
foreach($agenda->result() as $row){ 
	$judul=seo_link($row->namakegiatan);
	$tanggalan=substr($row->tgl_kegiatan,8,2);
	$bulanan=substr($row->tgl_kegiatan,5,2);
	$bulan=bulan($bulanan);
?>
			
<div class="itemevent">	
	<div class="date rounded_2 alignleft"> <span> <?php echo $tanggalan; ?> </span> <?php echo $bulan; ?> </div>
		<div class="wrap-short-detail">
			 <a href="<?php echo base_url(); ?>kegiatan/detail/<?php echo $row->id_kegiatan; ?>/<?php echo $judul; ?>"><?php echo $row->namakegiatan; ?></a> 
			<p class="rs project-location">
            <i class="icon iLocation"></i>
				<?php echo $row->tempat; ?>
            </p>							 
		<p class="rs title-description"><?php echo $row->perihal; ?>.</p>
	</div>
</div>	 
<?php } ?>
<br>
 Klik Link Berikut untuk Melihat Arsip Jadwal Kegiatan
<a href="<?php echo base_url(); ?>kegiatan" class="button right">Arsip Jadwal</a>
<div class="clearfix"></div>
<br>

</div>	 
	</div>
<div class="clearfix"></div>
</div>
</div> 
 
<div class="clearfix"></div> 
<?php  $this->load->view($vfooter); ?> 

</body>
</html>