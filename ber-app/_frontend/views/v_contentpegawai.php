<?php if ($this->uri->segment(2, 0) == 'index') { ?>
	<!-- JIKA KONDISINYA INDEX -->
	

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
										<div class="flat-member-carousel" data-item="4" data-nav="false" data-dots="false" data-auto="false">
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
															<img src="<?php echo base_url(); ?>foto_pegawai/<?php echo $photopath; ?>/<?php echo $row['gambar']; ?>" alt="images">
														<?php } else { ?>
															<img src="<?php echo base_url(); ?>style/images/profile.jpg" alt="images">
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
		<!-- JIKA KONDISINYA DETAIL -->
		<style>
			#ver-zebra3 {
				width: 100%;
				text-align: left;
				margin-top: 10px;
				margin-bottom: 10px;
				border-bottom: 1px solid #ccc;
			}

			#ver-zebra3 td {
				padding: 8px;
				line-height: 160%;
				color: #161313;
			}

			#ver-zebra5 {
				width: 100%;
				text-align: left;
				border-collapse: collapse;
				margin-bottom: 10px;
			}

			#ver-zebra5 td {
				padding: 5px;
				border-bottom: 1px solid #1bf216;
				line-height: 160%;
				color: #161313;
			}

			#ver-zebra5 td a {
				font-weight: bold;
				color: #000;
				font-size: 15px;
			}

			.ver-zebra2 {
				width: 100%;
				text-align: left;
				border-collapse: collapse;
				margin-top: 10px;
				margin-bottom: 10px;
			}

			.oce-first {
				background: #f0f0f0;
				border-left: 6px solid #ddd;
			}

			.ver-zebra2 td {
				padding: 3px;
				border: 1px solid #ddd;
				line-height: 160%;
				color: #161313;
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
				<div class="content grid_7 allberita marked-category">
					<div class="single-page">
						<div class="box-single-content">
							<div class="breadcrumb">

								<a href="<?php echo base_url(); ?>">Beranda </a> | <a href="<?php echo base_url(); ?>pegawai"> Data Pegawai </a> | <?php echo $judulan; ?>

							</div>

							<br>
							<h3 class="rs single-title"><?php echo $judulan; ?></h3>







							<center>
								<?php

											if ($row->gambar != null) {

												$photopath = str_replace('-', '/', $row->tgl_modif);

												?>

									<img src="<?php echo base_url(); ?>foto_pegawai/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>" style="border:5px solid #000;margin-bottom:20px;width:300px;">

								<?php } else {  ?>

									<img src="<?php echo base_url(); ?>style/images/profile.jpg" style="border:5px solid #000;margin-bottom:20px;width:300px;">

								<?php } ?>



							</center>
							<table class="ver-zebra2">
								<colgroup>
									<col class="oce-first">
								</colgroup>
								<tbody>
									<tr>
										<td width="200">Nama Lengkap</td>
										<td width="500">: <strong> <?php echo $row->nama_pegawai; ?> </strong></td>
									</tr>
									<tr>
										<td width="200">Jabatan</td>
										<td width="500">: <?php echo $row->nama_jabatanpegawai; ?> </td>
									</tr>
									<tr>
										<td>NIP</td>
										<td>: <?php echo $row->nip; ?> </td>
									</tr>
									<tr>
										<td>Pangkat/Golongan</td>
										<td> : <?php echo $row->pangkat; ?> - <?php echo $row->gol_ruang; ?></td>
									</tr>
									</tr>
									<tr>
										<td>Tempat/Tanggal Lahir</td>
										<td> :
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
										<td>Jenis Kelamin</td>
										<td> : <?php echo $kelamin; ?></td>
									</tr>
									<tr>
										<td>Alamat</td>
										<td> : <?php echo $row->alamat; ?></td>
									</tr>
									<tr>
										<td>Pendidikan</td>
										<td>: <?php echo $row->pendidikan; ?></td>
									</tr>

									<tr>
										<td>Tahun Lulus</td>
										<td>: <?php echo $row->tahun_lulus; ?></td>
									</tr>
									<tr>
										<td>Masa Kerja</td>
										<td> : <?php echo $masa_tahun . ' Tahun ' . $masa_bulan . ' Bulan'; ?></td>
									</tr>
									<tr>
										<td>Keterangan</td>
										<td> <?php echo $row->keterangan; ?></td>
									</tr>
								</tbody>
							</table>

						<?php
								}
								?>
						<div class="clearfix"></div>

					<?php
						} else { }
						?>
						</div>

					</div>
				</div>
			<?php } ?>