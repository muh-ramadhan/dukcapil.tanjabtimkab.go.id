<section class="region-sidebar-first"> 
 <div class="percat">
 <h2>Profil Instansi</h2>
		<ul class="menu"> 
		<?php
$menuprofil=$this->M_data->ambilsubmenu(2,3);
foreach($menuprofil->result() as $row){
?>
			<li> <a href="<?php echo base_url();  echo $row->link_submenu;?>"> <?php echo $row->nama_submenu; ?> </a></li>
<?php } ?> 
		</ul>
 </div>
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
</section> 

 