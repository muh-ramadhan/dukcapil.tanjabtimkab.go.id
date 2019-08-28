<?php	
if ($this->uri->segment(1,0)=='read') {
?>
<div class="detailnews" style="position: relative;    float: left;">
<div class="socialshare wp-conten-left-detail" >
<div id="div-unggulan2">
<?php
$iklan3 = $this->m_data->ambiliklan(2,18);
$jumlahiklan=count($iklan3->result_array());
if($jumlahiklan>0){
foreach($iklan3->result_array() as $raw)
{
$photopath = str_replace('-', '/', $raw['tanggal_modif']); 
if ($raw['link']!=null) {
$contiklan="<a href='".$row['link']."'> <img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'   width='100%' class='banner singleban'> </a>";
} else {
$contiklan="<img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'  width='100%' class='banner singleban' >";
} 
echo  $contiklan; 
} 
} 
else {
?>
 <img src="<?php echo base_url(); ?>iklan/ban-detail.jpg"> 
<?
}
?>


 </div>
<!-- 
 <div id="div-iklan">
 <div class="clear"></div> 
 <img src="<?php echo base_url(); ?>iklan/ban-detail.jpg"> 
 </div>
 
<center>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
 
<ins class="adsbygoogle"
     style="display:inline-block;width:160px;height:600px"
     data-ad-client="ca-pub-1936757666343154"
     data-ad-slot="8464715028"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</center>
-->
<div class="clear trigerbermultimedia">trigger</div>
</div>
<div class="fullread wp-conten-center-detail left">
<?php
 foreach($detail_berita->result() as $row){
 $photopath = str_replace('-', '/', $row->tanggal_modif);
 $judul=seo_link($row->nama_kategori);
 $dibaca=$row->dibaca;
	?> 
	
<ul class="breadcrumb">
				<li class="bread1"><a href="<?php echo base_url(); ?>">Home</a></li>
				<li class="bread2"><a href="<?php echo base_url(); ?>kategori/<?php echo $row->kategori_seo; ?>"><?php echo $row->nama_kategori; ?> </a></li>
				 
</ul>	
	
	 

	  
	
<br> 
<div style="color:#239b33;font-size:24px;line-height:140%;"><?php echo $row->sub_judul; ?></div> 
<div class="hldetail">
<h1 class="clearfix "><?php echo $row->judul; ?></h1>
</div>

<span style="color:#666;font-size:14px;">
<?php
	$tanggal=$row->tanggal;
	echo nama_hari($tanggal).', ';
	echo tgl_indo($tanggal).' - ';
	echo $row->jam.'  ';

    ?> |<b> dibaca: <?php echo $row->dibaca; ?> kali</b>
	</span>
<div class="clear"></div> 
<br>
<div class="left">
								
<link rel="stylesheet" href="http://bermultimedia.com/assets/site.css"> 				
<script type="text/javascript">
		function get_social_counts() {
			//var thisUrl = window.location.protocol + "//" + window.location.host + window.location.pathname;
		<?php // echo current_url(); ?>	//http://suarajambi.com/read/2016/11/03/524/awas-ice-bubble-di-duga-mengandung-bahan-sol-sepatu-dan-karet-ban/
			var thisUrl ='<?php  echo current_url(); ?>';
			$.ajax({
				type: "GET",
				url: '<?php echo base_url(); ?>social-counts.php?thisurl='+thisUrl,
				dataType: "json",
				success: function (data){
			$('a.post-share.twitter span').html(data.twitter);
			$('a.post-share.facebook span').html(data.facebook);
			$('a.post-share.gplus span').html(data.gplus);
			$('a.post-share.stumble span').html(data.stumble);
		}
			});
		}
		//{"facebook": 0, "twitter": 17, "gplus": 0, "stumble": 0}		
		$(document).ready(function(){
			get_social_counts();
		});
	 
</script>
			
				
			 <p>
					<a class="post-share facebook" href="http://www.facebook.com/share.php?u=<?php  echo current_url(); ?>&title=<?php echo $row->judul; ?>" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">Facebook<span></span></a>
					<a class="post-share twitter" href="https://twitter.com/share?url=<?php  echo current_url(); ?>&text=Text for Twitter Here&via=medialoot" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">Twitter<span></span></a>
					<a class="post-share gplus" href="https://plus.google.com/share?url=<?php  echo current_url(); ?>" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">Google Plus<span></span></a>
					<a class="post-share stumble" href="http://www.stumbleupon.com/submit?url=<?php  echo current_url(); ?>" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=800');return false;">Stumbleupon<span></span></a>
				</p>
			 
				<!-- END SHARE-->
			
</div>

<div class="clear"></div>
<br>
	<div class="headline-item" >
		<div class="panel-block" >
				<?php if  ($row->gambar!='') {?>
					<img src="<?php echo base_url(); ?>foto_berita/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>" width="100%"  alt="<?php echo $row->text_foto; ?>">
					<?php }else {?>
					<img src="<?php echo base_url(); ?>foto_berita/default-image-wide.jpg" width="100%"  alt="<?php echo $row->text_foto; ?>" >
				<?php }?>
		</div> 	
		  
</div>
<div class="tagline-top clearfix" style="padding:10px 10px; background:#4a65aa;color:#fff;">
	<span style="font-style: italic;font-size:14px;line-height: 150%;"><?php echo $row->text_foto; ?> </span>/  <span style="font-weight: bold;"><?php echo $row->kredit ;  ?></span>
</div>
			   
				 
				<div class="contentberita left"> 
 				
 
 				<div class="right contentx">
				 
<?php echo str_replace('../', base_url().'/', $row->isi_berita); ?>
				
				
	<?php if ($row->penulis!='') { echo 'Penulis: <b><i>'.$row->penulis.'</i></b>'; }?><br>
	<?php if ($row->editor!='') { echo 'Editor: <b><i>'.$row->editor.'</i></b>'; }?><br>
	<?php if ($row->sumber!='') { echo 'Sumber: <b><i>'.$row->sumber.'</i></b>';  } ?>
	
<div class="clear"></div>	 

<?php
if ($row->tag=='') {
?>

<?php
}
else {
?>
<div class="read-page--tags" style="margin-top: 20px;">
	<span class="read-page--tags__icon"></span>
	<ul class="read-page--tags__list">

<?php
$strong = $row->tag;
$dataa = explode(",", $strong);
$jumData = count($dataa);  //untuk menghitung jumlah elemen array
 
for($i=0;$i<$jumData;$i++)
{
$tagg=mysql_query("SELECT nama_tag,tag_seo from tag where tag_seo='$dataa[$i]' ");
$arr=mysql_fetch_array($tagg);
 
?>
<li class="read-page--tags__item"><a href="<?php echo base_url(); ?>tag/<?php echo $arr['tag_seo'];?>" class="read-page--tags__link js-tags-link" target="_blnak"># <?php echo $arr['nama_tag']; ?></a></li>

 
<?php
}
?>

</ul>
	</div>
<?php
}
?> 
	
	</div>
				  
		 
	 
 </div>
 <div class="clear"></div> 
<br>
<?php   }  ?>


<div class="title-default"><a href="" class="active">Komentar Anda</a><a href="" class="view-all">Indeks</a></div>
 




<div id="fbcom1917175884" class="cmp_comments_container" style="*border-top:1px solid #ccc;  *padding: 5px 0;text-align:left;">
<!--<div><fb:comments-count href="<?php echo current_url(); ?>"></fb:comments-count> comments</div>
-->
<fb:comments href="<?php echo current_url(); ?>" num_posts="20" width="680" colorscheme="light"></fb:comments>
</div>

<br>

	<div class="wp-sosmed-d"> 
</div> 

<?php
$iklan5 = $this->m_data->ambiliklan(2,20);
$jumlahiklan=count($iklan5->result_array());
if($jumlahiklan>0){
foreach($iklan5->result_array() as $raw)
{
$photopath = str_replace('-', '/', $raw['tanggal_modif']); 
if ($raw['link']!=null) {
$contiklan="<a href='".$row['link']."'> <img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'   width='100%' class='banner singleban'> </a>";
} else {
$contiklan="<img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'  width='100%' class='banner singleban' >";
} 
echo  $contiklan; 
} 
} 
?>

<div id="area" class="left" style="width: 100%;" > 
<div class="clear"></div> 
<div class="title-default"><a href="" class="active">Berita Terkait</a><a href="" class="view-all">Indeks</a></div>
 
<div class="box">
 
			<div class="sub_box5 clearfix">
				<ul>
						
<?php
 
$ambil_id = substr($this->uri->segment(5,0),0,4);
if ($row->tag<>'') {
$pisah_kata  = explode(",",$row->tag);
$jml_katakan = (integer)count($pisah_kata);
$jml_kata = $jml_katakan-1; 
$ambil_id = substr($this->uri->segment(5,0),0,4);
$no=1;
//(id_berita<'$ambil_id') and (id_kategori='$ids') and (id_berita!='$ambil_id') and 
$cari = "SELECT * FROM berita WHERE (" ;
for ($i=0; $i<=$jml_kata; $i++){
$cari .= "tag LIKE '%$pisah_kata[$i]%'";
if ($i < $jml_kata ){
$cari .= " OR ";}
}
$cari .= ")  and (id_berita<>'".$this->uri->segment(5,0)."') ORDER BY id_berita DESC LIMIT 6";
$hasil  = mysql_query($cari);
$ketemu=mysql_num_rows($hasil);
$results = array();
while($w=mysql_fetch_array($hasil)){
$a=substr($w['tanggal'], 0,4);
$b=substr($w['tanggal'], 5,2);
$c=substr($w['tanggal'], 8,9);
$tanggal=$c.'/'.$b.'/'.$a;
$results[] = $w['id_berita'];
$photopath = str_replace('-', '/', $w['tanggal_modif']);
?>
<li>
	<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo "$w[id_berita]/$w[judul_seo]";?>">
		<?if ($w['gambar']!='') { ?>
		<img alt="<?php echo "$w[judul]"; ?>" src="<?php echo base_url(); ?>foto_berita/<?php echo $photopath; ?>/small_<?php echo $w['gambar']; ?>"  alt="<?php echo "$w[judul]"; ?>" >
		<?php } else {?>
		<img alt="<?php echo "$w[judul]"; ?>" src="<?php echo base_url(); ?>foto_berita/image-default.jpg"  alt="<?php echo "$w[judul]"; ?>" >
		<?php }?>
	</a>
	<div style="padding:10px;">
	<div class="date" style="margin-top: 5px;"><?php echo "$w[hari]"; ?>, <?php echo "$tanggal"; ?> - <?php echo "$w[jam]"; ?></div>	
	<p>
	<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo "$w[id_berita]/$w[judul_seo]";?>"><?php echo "$w[judul]"; ?></a>
	</p></div>
</li>  
 <?php
 $no++;
}  
$idrelasi = implode(",",$results);
//echo $idrelasi;
}
else {
$idrelasi="0,1,2";
$ketemu=0;
$no=1;
}

$nn=6-$ketemu;
 
$cari1 = "SELECT * FROM berita WHERE (id_berita<'".$this->uri->segment(5,0)."') and (id_kategori='".$row->id_kategori."') and (id_berita<>'".$this->uri->segment(5,0)."') and (id_berita not in (".$idrelasi.")) ORDER BY id_berita DESC LIMIT $nn";

$hasil1  = mysql_query($cari1);
while($w=mysql_fetch_array($hasil1)){
$a=substr($w['tanggal'], 0,4);
$b=substr($w['tanggal'], 5,2);
$c=substr($w['tanggal'], 8,9);
$tanggal=$c.'/'.$b.'/'.$a;
$photopath = str_replace('-', '/', $w['tanggal_modif']);
?>
<li>
	<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo "$w[id_berita]/$w[judul_seo]";?>">
		<?if ($w['gambar']!='') { ?>
		<img alt="<?php echo "$w[judul]"; ?>" src="<?php echo base_url(); ?>foto_berita/<?php echo $photopath; ?>/small_<?php echo $w['gambar']; ?>"  alt="<?php echo "$w[judul]"; ?>" >
		<?php } else {?>
		<img alt="<?php echo "$w[judul]"; ?>" src="<?php echo base_url(); ?>foto_berita/image-default.jpg"  alt="<?php echo "$w[judul]"; ?>" >
		<?php }?>
	</a>
	<div style="padding:10px;">
	<div class="date" style="margin-top: 5px;"><?php echo "$w[hari]"; ?>, <?php echo "$tanggal"; ?> - <?php echo "$w[jam]"; ?></div>	
	<p>
	<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo "$w[id_berita]/$w[judul_seo]";?>"><?php echo "$w[judul]"; ?></a>
	</p>
	</div>
</li>
<?php
$no++;
}  
?> 	
</ul>
		</div>
</div>
 
</div>  
<br>

<!--
<div class="clear"></div> 
<div class="pulse-terkini-ibt">
<div class="clearfix">
    <div class="title hitam left clearfix">
      <h3> BERITA TERKINI 24 JAM </h3>
    </div>
    <a href=""><div class="sub-title hijau right">INDEKS Update berita 24 Jam terakhir</div></a>
  </div>
</div>
<div id="area" class="homnews left">
    <ul class="list-n list-berita">
<?php
	$no=1;
			foreach($donmiss->result() as $row){
			$isi=strip_tags($row->isi_berita);
			$isi=substr($isi,0,220);
			$judul=seo_link($row->judul);
			$judulan=seo_link($row->nama_kategori);
			$photopath = str_replace('-', '/', $row->tanggal_modif);
			$a=substr($row->tanggal, 0,4);
			$b=substr($row->tanggal, 5,2);
			$c=substr($row->tanggal, 8,9);
			$tanggal=$c.'/'.$b.'/'.$a;
			$session_time= strtotime($row->tanggal." ".$row->jam);
			$waktuindo= $row->hari.', '.$tanggal.' '.$row->jam.' '; 
			if  ($row->gambar!='') { 
				$gambar=base_url() ."foto_berita/".$photopath."/small_".$row->gambar;
			}
			else { 
				$gambar=base_url() ."foto_berita/image-default.jpg";
			}
			?>
			
			<?php  if ($no==1) { ?>
			<span>
			 <li>
           <div class="imagelist3 left p-nol m-nol">
	<div class="wp-thumb-news">
		<a class="" href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul;?>" title="<?php echo $row->judul; ?>"></a>
		<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul;?>g"><div class="thumb-news3" data-original="<?php echo $gambar; ?>?w=380" style="background-image: url('<?php echo $gambar; ?>?w=380')"></div></a>
	</div>
	</div>
   
        <div class="articlelist2 right m-nol p-nol-ipad">
		            <div class="content-hardnews ">
				<ul class="post_details">
                            <a href="<?php echo base_url(); ?>kategori/<?php echo $row->kategori_seo;?>" title="<?php echo $row->nama_kategori; ?>"><li class="category"><?php echo $row->nama_kategori; ?></li></a>
                            <li class="date">  <img src="<?php echo base_url(); ?>style/images/clock.jpg" width="12" /> <?php echo $row->hari; ?>, <?php echo $tanggal; ?> <?php echo $row->jam; ?> </li>
                </ul><div class="clear"></div>
						
				<h3><a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul."/";?>" title="<?php echo $row->judul; ?>"> <?php echo $row->judul; ?></a></h3>
                <p><?php echo $isi; ?>.</p>
            </div>
			 	
	</div>	
        <div class="clear"></div>
    </li>		
			<?php } else if ($no==5 || $no==10) { ?>
			  <li>
           <div class="imagelist3 left p-nol m-nol">
	<div class="wp-thumb-news">
		<a class="" href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul;?>" title="<?php echo $row->judul; ?>"></a>
		<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul;?>g"><div class="thumb-news3" data-original="<?php echo $gambar; ?>?w=380" style="background-image: url('<?php echo $gambar; ?>?w=380')"></div></a>
	</div>
	</div>
   
        <div class="articlelist2 right m-nol p-nol-ipad">
		            <div class="content-hardnews ">
				<ul class="post_details">
                            <a href="<?php echo base_url(); ?>kategori/<?php echo $row->kategori_seo;?>" title="<?php echo $row->nama_kategori; ?>"><li class="category"><?php echo $row->nama_kategori; ?></li></a>
                            <li class="date">  <img src="<?php echo base_url(); ?>style/images/clock.jpg" width="12" /> <?php echo $row->hari; ?>, <?php echo $tanggal; ?> <?php echo $row->jam; ?> </li>
                </ul><div class="clear"></div>
						
				<h3><a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul."/";?>" title="<?php echo $row->judul; ?>"> <?php echo $row->judul; ?></a></h3>
                <p><?php echo $isi; ?>.</p>
            </div>
			 	
	</div>	
        <div class="clear"></div>
    </li>
			</span>
			<?php }  else if ($no==6) {
			?>
			<span id="loadmiss_1" style="display:none">
			 <li>
           <div class="imagelist3 left p-nol m-nol">
	<div class="wp-thumb-news">
		<a class="" href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul;?>" title="<?php echo $row->judul; ?>"></a>
		<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul;?>g"><div class="thumb-news3" data-original="<?php echo $gambar; ?>?w=380" style="background-image: url('<?php echo $gambar; ?>?w=380')"></div></a>
	</div>
	</div>
   
        <div class="articlelist2 right m-nol p-nol-ipad">
		            <div class="content-hardnews ">
				<ul class="post_details">
                            <a href="<?php echo base_url(); ?>kategori/<?php echo $row->kategori_seo;?>" title="<?php echo $row->nama_kategori; ?>"><li class="category"><?php echo $row->nama_kategori; ?></li></a>
                            <li class="date">  <img src="<?php echo base_url(); ?>style/images/clock.jpg" width="12" /> <?php echo $row->hari; ?>, <?php echo $tanggal; ?> <?php echo $row->jam; ?> </li>
                </ul><div class="clear"></div>
						
				<h3><a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul."/";?>" title="<?php echo $row->judul; ?>"> <?php echo $row->judul; ?></a></h3>
                <p><?php echo $isi; ?>.</p>
            </div>
			 	
	</div>	
        <div class="clear"></div>
    </li>
			<?php } else {
			?>
			<li>
           <div class="imagelist3 left p-nol m-nol">
	<div class="wp-thumb-news">
		<a class="" href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul;?>" title="<?php echo $row->judul; ?>"></a>
		<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul;?>g"><div class="thumb-news3" data-original="<?php echo $gambar; ?>?w=380" style="background-image: url('<?php echo $gambar; ?>?w=380')"></div></a>
	</div>
	</div>
   
        <div class="articlelist2 right m-nol p-nol-ipad">
		            <div class="content-hardnews ">
				<ul class="post_details">
                            <a href="<?php echo base_url(); ?>kategori/<?php echo $row->kategori_seo;?>" title="<?php echo $row->nama_kategori; ?>"><li class="category"><?php echo $row->nama_kategori; ?></li></a>
                            <li class="date">  <img src="<?php echo base_url(); ?>style/images/clock.jpg" width="12" /> <?php echo $row->hari; ?>, <?php echo $tanggal; ?> <?php echo $row->jam; ?> </li>
                </ul><div class="clear"></div>
						
				<h3><a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul."/";?>" title="<?php echo $row->judul; ?>"> <?php echo $row->judul; ?></a></h3>
                <p><?php echo $isi; ?>.</p>
            </div>
			 	
	</div>	
        <div class="clear"></div>
    </li>
			<?php }  
		$no=$no+1;
		} 
		?>
</ul>
</div>


-->


  
</div>
</div>
<?php

} 
  
