<?php if ($this->uri->segment(1, 0) == 'pengumuman' and ($this->uri->segment(2, 0) == null or $this->uri->segment(2, 0) == "index")) { ?>
	<style>
		.button2 {
			background-color: #008CBA;
		}

		#customers {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}

		#customers td,
		#customers th {
			border: 1px solid #ddd;
			padding: 8px;
		}

		#customers tr:nth-child(even) {
			background-color: #f2f2f2;
		}

		#customers tr:hover {
			background-color: #ddd;
		}

		#customers th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: left;
			background-color: #4CAF50;
			color: white;
		}
	</style>


	<div id="site-content">
		<div id="page-header">
			<div class="container">
				<div class="row">
					<div class="page-title">
						<h2 class="title">Pengumuman</h2>
					</div>
					<div id="page-breadcrumbs">
						<nav class="breadcrumb-trail breadcrumbs">
							<ul class="trail-items">
								<li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>">Home</a></li>
								<li class="trail-item trail-end"><a href="<?php echo base_url(); ?>pengumuman">Pengumuman</a></li>
							</ul>
						</nav>
					</div>
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /#page-header -->

		<div id="page-body">
			<div class="container">
				<div class="row">
					<div class="blog">
						<div class="main-content">
							<?php if (count($artikel)) { ?>
								<article class="post">
									<table id="customers">
										<thead>
											<tr>
												<th width="20%">Tanggal Pengumuman</th>
												<th width="80%">Pengumuman</th>
											</tr>
										</thead>
										<tbody>
											<?php $no = 1;
													foreach ($artikel as $key => $row) {
														$isi = strip_tags($row['isi_pengumuman']);
														$isi = substr($isi, 0, 170);
														$judul = seo_link($row['judul']);
														$tahunp = substr($row['tanggal_pengumuman'], 0, 4);
														$bulanp = substr($row['tanggal_pengumuman'], 6, 8);
														$tanggalp = substr($row['tanggal_pengumuman'], 8, 10);
														if ($no % 2 == 0) {
															$background = '#FCFCFC';
														} else {
															$background = '#fff';
														} ?>
												<tr>
													<td style="text-align: center;">
														<?php echo $tanggalp; ?> <?php echo bulan($bulanp); ?> <?php echo $tahunp; ?>
														<a href="<?php echo base_url(); ?>pengumuman/detail/<?php echo $row['id_pengumuman'] . "/" . $judul . "/"; ?>" class="button button2">Detail</a>
													</td>
													<td>
														<a href="<?php echo base_url(); ?>pengumuman/detail/<?php echo $row['id_pengumuman'] . "/" . $judul . "/"; ?>">
															<b><?php echo $row['judul']; ?></b>
														</a>
														<br>
														<?php echo $isi; ?>...
														<br><br>
													</td>
												</tr>
											<?php $no++;
													} ?>
										</tbody>
									</table>
								</article><!-- /.post -->
								<!-- MULAI NAVIGASI -->
								<?php echo $pagination; ?>
								<!-- SELESAI NAVIGASI -->
							<?php } else { ?>
								<h4>Maaf, Data Belum Tersedia !</h4>
							<?php } ?>
						</div><!-- /.main-content -->
						<!--
							<div class="wrap-title redborder clearfix">
								<h2 class="title-mark rs">Berita <span class="fc-orange">Terkini</span></h2>
								<a href="category.html" class="count-project be-fc-orange">View <span class="fw-b">Indeks</span> </a>
							</div>
							<?php
								$no = 1;
								$beritaterbaru = $this->M_data->beritaterbaru(5);
								foreach ($beritaterbaru->result() as $row) {
									$isi = strip_tags($row->isi_berita);
									$isi = substr($isi, 0, 170);
									$judul = seo_link($row->judul);
									$photopath = str_replace('-', '/', $row->tanggal_modif);
									$tanggal = $row->tanggal;
									if ($row->gambar != '') {
										$gambar = base_url() . "foto_berita/" . $photopath . "/small_" . $row->gambar;
									} else {
										$gambar = base_url() . "foto_berita/image-default.jpg";
									} ?>
									<div class="content-info-short clearfix">
										<a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita . "/" . $judul . "/"; ?>" class="thumb-img">
										<div class="thumb-news1" data-original="<?php echo $gambar; ?>" style="background-image: url('<?php echo $gambar; ?>')">
									</div>   
								</a>
								<div class="wrap-short-detail">
									<h3 class="rs acticle-title"><a class="be-fc-orange" href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita . "/" . $judul . "/"; ?>"><?php echo $row->judul; ?></a></h3>
									<p class="rs tiny-desc"><?php echo nama_hari($tanggal) . ', '; ?> <span class="fw-b fc-gray"><?php echo tgl_indo($tanggal) . ' | ';
																																			echo $row->jam . ' WIB '; ?></span></p>
									<p class="rs title-description"><?php echo $isi; ?>...</p>
								</div> 
							</div> 
<?php $no = $no + 1;
	} ?>
-->
						<!-- MULAI SIDEBAR -->
						<?php $this->load->view($vkanan); ?>
						<!-- SELESAI SIDEBAR -->

					</div><!-- /.blog -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /.page-body -->
	</div><!-- /#site-content -->


