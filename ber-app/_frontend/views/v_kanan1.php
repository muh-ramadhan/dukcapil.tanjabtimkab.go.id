<section class="region-sidebar-first"> 
<div class="percat">
		<h3 style="margin-bottom:0;"> <span>PROFIL</span></h3>
			<nav class="lst-category menucustom">
				<ul class="rs nav nav-category">
<?php
$menu = $this->M_data->ambilsubmenu(2,3);
foreach($menu->result() as $row){
?>
					<a href="<?php echo base_url();  echo $row->link_submenu;?>"> <li> <i class="icon iPlugGray"></i><?php echo $row->nama_submenu; ?>  </li> </a> 
	<?php } ?>  
				</ul>
			</nav>
		</div>

		<div class="percat">
		<h3 style="margin-bottom:0;"> <span>Polling</span></h3>
			 <div class="borderpad">
			<?php $pollingan=$this->M_data->pollingan("");
			echo $pollingan; ?>
			 </div>
		</div>
	<br>	
<div class="percat">
					<center> 
<?php
$iklan1 = $this->M_data->ambiliklan(1,1);
if(count($iklan1->result_array())>0){
foreach($iklan1->result_array() as $raw)
{ 
$photopath = str_replace('-', '/', $raw['tanggal_modif']);


if ($raw['link']!=null) {
$contiklan="<a href='".$raw['link']."'> <img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'  class='banner'> </a>";
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
 
<div class="percat">
<h3 style="margin:0;"><span>BERITA TERPOPULER</span></h3>
 <div class="list-group">
 
<?php
$beritaterbaru = $this->M_data->beritaterbaru(5);
foreach($beritaterbaru->result() as $row){
$judul=seo_link($row->judul);
$photopath = str_replace('-', '/', $row->tanggal_modif);
?>
<a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul."/";?>" class="list-group-item"><?php echo $row->judul; ?> <br>
<span style="font-weight:700;"><?php echo $row->dibaca; ?> kali dibaca</span>
</a> 
<?php } ?>   
</div>
		 
 </div>
</section> 

 