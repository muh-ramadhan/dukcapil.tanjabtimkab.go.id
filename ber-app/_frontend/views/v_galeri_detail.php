<!-- Site content -->
<div id="site-content">
	<div id="page-header">
		<div class="container">
			<div class="row">
				<div class="page-title">
					<h2><?php echo $judulan; ?></h2>
				</div>
				<div id="page-breadcrumbs">
					<nav class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items">
							<li class="trail-item trail-begin">Tanggal Kegiatan : <?php $tanggal = $this->M_data->tanggalalbum($this->uri->segment(3, 0));
																					echo tgl_indo($tanggal); ?></li>
						</ul>
					</nav>
				</div>
			</div><!-- /.row -->
		</div><!-- /.container -->
	</div><!-- /#page-header -->
	<div id="page-body">
		<div class="flat-row pad-top0px pad-bottom80px">
			<div class="container">
				<div class="row">
					<?php

					foreach ($detail_album->result() as $row) {
						$photopath = str_replace('-', '/', $row->tanggal_modif);
						?>
						<div class="col-md-3">
							<div class="image-gallery">
								<a class="popup-gallery" href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/<?php echo $row->gbr_gallery; ?>">
									<img src="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" alt="images">
								</a>
							</div><!-- /.image-gallery -->
						</div><!-- /.col-md-3 -->
					<?php	} ?>
					<?php
					$id = $row->id_fotoberita;
					$ip_addr = $this->input->ip_address();
					$data = array('dibaca' => $row->dibaca + 1);
					$where = "id_album = '" . $this->uri->segment(3, 0) . "'";
					$str = $this->db->update('album', $data, $where);
					?>

				</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /.flat-row -->
	</div><!-- /.page-body -->

</div><!-- /#site-content -->