<?php } elseif ($this->uri->segment(1, 0) == 'pengumuman' and $this->uri->segment(2, 0) == 'detail') { ?>

	<?php if (count($detail_pengumuman)) {
			foreach ($detail_pengumuman as $row) {
				//$tanggal=$row->tanggal;
				//$photopath = str_replace('-', '/', $row->tanggal_modif);
				//$judul=seo_link($row->nama_kategori); 
				?>

			<div id="site-content">
				<div id="page-header">
					<div class="container">
						<div class="row">
							<div class="page-title">
								<h2 class="title">Detail Pengumuman</h2>
							</div>
							<div id="page-breadcrumbs">
								<nav class="breadcrumb-trail breadcrumbs">

									<ul class="trail-items">
										<li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>">Home</a></li>
										<li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>pengumuman">Pengumuman</a></li>
									</ul>
								</nav>
							</div>
						</div><!-- /.row -->
					</div><!-- /.container -->
				</div><!-- /#page-header -->
				<div id="page-body">
					<div class="container">
						<div class="row">
							<div class="blog-single">
								<div class="main-content">
									<article class="post">
										<div class="entry-wrapper">

											<!-- MULAI TAMPILKAN FOTO
										CATATAN : Belum Selesai

											<div class="entry-cover">
												<a href="blog-single.html">
													<?php if ($row->gambar != '') { ?>
														<img src="<?php echo base_url(); ?>foto_berita/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>" alt="images">
												</a>
												<div style="padding:10px 0;color:#6f777a;border-bottom:1px solid #ccc;font-style:italic;margin:0;"><?php echo $row->text_foto; ?></div>
											<?php } ?>
											</div>
											HAPUS KOMENTAR INI JIKA SUDAH -->

											<div class="entry-header">
												<span class="entry-time" style="background-color: #0263d4;">
													<?php $tanggal = $row->tanggal;
																echo nama_hari($tanggal) . ', ';
																echo tgl_indo($tanggal) . ' | ';
																echo $row->jam . ' WIB '; ?>
												</span>
												<h2 class="entry-title"><?php echo $row->judul; ?></h2>
												<div class="entry-meta">
													<span class="entry-comments-link" style="color: #f00;">Dibaca: <?php echo $row->dibaca; ?> Kali</span>
												</div><!-- /.entry-meta -->
											</div><!-- /.entry-header -->
											<div class="entry-content">
												<p><?php echo $row->isi_pengumuman; ?></p>
												<?php
															$data = array('dibaca' => $row->dibaca + 1);
															$where = "id_pengumuman = '" . $row->id_pengumuman . "'";
															$str = $this->db->update('pengumuman', $data, $where);
															?>
												<?php
															//$tampil=mysql_query("SELECT * FROM download ORDER BY id_download desc");
															$this->db->select('*');
															$this->db->order_by('id_download', 'desc');
															$this->db->from('download');
															$query = $this->db->get();
															echo "<div class='filependukung'>
															<h3>FILE PENDUKUNG</h3>";
															if ($row->file3 == 0 and $row->file2 == 0 and $row->file1 == 0) {
																echo " Tidak Ada File ";
															} else {
																foreach ($query->result_array() as $w) {
																	//					while($w=mysql_fetch_array($tampil)){
																	if ($row->file3 == $w['id_download']) {
																		if ($w['metode_link'] == 1) {
																			$photopath = str_replace('-', '/', $w['tanggal_modif']);
																			$file = "./file/" . $photopath . "/" . $w['nama_file'];
																			$sizefile = size($file);
																			echo "- <a href='./file/" . $photopath . "/" . $w['nama_file'] . "' target='_blank'>" . $w['judul'] . " </a> [" . $sizefile . "]<br>";
																		} else {
																			echo "- <a href='" . $w['link_file'] . "'>" . $w['judul'] . "</a><br>";
																		}
																	}
																	if ($row->file2 == $w['id_download']) {
																		if ($w['metode_link'] == 1) {
																			$photopath = str_replace('-', '/', $w['tanggal_modif']);
																			$file = "./file/" . $photopath . "/" . $w['nama_file'];
																			$sizefile = size($file);
																			echo "- <a href='./file/" . $photopath . "/" . $w['nama_file'] . "' target='_blank'>" . $w['judul'] . " </a> [" . $sizefile . "]<br>";
																		} else {
																			echo "- <a href='" . $w['link_file'] . "'>" . $w['judul'] . "</a><br>";
																		}
																	}
																	if ($row->file1 == $w['id_download']) {
																		if ($w['metode_link'] == 1) {
																			$photopath = str_replace('-', '/', $w['tanggal_modif']);
																			$file = "./file/" . $photopath . "/" . $w['nama_file'];
																			$sizefile = size($file);
																			echo "- <a href='./file/" . $photopath . "/" . $w['nama_file'] . "' target='_blank'>" . $w['judul'] . " </a> [" . $sizefile . "]<br>";
																		} else {
																			echo "- <a href='" . $w['link_file'] . "'>" . $w['judul'] . "</a><br>";
																		}
																	} else {
																		echo "";
																	}
																}
															}
															echo "</div>"; ?>
											</div><!-- /.entry-content -->
										</div><!-- /.entry-wrapper -->
									</article><!-- /.post -->
								</div><!-- /.main-content -->
								<!-- MULAI SIDEBAR -->
								<?php $this->load->view($vkanan); ?>
								<!-- SELESAI SIDEBAR -->
							</div><!-- /.blog -->
						</div><!-- /.row -->
					</div><!-- /.container -->

				<?php
							$id = $row->id_pengumuman;
							$ip_addr = $this->input->ip_address();
						}

						$data = array('dibaca' => $row->dibaca + 1);
						$where = "id_pengumuman = '" . $row->id_pengumuman . "'";
						$str = $this->db->update('pengumuman', $data, $where);
					} else { ?>
				! Maaf Data Belum Tersedia<br><br><br>
			<?php } ?>
				</div><!-- /.page-body -->
			</div><!-- /#site-content -->
		<?php } ?>