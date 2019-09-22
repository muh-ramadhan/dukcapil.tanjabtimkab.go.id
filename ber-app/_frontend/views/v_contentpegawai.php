<?php if ($this->uri->segment(2, 0) == 'index') { ?>
	<div id="site-content">
		<div id="page-header">
			<div class="container">
				<div class="row">
					<div class="page-title">
						<h2 class="title">Team Member</h2>
					</div>
					<div id="page-breadcrumbs">
						<nav class="breadcrumb-trail breadcrumbs">
							<h2 class="trail-browse">You are here:</h2>
							<ul class="trail-items">
								<li class="trail-item trail-begin"><a href="#">Home</a></li>
								<li class="trail-item trail-end">Team Member</li>
							</ul>
						</nav>
					</div>
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /#page-header -->

		<div id="page-body">
			<div class="flat-row pad-top0px pad-bottom60px">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="flat-member-carousel" data-item="4" data-nav="true" data-dots="true" data-auto="true">
								<?php
									if (count($artikel)) {
										foreach ($artikel  as $row) {
											$photopath = str_replace('-', '/', $row['tgl_modif']);
											$seo = seo_link($row['nama_pegawai']);
											?>
										<div class="member">
											<div class="member-image">
												<a href="<?php echo base_url(); ?><?php echo $this->uri->segment(1, 0) ?>/detail/<?php echo $row['id_pegawai']; ?>/<?php echo $seo; ?>">
													<?php if ($row['gambar'] != '') { ?>
														<img style="width: 270px; height: 208px;" src="<?php echo base_url(); ?>foto_pegawai/<?php echo $photopath; ?>/<?php echo $row['gambar']; ?>" alt="images">
													<?php } else { ?>
														<img style="width: 270px; height: 208px;" src="<?php echo base_url(); ?>style/images/profile.jpg" alt="images">
													<?php } ?>
												</a>
											</div>
											<div class="member-info">
												<h3 class="member-name"><?php echo $row['nama_pegawai']; ?> </h3>
												<div class="member-subtitle"><?php echo $row['nama_jabatanpegawai']; ?></div>
												<div class="member-desc">
													<p>Pangkat/Golongan : <br><b><?php echo $row['pangkat']; ?> - <?php echo $row['gol_ruang']; ?></b></p>
													<p>Jenis Kelamin : <br><b>
															<?php if ($row['kelamin'] == 'L') { ?>
																Laki-laki
															<?php } else { ?>
																Perempuan
															<?php }  ?></b>
													</p>
													<p>TTL : <br><b><?php if ($row['tempat'] == '') { ?>
																-
															<?php } else {
																			echo $row['tempat'];
																		}  ?>
															<?php if ($row['no_tgl_lahir'] == 'Y') { ?>
																, -
															<?php } else { ?>
																, <?php echo tgl_indo($row['tgl_lahir']); ?>
															<?php }  ?>
														</b></p>
												</div>
												<div class="social-links" style="background-color: #0263d4;">
													<a href="<?php echo base_url(); ?><?php echo $this->uri->segment(1, 0) ?>/detail/<?php echo $row['id_pegawai']; ?>/<?php echo $seo; ?>" style="color: #fff;">Selengkapnya</a>
												</div>
											</div>
										</div>
									<?php
											}
											?>
									<!-- MULAI NAVIGASI -->
									<?php echo $pagination; ?>
									<!-- SELESAI NAVIGASI -->

								<?php
									} else {
										?>
									<h4>Maaf, Data Belum Tersedia !</h4>
								<?php
									}
									?>
							</div><!-- /.flat-gallery-carousel -->
						</div><!-- /.col-md-12 -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</div><!-- /.flat-row -->
		</div><!-- /.page-body -->
	</div><!-- /#site-content -->



<?php } else  if ($this->uri->segment(2, 0) == 'detail') { ?>
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
			background-color: #696969;
			color: white;
		}
	</style>
	<?php
		if (count($detail_pegawai)) {
			foreach ($detail_pegawai as $row) {
				if ($row->kelamin == 'L') {
					$kelamin = 'Laki-laki';
				} else {
					$kelamin = 'Perempuan';
				}

				if ($row->masa_tahun == '') {
					$masa_tahun = '-';
				} else {
					$masa_tahun = $row->masa_tahun;
				}

				if ($row->masa_bulan == '') {
					$masa_bulan = '-';
				} else {
					$masa_bulan = $row->masa_bulan;
				}

				?>
			<!-- Site content -->
			<div id="site-content">
				<div id="page-header">
					<div class="container">
						<div class="row">
							<div class="page-title">
								<h2 class="title"><?php echo $judulan; ?></h2>
							</div>
							<div id="page-breadcrumbs">
								<nav class="breadcrumb-trail breadcrumbs">
									<ul class="trail-items">
										<li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>">Home</a></li>
										<li class="trail-item trail-end"><a href="<?php echo base_url(); ?>pegawai">Semua Pegawai</a></li>
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
								<div class="col-md-6">
									<div class="flat-tabs">
										<ul class="menu-tabs">
											<li class="active"><a href="#"><?php echo $row->nama_pegawai; ?> </a></li>
										</ul>
										<div class="content-tab">
											<div class="content-inner">
												<table id="customers">
													<tbody>
														<tr>
															<td>
																Jabatan
															</td>
															<td>
																<?php echo $row->nama_jabatanpegawai; ?>
															</td>
														</tr>
														<tr>
															<td>
																NIP
															</td>
															<td>
																<?php echo $row->nip; ?>
															</td>
														</tr>
														<tr>
															<td>
																Pangkat/Golongan
															</td>
															<td>
																<?php echo $row->pangkat; ?> - <?php echo $row->gol_ruang; ?>
															</td>
														</tr>
														<tr>
															<td>
																Tempat/Tanggal Lahir
															</td>
															<td>
																<?php if ($row->tempat == '') { ?>
																	-
																<?php } else {
																				echo $row->tempat;
																			}  ?>
																<?php if ($row->no_tgl_lahir == 'Y') { ?>
																	, -
																<?php } else { ?>
																	, <?php echo tgl_indo($row->tgl_lahir); ?>
																<?php }  ?>
															</td>
														</tr>

														<tr>
															<td>
																Jenis Kelamin
															</td>
															<td>
																<?php echo $kelamin; ?>
															</td>
														</tr>

														<tr>
															<td>
																Alamat
															</td>
															<td>
																<?php echo $row->alamat; ?>
															</td>
														</tr>

														<tr>
															<td>
																Pendidikan
															</td>
															<td>
																<?php echo $row->pendidikan; ?>
															</td>
														</tr>

														<tr>
															<td>
																Tahun Lulus
															</td>
															<td>
																<?php echo $row->tahun_lulus; ?>
															</td>
														</tr>

														<tr>
															<td>
																Masa Kerja
															</td>
															<td>
																<?php echo $masa_tahun . ' Tahun ' . $masa_bulan . ' Bulan'; ?>
															</td>
														</tr>

														<tr>
															<td>
																Keterangan
															</td>
															<td>
																<?php echo $row->keterangan; ?>
															</td>
														</tr>
													</tbody>
												</table>
											<?php
													}
													?>
											</div><!-- /.content-inner -->

										</div><!-- /.content-tab -->
									</div><!-- /.flat-tabs -->
								</div><!-- /.col-md-6 -->

								<div class="col-md-6">
									<?php
											if ($row->gambar != null) {
												$photopath = str_replace('-', '/', $row->tgl_modif);
												?>
										<img style="width: 570px; height: 380px;" src="<?php echo base_url(); ?>foto_pegawai/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>" alt="images">
									<?php } else {  ?>
										<img style="width: 570px; height: 380px;" src="<?php echo base_url(); ?>style/images/profile.jpg" alt="images">
									<?php } ?>
								</div><!-- /.col-md-6 -->
							</div><!-- /.row -->
						</div><!-- /.container -->
					</div><!-- /.flat-row -->
				</div><!-- /.page-body -->
			</div><!-- /#site-content -->
		<?php
			} else { }
			?>


	<?php } ?>