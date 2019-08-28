<?php $this->load->view("editor-plugin"); ?>

<?php 
if ($this->uri->segment(2,0)==null or $this->uri->segment(2,0)=="index") {
?> 
 <!-- Social Buttons CSS -->
    <link href="<?php echo base_url()?>style/bower_components/bootstrap-social/bootstrap-social.css" rel="stylesheet"> 
		 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Database Buku</h1>
                </div> 
            </div>
		<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
							<i class="fa fa-th-list fa-fw"></i> Database Buku, Jurnal, Majalah, Buletin
                        </div> 
                        <div class="panel-body">
<!--		 <form action="<?php echo base_url(); ?>buku/a_deleteall" method="POST">	-->	
	<?php echo form_open_multipart('buku/deleteall'); ?> 		 
						<br> 
					 <center> 
						<a class="btn btn-app btn-light btn-xs radius-4">
							<i class="ace-icon fa fa-home bigger-160"></i> Home
						</a>
						
						<a href="<?php echo base_url(); ?>buku/add" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-plus-circle bigger-160"></i> Add
						</a>
						
						<a href="<?php echo base_url(); ?>buku" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-refresh bigger-160"></i> Refresh
						</a>
						
						<button type="submit" class="btn btn-app btn-inverse btn-xs radius-4" style="width:140px;">
							<i class="ace-icon fa  fa-trash-o bigger-160"></i> Remove Selected
						</button>
						
						
						</center>
						<div class="clearfix"></div> 
						<br>
						
	<?php
    if (count($artikel)) { 
	?> 
	 <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th class="no" colspan="0" id="ck" title="Pilih Semua">  
									<input type="checkbox" id="selectall"></th>	
                                           <!-- <th width="30%">Judul</th>-->
											<th>Cover</th>
											<th>Identitas Buku</th>
											<th>Jenis Buku</th>
											<th>Aktif</th> 
											<th>Edit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	
	<?php
	$no=1; 
	foreach($artikel as $key => $row){ 
		$judul=seo_link($row['judul']);  
			$isi=strip_tags($row['deskripsi']);

	$isi=substr($isi,0,140); 
		
	?>
	   <tr class="odd">
			<td><?php echo $no; ?></td>
            <td><center><input type="checkbox" name="cek[]" class="case" value="<?php echo $row['id_buku']; ?>" id="id<?php echo $no; ?>" rel="ck" title="Pilih"></center></td>
			<td>
			<?	if ($row['gambar']!=''){
					$pathi=$row['tanggal_modif'];
					$pathi=str_replace("-","/",$pathi); ?> 
					<img src="<?php echo base_url(); ?>../foto_buku/<?php echo $pathi; ?>/small_<?php echo $row['gambar']; ?>" width="120">
			<?php } ?>
			</td>
            <td><a class="bold" href="<?php echo base_url(); ?>buku/edit/<?php echo $row['id_buku']."/".$judul."/";?>"><h4> <?php echo $row['judul']; ?> </h4></a>
			<b>Penulis: </b><?php echo $row['penulis']; ?>
			<b>Penyusun: </b><?php echo $row['penyusun']; ?>
			<br><b>Penerbit: </b><?php echo $row['penerbit']; ?>
			<br><b>Tahun Terbit:</b> <?php echo $row['tahun']; ?>
			<br><b>Deskripsi:</b> <?php echo $isi; ?>...
			</td> 
			<td><?php echo $row['nama_jenisbuku']; ?></td>
			<td>
			<?php if ($row['jangkrik']=='Y') {?>
				<a href="<?php echo base_url(); ?>buku/nonaktif/<?php echo $row['id_buku']."/".$judul."/";?>" class="btn btn-info btn-circle btn-lg"><i class="fa fa-check"></i> </a>
			<?php } else {?>
				<a href="<?php echo base_url(); ?>buku/aktif/<?php echo $row['id_buku']."/".$judul."/";?>" 	class="btn btn-warning btn-circle btn-lg"><i class="fa fa-times"></i> </a>
			<?php } ?> 
			</td>
            
            <td class="center">
				<a href="<?php echo base_url(); ?>buku/edit/<?php echo $row['id_buku']."/".$judul."/";?>" class="btn btn-block btn-social btn-dropbox">
					<i class="fa fa-pencil"></i> Edit
                </a> 
				
				<a href="<?php echo base_url(); ?>buku/delete/<?php echo $row['id_buku']."/".$judul."/";?>" class="btn btn-block btn-social btn-pinterest" onclick="return confirm('Apakah Anda benar-benar mau menghapusnya?')">
					<i class="fa fa-times"></i> Delete
				</a>
			</td>
		</tr>  
  <?php
    $no=$no+1;
	}
	?>
									</tbody>
                                </table>
                            </div>
							
							<div class="clear"></div>
 
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
	
	Maaf, Data Belum Tersedia
	
	<?php } ?>	 
	<?php echo form_close(); ?> 	
                        </div>
                        <!-- /.panel-body -->
                    </div> 
                </div> 
            </div> 
			 
		<?php
}
else if ($this->uri->segment(2,0)=='add') { 
        ?>
<?php 
	$tanggal=date('d-m-Y'); 
?> 
 

<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/css/bootstrap-datetimepicker.min.css'>

<script src='http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/js/bootstrap-datetimepicker.min.js'></script>

    <script src="<?php echo base_url()?>style/js/datepick.js"></script>
	
 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tambah Data Buku</h1>
                </div> 
            </div>
			
            <div class="row">
                <div class="col-lg-5">
                    <div class="panel panel-default">
                        <div class="panel-heading">
							<i class="fa fa-wrench fa-fw"></i> Tambah Data Buku 
                        </div> 
                        <div class="panel-body"> 
						 

<form method="POST" id="buku" name="buku" action="<?php echo base_url(); ?>buku/a_simpan"  enctype="multipart/form-data" onsubmit="return validasi(this)">		 
						<div class="aksi" style="border-bottom:1px solid #ccc; margin-bottom:20px; ">
						<center>
						<button type="submit" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-floppy-o bigger-160"></i> Save
						</button>
						
						<a href="<?php echo base_url(); ?>buku" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-times bigger-160"></i> Cancel
						</a>
						</center>
						<div class="clearfix"></div>
						</div>  
			<div style="border:1px solid #ec8585;background:#f2f2f2;border-radius:5px;padding:20px;margin-bottom:20px;">	 
						<div class="form-group">
						<label>Tanggal Posting</label> 
                <div class="input-group date" id="datetimepicker1" style="width:180px;" >
                    <input type="text" name="tanggal" class="form-control" value="<?php echo $tanggal; ?>" />
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
			<div class="form-group">
                                            <label>Publish Data Buku</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="aktif" id="optionsRadios1" value="Y" checked>Ya
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="aktif" id="optionsRadios2" value="N">Tidak
                                                </label>
                                            </div> 
                                        </div>
			</div>
			
			<div class="form-group">
								<label>Jenis Buku</label> 
								<select class="form-control"  name="jenis" id="jenis">
								<option value="0" selected>- Pilih -</option>
						<?php
						$dataa = $this->M_dataadmin->pilihjenisbuku(); 
						foreach($dataa->result_array() as $r) {
						?> 
<option  value="<?php echo $r['id_jenisbuku'];?>"><?php echo $r['nama_jenisbuku'];?></option>
						<?php } ?>			
                                </select>
							</div>
			
							
							<div class="form-group">
								<label>Judul</label> 
								<textarea class="form-control" rows="3"  name="judul" ></textarea> 
                                <!-- <p class="help-block">Example block-level help text here.</p> -->
							</div>
							<div class="form-group">
								<label>Penulis</label> 
								<input  class="form-control" type="text" name="penulis" value="">
                                <!-- <p class="help-block">Example block-level help text here.</p> -->
							</div>
							<div class="form-group">
								<label>Penyusun</label> 
								<input  class="form-control" type="text" name="penyusun" value="">
                                <!-- <p class="help-block">Example block-level help text here.</p> -->
							</div>
							<div class="form-group">
								<label>Penerbit</label> 
								<input  class="form-control" type="text" name="penerbit" value="">
                                <!-- <p class="help-block">Example block-level help text here.</p> -->
							</div>
					
							<div class="form-group">
								<label>Tahun Terbit</label> <br>
								<?php
								$thn_sekarang = date("Y");
								combothn2(1945,$thn_sekarang,'tahun',$thn_sekarang);
								?>
								 
							</div>
			<div class="clearfix"></div>
			
		
		
			
 								
						</div>
                        <!-- /.panel-body -->
                    </div> 
                </div> 
				
				<div class="col-lg-7">
                    <div class="panel panel-default">						
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> Informasi Lainnya
                        </div> 
                        <div class="panel-body">
						<div class="form-group">
								<label>Ketersediaan </label> 
								<input  class="form-control" type="text" name="ketersediaan" value="">
							</div> 
							<div class="form-group">
								<label>Deskripsi Buku </label> 
								<textarea class="form-control" rows="6"  id="loko" name="deskripsi" ></textarea> 
							</div> 
						<div class="form-group">
								<label>Pilih Cover Buku</label> 
								<input type="file" name="imagefile"> 
							</div>
							
							<div class="form-group">
                                            <label>Masukan Link Download (Jika Ada)</label>
                                           <input  class="form-control" type="text" name="link_file" value="">
                                        </div>
										
				  		 
							
		
							
							<div class="clearfix"></div>
						<div class="aksi" style="border-top:1px solid #ccc; margin-top:20px; ">
						<div class="clearfix"></div>
						<center>
						<button type="submit" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-floppy-o bigger-160"></i> Save
						</button>
						
						<a href="<?php echo base_url(); ?>buku" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-times bigger-160"></i> Cancel
						</a>
						</center>
						</div>  
						<?php echo form_close(); ?>	
                        </div> 
                    </div> 
                </div>
				
				 
		<?
		}
