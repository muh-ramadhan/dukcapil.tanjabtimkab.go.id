<div class="percat">
		<h3 style="margin-bottom:0;"> <span>ANGGOTA DEWAN</span></h3>
			<nav class="lst-category menucustom">
				<ul class="rs nav nav-category">
<?php
$menu = $this->M_data->ambilsubmenu('',7);
foreach($menu->result() as $row){
?>
					<a href="<?php echo base_url();  echo $row->link_submenu;?>"> <li> <i class="icon iPlugGray"></i><?php echo $row->nama_submenu; ?>  </li> </a> 
	<?php } ?>  
				</ul>
			</nav>
		</div>
		
	<div class="percat">
		<h3 style="margin-bottom:0;"> <span> SEKRETARIAT DEWAN</span></h3>
			<nav class="lst-category menucustom">
				<ul class="rs nav nav-category">
<?php
$menu = $this->M_data->ambilsubmenu('',9);
foreach($menu->result() as $row){
?>
					<a href="<?php echo base_url();  echo $row->link_submenu;?>"> <li> <i class="icon iPlugGray"></i><?php echo $row->nama_submenu; ?>  </li> </a> 
	<?php } ?>  
				</ul>
			</nav>
		</div>	

	 <br>
<center>
<?php 
$iklan1 = $this->M_data->ambiliklan(1,1);
if(count($iklan1->result_array())>0){
foreach($iklan1->result_array() as $raw)
{ 
$photopath = str_replace('-', '/', $raw['tanggal_modif']);


if ($raw['link']!=null) {
$contiklan="<a href='".$row['link']."'> <img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'  class='banner' width='100%'> </a>";
} else {
$contiklan="<img src='".base_url()."materi_iklan/".$photopath."/".$raw['gambar']."'  class='banner' width='100%'>";
}
echo $contiklan;
?>  
<?php }
} else { ?> 
<?php }  
?>
</center>
<div class="clearfix"></div><br>