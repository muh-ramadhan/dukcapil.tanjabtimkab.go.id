 

 

 <?php	

 //--- KONDISI BILA DETAIL BERITA

 if ($this->uri->segment(1,0)=='berita' and $this->uri->segment(2,0)=='detail') {

?>

<div class="content grid_7 allberita marked-category">

            <div class="single-page">



<?php

if (count($detail_berita->result())>0) { 

 foreach($detail_berita->result() as $row){

 $photopath = str_replace('-', '/', $row->tanggal_modif);

 $judul=seo_link($row->nama_kategori);

				?> 



                <div class="box-single-content">

				<div class="breadcrumb">



	

	<a href="<?php echo base_url(); ?>">Beranda </a>/ <a href="<?php echo base_url(); ?>kategori/<?php echo $row->kategori_seo; ?>"><?php echo $row->nama_kategori; ?> </a> 

	



	

</div> 			

                    <h3 class="rs single-title"><?php echo $row->judul; ?></h3>

                    <p class="rs post-by"><?php

  $tanggal=$row->tanggal;

  echo nama_hari($tanggal).', ';

echo tgl_indo($tanggal).' | ';

  echo $row->jam.' WIB ';

  

    ?>

	 | Dibaca: <?php echo $row->dibaca; ?> Kali </p>



<div class="left">

<link rel="stylesheet" href="http://bermultimedia.com/assets/social.css"> 

<div class="box-share">

    <div class="share clearfix">

    <div id="social-share"></div>

    

    <script> 

        $(document).ready(function() { 

            var link_socmed = "<?php echo current_url(); ?>"

            $('#social-share').klnsosial({

                url:"<?php echo current_url(); ?>",

                comment_count:-1,

                twitter_user: 'jdihtanjung jabung timurkab'

            });

        });

    </script>

<script src="http://bermultimedia.com/assets/social.js"></script>  

    </div>

</div> 

</div>

<div class="clearfix"></div> 

<div class="editor-content"> 



<?php if  ($row->gambar!='') {?>

<div class="fotoimg" style=";margin-top:15px;margin-bottom:10px;"> 

  	<center>  

	 <img class='img2' src="<?php echo base_url(); ?>foto_berita/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>" border="0"  width="100%" ><br />

	

  <div style="padding:10px 0;color:#6f777a;border-bottom:1px solid #ccc;font-style:italic;margin:0;"><?php echo $row->text_foto; ?></div>

	</center>

</div> 

<?php } ?>

<br>

<?php

echo $row->isi_berita;  

?>

</div>

                </div>

                 

                

                <div class="wrapper-box box-post-comment" style="margin-top:20px;">

                    <h4 class="rs title-box-outside">Komentar Facebook</h4>

                    <div class="clear"></div>

                    <div class="box-white">

						<div id="fbcom1917175884" class="cmp_comments_container"><fb:comments href="<?php echo current_url(); ?>" num_posts="20" width="100%" colorscheme="light"></fb:comments></div>

                    </div>

                </div> 

		

 

<!-- AddThis Button END -->

  <?php 

 $id=$row->id_berita;

 $ip_addr = $this->input->ip_address(); 

  }

 

$data = array('dibaca' => $row->dibaca + 1);

$where = "id_berita = '".$row->id_berita."'"; 

$str = $this->db->update('berita', $data, $where);

} else {

 ?>

! Maaf Data Belum Tersedia<br><br><br>

 <?php } ?>



 















</div>

</div> 

<?php 

} 

//---- KONDISI BILA KATEGORI BERIT ------------

// && ($this->uri->segment(2,0)==null || $this->uri->segment(2,0)=='index')

 

 

 else if ($this->uri->segment(1,0)=='kategori') { 

 ?>



<div class="content grid_7 allberita marked-category">

	<div class="single-page">

	<h4 class="rs title-box-outside">Kategori <?php echo $judulan;?></h4><br>

	 

<?php

    if (count($artikel)) {

	?>

	 

<?php

$no=1;

foreach($artikel as $key => $row){ 

	$isi=strip_tags($row['isi_berita']);

	$isi=substr($isi,0,220); 

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

   

  <?php

  }

else {

  ?>

<h4 >Maaf, Data Belum Tersedia !</h4>

<?php

}

?>

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

 

 <?php 

 }

  ?>