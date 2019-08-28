<div class="percategory">
                <h3 class="title-welcome rs">Kapolres <span class="fc-orange">Kolaka</span></h3>
					<div style="background:#fff;">
					<center>
<?php
$r = $this->m_data->fotokapolres();
foreach($r->result() as $row){ 
?>
<img src="<?php echo base_url(); ?>f_kapolres/<?php echo $row->gambar; ?>" />
<?php 
} 
?> 
					<!--
					<p class="description rs" style="padding:15px 15px 0 15px;font-weight:bold;">KOMBES POL  BERNARD SIBARANI, S.IK, M.SI</p>
					-->
					<p  style="padding:0 15px 0 15px;">
					
					Selamat Datang, Salam Sejahtera, Kita harapkan dengan adanya Website ini dapat menjadi media informasi bagi internal polri maupun bagi masyarakat
					</p>
					</center>
					
                        <p class="rs view-all-category" style="padding:0 15px 15px 15px;">
                            <a href="<?php echo base_url(); ?>kapolres" class="be-fc-orange">+ Lihat Data Kapolres</a>
                        </p>
					
					</div>
                </div>
				<div class="percategory">
				 <h3 class="title-welcome rs">Profil <span class="fc-orange">Polresta</span></h3>
                    <nav class="lst-category menucustom">
                        <ul class="rs nav nav-category">
<?php
foreach($menuprofil->result() as $row){
?>
<a href="<?php echo base_url();  echo $row->link_submenu;?>"> <li> <i class="icon iPlugGray"></i><?php echo $row->nama_submenu; ?>  </li> </a>
	
	<?php } ?> 
						<!--	
                            <li>
                                <a href="#">
                                    Design
                                    <span class="count-val">(12)</span>
                                    <i class="icon iPlugGray"></i>
                                </a>
                            </li> 
						-->	
                        </ul>
						<!--
                        <p class="rs view-all-category">
                            <a href="category.html" class="be-fc-orange">+ View all categories</a>
                        </p>
						-->
                    </nav><!--end: .lst-category -->
				</div>	
				
				<div class="percategory">
				<h3 class="title-welcome rs">Online <span class="fc-orange">Survey</span></h3>
					<?php echo $pollingan; ?> 
				</div>	
				
				<div class="percategory">
                <div style="background:#fff;">
					<center> 
<?php
$iklan1 = $this->m_data->ambiliklan(1,1);
if(count($iklan1->result_array())>0){
foreach($iklan1->result_array() as $raw)
{ 
$photopath = str_replace('-', '/', $raw['tanggal_modif']);


if ($raw['link']!=null) {
$contiklan="<a href='".$row['link']."'> <img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'  class='banner'> </a>";
} else {
$contiklan="<img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'  class='banner'>";
}
echo $contiklan;
?> 

<?php }
} else { ?>
 
<?php } ?>  
		</center>
	</div>
</div>
				
<div class="percategory">
<h3 class="title-welcome rs">Daftar <span class="fc-orange">DPO</span></h3>
<div class="rs view-all-category" style="padding:0 15px 15px 0;">
                            <a href="<?php echo base_url(); ?>dpo" class="be-fc-orange">+ Lihat Data DPO</a>
                        </div>				
	<div id="banner-fade"> 
        <ul class="bjqs">
<?php
//$r = $this->m_data->fotokapolda();
foreach($dpo->result() as $row){
$judul=seo_link($row->nama); 
?>
<li>
<a href="<?php echo base_url(); ?>dpo/detail/<?php echo $row->id_dpo;?>/<?php echo $judul;?>">
	<img src="<?php echo base_url(); ?>f_dpo/<?php echo $row->gambar;?>" title="<?php echo $row->nama.' '.$row->nama_keluarga;?>">
</a>	
</li> 
<?php 
} 
?> 
	</ul> 
</div> 

      <script class="secret-source">
        jQuery(document).ready(function($) {

          $('#banner-fade').bjqs({
            width       : 300,
			height      : 300,
            responsive  : true
          });

        });
      </script> 
	  <div class="clear"></div>
	   
	  </div>