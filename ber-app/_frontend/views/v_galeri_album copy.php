<div class="home-popular-project galeris">

	<div class="sidebar">
		<h4>Galeri Kegiatan</h4> <a class="be-fc-orange" href="<?php echo base_url(); ?>galeri">+ Lihat Semua Kegiatan </a>
	</div>
	<div class="clearfix"></div>

	<?php

	if (count($artikel)) {

		foreach ($artikel  as $row) {
			$isi = strip_tags($row['keterangan']);
			$isi = substr($isi, 0, 140);
			$judul = seo_link($row['judul_fotoberita']);
			$photopath = str_replace('-', '/', $row['tanggal_modif']);
			$a = substr($row['tanggal'], 0, 4);
			$b = substr($row['tanggal'], 5, 2);
			$c = substr($row['tanggal'], 8, 9);
			$tanggal = $c . '/' . $b . '/' . $a;
			?>
			<div class="col4 others">
				<div class="project-short sml-thumb">
					<div class="content-info-short clearfix" style="padding:0;">
						<a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row['id_fotoberita']; ?>/<?php echo seo_link($row['judul_fotoberita']); ?>" class="thumb-img">
							<div class="thumb-news3" data-original="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row['gbr_gallery']; ?>" style="background-image: url('<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row['gbr_gallery']; ?>')"></div>

						</a>
						<div class="clearfix"></div>
						<div class="wrap-short-detail">
							<h3 class="rs acticle-title" style="border-bottom: 2px solid #DA7603;"><a class="be-fc-orange" href="<?php echo base_url(); ?>galeri/detail/<?php echo $row['id_fotoberita']; ?>/<?php echo seo_link($row['judul_fotoberita']); ?>"><?php echo $row['judul_fotoberita']; ?></a></h3>
							<p class="rs tiny-desc">Date <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row['id_fotoberita']; ?>/<?php echo seo_link($row['judul_fotoberita']); ?>" class="fw-b fc-gray be-fc-orange"><?php echo $tanggal; ?></a></p>
							<p class="rs title-description"><?php echo $isi; ?></p>

							<p class="rs project-location" style="border-top:1px solid #ccc;padding-top:5px;">
								<i class="icon iLocation"></i>
								<?php echo $row['jumlah']; ?> Foto

							</p>

						</div>
					</div>
				</div>
			</div>
		<?php
			}
			?>
		<div class="clearfix"></div>

		<center>
			<div class="pagination">
				<ul class="tsc_pagination">
					<?php echo $pagination; ?>
				</ul>
			</div>
		</center>
		<br>
	<?php

	} else {
		?>
		<h4>Maaf, Data Belum Tersedia !</h4>
	<?php

	}
	?>
</div>