else if ($this->uri->segment(2,0)=='edit') { 
        ?>
 	  
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/css/bootstrap-datetimepicker.min.css'>

<script src='http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/js/bootstrap-datetimepicker.min.js'></script>

    <script src="<?php echo base_url()?>style/js/datepick.js"></script>
	
 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Edit Data Buku</h1>
                </div> 
            </div>
			
            <div class="row">
                <div class="col-lg-5">
                    <div class="panel panel-default">
                        <div class="panel-heading">
							<i class="fa fa-wrench fa-fw"></i>Edit Data Buku 
                        </div> 
                        <div class="panel-body"> 
					 
	<form method="POST" id="buku" name="buku" action="<?php echo base_url(); ?>buku/a_edit"  enctype="multipart/form-data" onsubmit="return validasi(this)">					
		<?php
		$edit = $this->M_dataadmin->editbuku($this->uri->segment(3,0)); 
		foreach($edit->result_array() as $raw)
		{
		$photopath = str_replace('-', '/', $raw['tanggal_modif']);   
		$a=substr($raw['tanggal'], 0,4);
		$b=substr($raw['tanggal'], 5,2);
		$c=substr($raw['tanggal'], 8,9);
		$tanggal=$c.'-'.$b.'-'.$a;

		?>
						<input type="hidden" name="id" value="<?php echo $raw['id_buku']; ?>">  
						<div class="aksi" style="border-bottom:1px solid #ccc; margin-bottom:20px; ">
						<center>
						<button type="submit" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-floppy-o bigger-160"></i> Save
						</button>
						
						<a href="<?php echo base_url(); ?>buku" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-times bigger-160"></i> Cancel
						</a>
						</center>
			<div class="clearfix"></div>
						</div>  
			<div style="border:1px solid #ec8585;background:#f2f2f2;border-radius:5px;padding:20px;margin-bottom:20px;">	 
						<div class="form-group">
						<label>Tanggal Posting</label> 
                <div class="input-group date" id="datetimepicker1" style="width:180px;" >
                    <input id="disabledInput" type="text" name="tanggal" class="form-control" value="<?php echo $tanggal; ?>" disabled>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
			<div class="form-group">
            <label>Publish Data Buku</label>
		<?php if ($raw['aktif']=='Y'){?>
			<div class="radio"> <label> <input type="radio" name="aktif" id="aktifradios1" value="Y" checked>Ya </label> </div>
			<div class="radio"> <label> <input type="radio" name="aktif" id="aktifradios2" value="N">Tidak </label> </div> 
		<?php } else {?>
			<div class="radio"> <label> <input type="radio" name="aktif" id="aktifradios1" value="Y">Ya </label> </div>
			<div class="radio"> <label> <input type="radio" name="aktif" id="aktifradios2" value="N" checked>Tidak </label> </div> 
		<?php } ?> 
            </div>
			</div>
			<div class="form-group">
								<label>Jenis Buku</label> 
								<select class="form-control"  name="jenis" id="jenis"> 
						<?php
						$dataa = $this->M_dataadmin->pilihjenisbuku(); 
						if ($raw['id_jenisbuku']==0){
						echo "<option value=0 selected>- Pilih -</option>";
						}   
						foreach($dataa->result_array() as $raaw) { 
						if ($raw['id_jenisbuku']==$raaw['id_jenisbuku']){ ?>
							<option  value="<?php echo $raaw['id_jenisbuku'];?>" selected><?php echo $raaw['nama_jenisbuku'];?></option>
						<?php } else {?>
							<option  value="<?php echo $raaw['id_jenisbuku'];?>"><?php echo $raaw['nama_jenisbuku'];?></option>
						<?php }
						}
						?>
                                </select>
							</div>
							
			<div class="form-group">
				<label>Judul</label> 
				<textarea class="form-control" rows="3"  name="judul" ><?php echo $raw['judul']; ?></textarea> 
			</div>
			<div class="form-group">
	<label>Penulis </label> 
	<input  class="form-control" type="text" name="penulis" value="<?php echo $raw['penulis']; ?>"> 
</div>
<div class="form-group">
	<label>Penyusun </label> 
	<input  class="form-control" type="text" name="penyusun" value="<?php echo $raw['penyusun']; ?>"> 
</div>
<div class="form-group">
	<label>Penerbit </label> 
	<input  class="form-control" type="text" name="penerbit" value="<?php echo $raw['penerbit']; ?>"> 
</div>

<div class="form-group">
				<label>Tahun Terbit</label> <br>
				<?php
								$thn_sekarang = date("Y");
								combothn2(1945,$thn_sekarang,'tahun',$raw['tahun']);
								//combothn2($thn_sekarang-70,$thn_sekarang+2,'thn_lahir',$get_thn2);
								?>
			</div>
			
               
            </div> 	
            </div> 	
            </div> 	
			
			
<div class="col-lg-7">
                    <div class="panel panel-default">						
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> Informasi Lainnya
                        </div> 
                        <div class="panel-body">
						<div class="form-group">
								<label>Ketersediaan </label> 
								<input  class="form-control" type="text" name="ketersediaan" value="<?php echo $raw['ketersediaan']; ?>">
							</div> 
							<div class="form-group">
								<label>Deskripsi Buku </label> 
								<textarea class="form-control" rows="6"  id="loko" name="deskripsi" ><?php echo $raw['deskripsi']; ?></textarea> 
							</div> 
						<div class="form-group">
								<label>Cover Saat Ini </label> 
								<? 
								if ($raw['gambar']!=''){
									$pathi=$raw['tanggal_modif'];
									$pathi=str_replace("-","/",$pathi); ?> 
									<img src="<?php echo base_url(); ?>../foto_buku/<?php echo $pathi; ?>/small_<?php echo $raw['gambar']; ?>" width="30%">
								<?php } ?><br><br>
								<input type="file" name="imagefile"> 
							</div>
							
							<div class="form-group">
                                            <label>Masukan Link Download (Jika Ada)</label>
                                           <input  class="form-control" type="text" name="link_file" value="<?php echo $raw['link_file']; ?>">
                                        </div>
										
				  		 
							
		
							
							<div class="clearfix"></div>
						<div class="aksi" style="border-top:1px solid #ccc; margin-top:20px; ">
						<div class="clearfix"></div>
						<center>
						<button type="submit" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-floppy-o bigger-160"></i> Save
						</button>
						
						<a href="<?php echo base_url(); ?>buku" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-times bigger-160"></i> Cancel
						</a>
						</center>
						</div>  
						<?php echo form_close(); ?>	
                        </div> 
                    </div> 
                </div>	
		<? }
} 
?>
 