<div class="box-single-content clearfix" id="pagehead">

<div class="pagehead-action-bar clearfix">
	<ul class="action-buttons clearfix">
		<li><a href="#" class="share">Share</a></li>
		<li><a href="#" class="print">Print</a></li>
	</ul> 
	<ul class="cookie-crumbs"> 
		<li> <a href="<?php echo base_url(); ?>">Home</a></li> 
		<li> <a href="<?php echo base_url(); ?>weblinks">Weblinks</a> </li>
	</ul> 
</div> 
<br>  
<h1><?php echo $judulan; ?></h1>
<p class="rs post-by"><?php echo $postingby; ?></p><br>
<?php
    if (count($artikel)) { 
	?>
<div id="no-more-tables" style="*padding:15px;margin:0 auto;">
            <table class="col-md-12 table-bordered table-striped table-condensed cf" style="margin-bottom:15px;">
<thead class="cf"> 
<tr bgcolor="#F2F2F2" align="left">
		<th width="4% !important">No</th>
		<th width="25% !important">File</th> 
		<th width="16% !important"><center>Tgl. Upload</center></th> 
		<th width="40% !important"><center>Link Download</center></th>
</tr>
        		</thead>
        		<tbody>	
	<?php
	if ($this->uri->segment(4)!=null) {
		$no=15*($this->uri->segment(4)-1)+1;
	}
	else {
		$no=1;
	}	
foreach($artikel  as $row){
	if($no%2 == 0) {
	$background='#FCFCFC';
	}
	else {
	$background='#fff';
	}
	$judul=seo_link($row['judul']);	 
	 $photopath = str_replace('-', '/', $row['tanggal_modif']);
	?>
	<tr class="ok" bgcolor="<?php echo $background; ?>">
<td data-title="No"><?php echo $no; ?></td>
<td  data-title="File"><b><?php echo $row['judul'];?></b><br><br><div style="color:#666;font-size:15px;">
<?php echo $row['keterangan'];?></div>  </td> 
<td align="center"  data-title="Tgl Upload">

<?php
 $tanggal=$row['tgl_posting'];
  echo nama_hari($tanggal).', ';
echo tgl_indo($tanggal);

?>
</td>
<td align="center"  data-title="Download">
<?php if ($row['metode_link']==1) { ?> 
<a href="<?php echo base_url(); ?>file/<?php echo $photopath; ?>/<?php echo $row['nama_file'];?>" target="_blank"><b>Download</b> 
<?php
$file="./file/".$photopath."/".$row[nama_file];
//$file=base_url()."download/".$row['nama_file'];
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
<div class="clearfix"></div>
	<center>
		  <div class="pagination">
		<ul class="tsc_pagination">
		<?php echo $pagination; ?>
		</ul>
		</div>
	 </center>
  <?php
  }
else {
  ?>
<h4 >Maaf, Data Belum Tersedia !</h4>
<?php
}
?>
</div>

   
 
  