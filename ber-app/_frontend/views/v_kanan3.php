 <div class="wrap-lst-category putih">
				<div class="percategory">
				 <h3 class="title-welcome rs">Profil <span class="fc-orange">Instansi</span></h3>
                    <nav class="lst-category menucustom">
                        <ul class="rs nav nav-category">
<?php
foreach($menuprofil->result() as $row){
?>
<a href="<?php echo base_url();  echo $row->link_submenu;?>"> <li> <i class="icon iPlugGray"></i><?php echo $row->nama_submenu; ?>  </li> </a>
	
	<?php } ?>  
                        </ul>
					 
                    </nav><!--end: .lst-category -->
				</div>	
				
				<div class="percategory">
				<h3 class="title-welcome rs">Online <span class="fc-orange">Survey</span></h3>
					<?php echo $pollingan; ?> 
				</div>	
				
				<div class="percategory">
                <div style="*background:#fff;">
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
<div class="list-group">
<a href="" class="list-group-item active" style="font-family:'comfortaa',arial;    font-size: 1.385em;font-weight: 700;"> Berita Terpopuler
</a>
 
<?php
foreach($terpopuler->result() as $row){
$judul=seo_link($row->judul);
$photopath = str_replace('-', '/', $row->tanggal_modif);
?>
<a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul."/";?>" class="list-group-item"><?php echo $row->judul; ?> <br>
<span style="font-weight:700;"><?php echo $row->dibaca; ?> kali dibaca</span>
</a> 
<?php } ?>   
</div>
</div>
 </div>