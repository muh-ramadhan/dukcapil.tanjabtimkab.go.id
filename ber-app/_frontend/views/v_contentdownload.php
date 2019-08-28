<div class="content grid_9 allberita marked-category">
	<div class="single-page">
<div class="box-single-content clearfix">
 <div class="breadcrumb"> 
	<a href="<?php echo base_url(); ?>">Beranda </a>/   File Download
</div>
  
<h1>File Dowload</h1>
<p class="rs post-by"><?php echo $postingby; ?></p>
 

<?php if ($artikel) {	?>
<div id="no-more-tables" style="*padding:15px;margin:0 auto;">
            <table class="col-md-12 table-bordered table-striped table-condensed cf" style="margin-bottom:15px;">
<thead class="cf">
 
<tr bgcolor="#F2F2F2" align="left">
		<th width="4% !important">No</th>
		<th width="15% !important">Judul File</th> 
		<th width="8% !important">Tanggal Upload</th>
		<th width="20% !important">Keterangan</th>
		<th width="8% !important"><center>Download</center></th>
</tr>
        		</thead>
        		<tbody>	
	<?php
if (!is_numeric($this->uri->segment(4))){ $no=1;	}
	else {
		$no=1;
	}
foreach($artikel as $key => $row){	
//foreach($artikel  as $row){
	if($no%2 == 0) {
	$background='#FCFCFC';
	}
	else {
	$background='#fff';
	}
	$judul=seo_link($row['judul']);	 
	?>
	<tr class="ok" bgcolor="<?php echo $background; ?>">
<td data-title="No"><?php echo $no; ?></td>
<td  data-title="Judul File"> <b><?php echo $row['judul'];?></b> <br> </td>
 
<td align="center" data-title="Tanggal Upload">
<?php
 $tanggal=$row['tgl_posting'];
  echo nama_hari($tanggal).', ';
echo tgl_indo($tanggal);

?>
</td>
<td align="center"  data-title="Keterangan"><?php echo $row['keterangan']; ?> </td>
<td align="center"  data-title="Download">
<?php if ($row['metode_link']==1) { 
$photopath = str_replace('-', '/', $row['tanggal_modif']);
?> 
<a href="<?php echo base_url(); ?>file/<?php echo $photopath; ?>/<?php echo $row['nama_file'];?>" target="_blank"><b>Download</b>
<?php
$file="./file/$photopath/$row[nama_file]";
//$file=base_url()."file/".$row['nama_file'];
$sizefile= size($file);
echo "[$sizefile]";
?>

</a>
<?php } else { ?> 
<a href="<?php echo $row['link_file']; ?>" target="_blank"><b>Download</b></a>
<?php } ?> 
</td>
	</tr> 
  <?php 
  $no++;
  } 
  ?> 
	</tbody>
</table>  
</div>
 
		   
  <br> 
<div class="clearfix"></div>
	<center>
		  <div class="pagination">
		<ul class="tsc_pagination">
		<?php echo $pagination; ?>
		</ul>
		</div>
	 </center>
		<?php } 
		else {?>
		Maaf !, Data Belum Tersedia
		<?php } 
		?>
		
  </div>
   </div> </div>