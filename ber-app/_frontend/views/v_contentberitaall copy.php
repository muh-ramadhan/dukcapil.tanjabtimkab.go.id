<div class="content grid_7 allberita marked-category">
	<div class="single-page">
<h4 class="rs title-box-outside">Berita Terkini</h4><br>
<?php
    if (count($artikel)) {
	?>
<?php
$no=1;
foreach($artikel as $key => $row){ 
	$isi=strip_tags($row['isi_berita']);
	$isi=substr($isi,0,140); 
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

<div class="content-info-short clearfix">
	<a href="<?php echo base_url(); ?>berita/detail/<?php echo $row['id_berita']."/".$judul."/";?>" class="thumb-img">
		<div class="thumb-news1" data-original="<?php echo $gambar; ?>" style="background-image: url('<?php echo $gambar; ?>')"></div>   
	</a>
    <div class="wrap-short-detail">
		<h3 class="rs acticle-title"><a class="be-fc-orange" href="<?php echo base_url(); ?>berita/detail/<?php echo $row['id_berita']."/".$judul."/";?>"><?php echo $row['judul']; ?></a></h3>
        <p class="rs tiny-desc"><?php echo nama_hari($row['tanggal']).', ';?> <span class="fw-b fc-gray"><?php   echo tgl_indo($row['tanggal']).' | '; echo $row['jam'].' WIB ';
		?></span></p>
        <p class="rs title-description"><?php echo $isi; ?>...</p>
	</div> 
</div> 
<?php
$no=$no+1;
}
?>
  <?php } else { ?>
<h4 >Maaf, Data Belum Tersedia !</h4>
<?php } ?>
<div class="clearfix"></div>
	<center>
		  <div class="pagination">
		<ul class="tsc_pagination">
		<?php echo $pagination; ?>
		</ul>
		</div>
	 </center>
<br>
<br>
</div>
</div>

 