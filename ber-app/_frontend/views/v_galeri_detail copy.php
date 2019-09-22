<div class="home-popular-project galeris">
	<div class="sidebar">
		<h4>Galeri Kegiatan</h4> <a class="be-fc-orange" href="<?php echo base_url(); ?>galeri">+ Lihat Semua Kegiatan </a>
	</div>
	<div class="clearfix"></div>
	<center>
		<h3 class="rs single-title"><?php echo $judulan; ?></h3>
	</center>
	<center>
		<p>Tanggal Kegiatan: <b><?php

								$tanggal = $this->M_data->tanggalalbum($this->uri->segment(3, 0));
								echo tgl_indo($tanggal);
								?></b></p>
	</center>
	<center>
		<p><?php echo $keterangan; ?></p>
	</center>
	<?php

	foreach ($detail_album->result() as $row) {
		$photopath = str_replace('-', '/', $row->tanggal_modif);
		?>
		<div class="col4 others">
			<div class="project-short sml-thumb">
				<div class="content-info-short clearfix">
					<a href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/<?php echo $row->gbr_gallery; ?>" title="<?php echo $row->keterangan; ?>" class="example-image-link thumb-img" data-lightbox="example-set">
						<div class="thumb-news3 example-image" data-original="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" style="background-image: url('<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>')"></div>
					</a>
					<div class="clearfix"></div>
					<div class="wrap-short-detail">
						<p class="rs title-description" style="color: #000;"><?php echo $row->keterangan; ?></p>
						<p class="rs project-location" style="*border-top:1px solid #ccc;padding-top:5px;">
							[Klik/tap untuk Detail]
						</p>
					</div>
				</div>
			</div>
		</div>
	<?php	} ?>
	<?php
	$id = $row->id_fotoberita;
	$ip_addr = $this->input->ip_address();
	$data = array('dibaca' => $row->dibaca + 1);
	$where = "id_album = '" . $this->uri->segment(3, 0) . "'";
	$str = $this->db->update('album', $data, $where);
	?>
</div>
<script src="<?php echo base_url(); ?>style/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>