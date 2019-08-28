 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Kata Sambutan</h1>
                </div> 
            </div>
			
            <div class="row">
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
							<i class="fa fa-wrench fa-fw"></i> Kata Sambutan 
                        </div> 
                        <div class="panel-body">  
						 
<?php echo form_open_multipart('sambutan/a_simpan'); ?>	 						
		<?php 
		$dataa = $this->M_dataadmin->sambutan(); 
		foreach($dataa->result_array() as $raw) {
		?>		
						
						<div class="aksi" style="border-bottom:1px solid #ccc; margin-bottom:20px; ">
						<center>
						<a class="btn btn-app btn-light btn-xs radius-4">
							<i class="ace-icon fa fa-home bigger-160"></i> Home
						</a>
						
						<button type="submit" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-floppy-o bigger-160"></i> Save
						</button>
						
						<a href="<?php echo base_url(); ?>sambutan" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-refresh bigger-160"></i> Refresh
						</a>
						</center>
						<div class="clearfix"></div>
						</div> 
						
						
			
<input type="hidden" name="id" value="<?php echo $raw['id_sambutan']; ?>"> 
	<div class="form-group">
		<label>Judul</label> 
		<input  class="form-control" type="text" name="judul" value="<?php echo $raw['judul'];?>">
	</div> 
	
	<div class="form-group">
		<label>Isi Sambutan</label> 
		<textarea class="form-control"  name="isi"  rows="6"><?php echo $raw['isi_sambutan'];?></textarea>  
	</div>
	 <div class="form-group">
								<label>Nama - Jabatan</label> 
								<textarea class="form-control"  name="nama"  rows="2"><?php echo $raw['nama'];?></textarea> 
							</div>						
	<div class="form-group">
		<label>Link</label> 
		<textarea class="form-control"  name="link"  rows="2"><?php echo $raw['link'];?></textarea> 
	</div>
</div> 
</div>
                   
               
                </div> 
			  
				
				<div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> Foto Sambutan
                        </div> 
                        <div class="panel-body">
                            <div class="form-group">
								<label>Foto</label> 
								<? 
								if ($raw['gambar']!=''){ ?> 
									<img src="<?php echo base_url(); ?>../images/<?php echo $raw['gambar']; ?>" width="100%">
								<?php } ?>
	<p class="help-block"><i>Ukuran Max 400 x 400px</i></p> <br> <br>
								<input type="file" name="imagefile"> 
							</div>
							
						<center>
			<?php
		}
			?>			
						<div class="aksi" style="border-top:1px solid #ccc; margin-bottom:20px; ">
						<br>
						<button type="submit" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-floppy-o bigger-160"></i> Save
						</button>
						</div> 
						</center>
						<!-- e:simpan -->
		<?php echo form_close(); ?> 					
                        </div> 
                    </div> 
                </div>
               
            </div>
            <!-- /.row -->