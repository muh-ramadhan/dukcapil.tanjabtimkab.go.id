<div class="sidebars">
	<div class="sidebar">

		<!-- MULAI PENCARIAN -->
		<div class="widget widget_search">
			<form class="search-form">
				<input type="search" class="search-field" placeholder="Search …">
				<input type="submit" class="search-submit">
			</form>
		</div>
		<!-- SELESAI PENCARIAN -->

		<!-- MULAI PROFIL --->
		<div class="widget widget_recent_entries">
			<h3 class="widget-title"><span>P</span>rofil Instansi</h3>
			<ul>
				<?php
				$menu = $this->M_data->ambilsubmenu(2, 3);
				foreach ($menu->result() as $row) {
					?>
					<li>
						<a href="<?php echo base_url();
										echo $row->link_submenu; ?>"><?php echo $row->nama_submenu; ?> </a>
					</li>
				<?php } ?>
			</ul>
		</div>
		<!-- SELESAI PROFIL -->

		<!-- MULAI POLLING -->
		<div class="widget widget_recent_entries">
			<h3 class="widget-title"><span>B</span>erita Terpopuler</h3>
			<ul>
				<?php
				$beritaterbaru = $this->M_data->beritaterbaru(5);
				foreach ($beritaterbaru->result() as $row) {
					$judul = seo_link($row->judul);
					$photopath = str_replace('-', '/', $row->tanggal_modif);
					?>
					<li>
						<a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita . "/" . $judul . "/"; ?>"><?php echo $row->judul; ?></a>
						<span class="post-date">
							<?php
								$tanggal = $row->tanggal;
								echo tgl_indo($tanggal);
								?></span>
					</li>
				<?php } ?>
			</ul>
		</div>
		<!-- SELESAI POLLING -->

		<!-- MULAI MODUL IKLAN -->
		<div class="widget widget_text">
			<div class="textwidget">
				<h4>Judul Iklan</h4>
				<p>Test Iklan</p>
				<a href="#" class="button white">Tombol Klik Iklan</a>
			</div>
		</div>
		<!-- SELESAI MODUL IKLAN -->

	</div><!-- /.sidebar -->
</div><!-- /.sidebars -->