else if ($this->uri->segment(1,0)=='kategori') {
?>
<div class="clearfix"></div>
 
<div class="fullread left"  style="*margin-left:20px;"> 
<br>
<div class="title-default"><a href="" class="active"><?php echo $judulan;?></a> </div>
<div class="clearfix"></div> 
<?php $acak = rand(1,5); 
if ($acak==1) {
	$bg="hitam";
	$title="title-desc";
}
else if ($acak==2) {
	$bg="hijaumuda";
	$title="title-desc";
}
else if ($acak==3) {
	$bg="hijau";
	$title="title-desc";
}
else if ($acak==4) {
	$bg="kelabu";
	$title="title-desc2";
}
else if ($acak==5) {
	$bg="grey";
	$title="title-desc";
}
?>
<?php
    if (count($artikel)) {
?>
 
 
<div class="boxnews left kategorihl"> 
 
<div class="newsotherbox kategorihl biru<?php //echo $bg;?> left">  
 
<div class="special-item-sideblock left">
<?php
			foreach($beritaheadline->result() as $row){
			$isi=strip_tags($row->isi_berita);
			$isi=substr($isi,0,200); 
			$judul=seo_link($row->judul);
			$a=substr($row->tanggal, 0,4);
			$b=substr($row->tanggal, 5,2);
			$c=substr($row->tanggal, 8,9);
			$tanggal=$c.'/'.$b.'/'.$a;
			$photopath = str_replace('-', '/', $row->tanggal_modif);
			if  ($row->gambar!='') { 
				$gambar=base_url() ."foto_berita/".$photopath."/small_".$row->gambar;
			}
			else { 
				$gambar=base_url() ."foto_berita/image-default.jpg";
			}			
		?>
	<div class="img-desc left">
		<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul."/";?>">
			<div class="thumb-news-hukum-hl left" data-original="<?php echo $gambar; ?>" style="background-image: url('<?php echo $gambar; ?>')"></div>
		</a>
	</div>
	<div class="title-desc <?php // echo $title;?> right"><br>
		<div class="date m-nol" style="margin-top: 5px;"><?php echo $row->hari; ?>, <?php echo $tanggal; ?> <?php echo $row->jam; ?></div>	
			<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row->id_berita."/".$judul."/";?>"><?php echo $row->judul; ?></a>  
				 <div class="clearfix"></div>
			<p><?php echo $isi; ?></p>
	
	</div>		
 
	<?php } ?> 
</div>







 
 
			 
</div> 	 
</div>
<div class="clearfix"></div>    
<br>
<div id="area" class="homnews left">
    <ul class="list-n list-berita">
	<?php
     if (count($artikel)) {
	 $noo=1;
	 $idrelasi=null;
				foreach($artikel as $key => $row){
				//foreach($kategori_berita->result() as $row){
				$isi=strip_tags($row['isi_berita']);
				$isi=substr($isi,0,200); 
				$judul=seo_link($row['judul']);
				 
				$photopath = str_replace('-', '/', $row['tanggal_modif']);				
				$a=substr($row['tanggal'], 0,4);
$b=substr($row['tanggal'], 5,2);
$c=substr($row['tanggal'], 8,9);
$tanggal=$c.'/'.$b.'/'.$a;
				
				
				if  ($row['gambar']!='') { 
				$gambar=base_url() ."foto_berita/".$photopath."/small_".$row['gambar'];
			}
			else { 
				$gambar=base_url() ."foto_berita/image-default.jpg";
			}
			 ?>
			<li>
           <div class="imagelist3 right p-nol m-nol">
	<div class="wp-thumb-news">
		<a class="" href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row['id_berita']."/".$judul;?>" title="<?php echo $row['judul']; ?>"></a>
		<a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row['id_berita']."/".$judul;?>g"><div class="thumb-news3" data-original="<?php echo $gambar; ?>?w=380" style="background-image: url('<?php echo $gambar; ?>?w=380')"></div></a>
	</div>
	</div>
   
        <div class="articlelist2 left m-nol p-nol-ipad">
		            <div class="content-hardnews ">
				<ul class="post_details">
                            <a href="<?php echo base_url(); ?>kategori/<?php echo $row['kategori_seo'];?>" title="<?php echo $row['nama_kategori']; ?>"><li class="category"><?php echo $row['nama_kategori']; ?></li></a>
                            <li class="date">  <img src="<?php echo base_url(); ?>style/images/clock.jpg" width="12" /> <?php echo $row['hari']; ?>, <?php echo $tanggal; ?> <?php echo $row['jam']; ?> </li>
                </ul><div class="clear"></div>
						
				<h3><a href="<?php echo base_url(); ?>read/<?php echo $photopath; ?>/<?php echo $row['id_berita']."/".$judul."/";?>" title="<?php echo $row['judul']; ?>"> <?php echo $row['judul']; ?></a></h3>
                <p><?php echo $isi; ?>.</p>
            </div>
			

<?php
		$idrelasi="0,1,2";
		if ($row['tag']<>'') {
		?>
	<div class="bacajuga">
		<strong>Berita Terkait :</strong>
		<?php
		$pisah_kata  = explode(",",$row['tag']);
		$jml_katakan = (integer)count($pisah_kata);
		$jml_kata = $jml_katakan-1; 
		//$ambil_id = substr($this->uri->segment(5,0),0,4);
		$no=1;
		//(id_berita<'$ambil_id') and (id_kategori='$ids') and (id_berita!='$ambil_id') and 
		$cari = "SELECT * FROM berita WHERE (" ;
		for ($i=0; $i<=$jml_kata; $i++){
		$cari .= "tag LIKE '%$pisah_kata[$i]%'";
		if ($i < $jml_kata ){
		$cari .= " OR ";}
		}
		$cari .= ")  and (id_berita<>'".$row['id_berita']."') and (id_berita<'".$row['id_berita']."') and (id_berita not in (".$idrelasi."))  ORDER BY id_berita DESC LIMIT 2";
		$hasil  = mysql_query($cari);
		$ketemu=mysql_num_rows($hasil);
		//4e$results = array();
		while($w=mysql_fetch_array($hasil)){
		//$results[] = $w['id_berita'];
		
		$photopath2 = str_replace('-', '/', $w['tanggal_modif']);
		?>
		<a href="<?php echo base_url(); ?>read/<?php echo $photopath2; ?>/<?php echo "$w[id_berita]/$w[judul_seo]";?>" ><?php echo "$w[judul]"; ?></a> 
		<?php
		}
		?>
		</div>
	
		<?php
		}
		
		?> 	
	</div>	
        <div class="clear"></div>
			<? if ($noo==3) {?>
		 
		<div style="width:100%;background:#efefef;padding-top: 5px;;margin-top:15px;">
			<center>
			<div style="font-size:11px;color:#333;margin:3px 0;font-family:helvetica;"> Advertisement</div>
				<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- ads336x280 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:336px;height:280px"
     data-ad-client="ca-pub-1936757666343154"
     data-ad-slot="9450518624"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
			</center>
		</div>	
		 
		<?php } ?>
    </li> 
	  
  <?php
    $noo=$noo+1;
  }
//$idrelasi = implode(",",$results);  
    
  }
     ?>
  
    </ul>
	 <div class="clear"></div>
	  <br>
	  <center>
		  <div class="pagination">
		<ul class="tsc_pagination">
		<?php echo $pagination; ?>
		</ul>
		</div>
	 </center>
</div>  
 
  <?php  
  }
else {
  ?>
  <h4 >Maaf, Data Belum Tersedia !</h4>
  
 
            <?php
        }
        ?>	 
 
</div>   
<?php
} 
  ?>