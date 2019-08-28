<div class="content grid_7 allberita marked-category">
<div class="single-page">

<?php if (count($detail_berita)) { 
 foreach($detail_berita  as $row){
 $photopath = str_replace('-', '/', $row->tanggal_modif);
 //$judul=seo_link($row->nama_kategori);
				?> 
 
                <div class="box-single-content">
				<div class="breadcrumb">

	
	<a href="<?php echo base_url(); ?>">Beranda </a> | <?php echo $row->judul; ?>
	

	
</div>
			<br>	
                    <h3 class="rs single-title"><?php echo $row->judul; ?></h3>
                    

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
  
<div class="editor-content">
 

<?php if  ($row->gambar!='') {?>
<div class="fotoimg" style=";margin-top:15px;margin-bottom:10px;"> 
  	<center>  
	 <img class='img2' src="<?php echo base_url(); ?>foto_halamanprofil/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>" border="0"  width="100%" ><br />
	
  <div style="padding:10px 0;color:#6f777a;border-bottom:1px solid #ccc;font-style:italic;margin:0;"><?php echo $row->text_foto; ?></div>
	</center>
</div> 
<?php } ?>
  
<br>
  
<?php echo $row->isi_halaman; 
//str_replace('tinymcpuk/gambar/image', base_url();.'/tinymcpuk/gambar/image', $row->isi_halaman) ;
?>
</div>
                </div>
                 
                <!--
                <div class="wrapper-box box-post-comment" style="margin-top:20px;">
                    <h4 class="rs title-box-outside">Komentar Facebook</h4>
                    <div class="clear"></div>
                    <div class="box-white">
						<div id="fbcom1917175884" class="cmp_comments_container"><fb:comments href="<?php echo current_url(); ?>" num_posts="20" width="100%" colorscheme="light"></fb:comments></div>
                    </div>
                </div> -->
		
 
<!-- AddThis Button END -->
  <?php 
 $id=$row->id_halamanprofil;
 $ip_addr = $this->input->ip_address(); 
  }
 
$data = array('dibaca' => $row->dibaca + 1);
$where = "id_halamanprofil = '".$row->id_halamanprofil."'"; 
$str = $this->db->update('halamanprofil', $data, $where);
} else {
 ?>
! Maaf Data Belum Tersedia
 <?php } ?>

   
</div>
</div> 


 
 
 
 
  