<?php if ($this->uri->segment(2, 0) == 'index') { ?>

	<div class="content grid_7 allberita marked-category">
		<div class="single-page">
			<div class="box-single-content">
				<div class="breadcrumb">
					<a href="<?php echo base_url(); ?>">Beranda </a> | Data Pegawai Bagian Hukum Setda Kab. Tanjung Jabung Timur
				</div>
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
				</style><br>
				<h3 class="rs single-title">Data Pegawai Bagian Hukum & HAM Setda Kab. Tanjung Jabung Timur </h3>
				<p class="rs post-by"></p>
				<?php
					if (count($artikel)) {
						foreach ($artikel  as $row) {

							$photopath = str_replace('-', '/', $row['tgl_modif']);
							$seo = seo_link($row['nama_pegawai']);
							?>
						<table id="ver-zebra3">
							<tbody>
								<tr>
									<td width="15%" valign="top">
										<a href="<?php echo base_url(); ?><?php echo $this->uri->segment(1, 0) ?>/detail/<?php echo $row['id_pegawai']; ?>/<?php //cho $seo;
																																										?>">
											<?php if ($row['gambar'] != '') { ?>

												<img src="<?php echo base_url(); ?>foto_pegawai/<?php echo $photopath; ?>/<?php echo $row['gambar']; ?>" width="180" style="max-width:none;margin-bottom:5px" />

											<?php } else { ?>
												<img src="<?php echo base_url(); ?>style/images/profile.jpg" width="180" style="max-width:none;margin-bottom:5px" />
											<?php } ?>
										</a>
									</td>
									<td valign="top">
										<table id="ver-zebra5">
											<tbody>
												<tr>
													<td width="22%">Nama</td>
													<td>: <a href="<?php echo base_url(); ?><?php echo $this->uri->segment(1, 0) ?>/detail/<?php echo $row['id_pegawai']; ?>/<?php echo $seo; ?>">
															<?php echo $row['nama_pegawai']; ?>
														</a>
													</td>
												</tr>
												<tr>
													<td>Jabatan</td>
													<td>: <b>
															<?php echo $row['nama_jabatanpegawai']; ?>
														</b>
													</td>
												</tr>
												<tr>
													<td>Pangkat/Golongan</td>
													<td>: <b><?php echo $row['pangkat']; ?> - <?php echo $row['gol_ruang']; ?></b></td>
												</tr>
												<tr>
													<td>Jenis Kelamin</td>
													<td>: <b><?php if ($row['kelamin'] == 'L') { ?>
																Laki-laki
															<?php } else { ?>
																Perempuan
															<?php }  ?></b>
													</td>
												</tr>
												<tr>
													<td>TTL</td>
													<td>: <b><?php if ($row['tempat'] == '') { ?>
																-
															<?php } else {
																			echo $row['tempat'];
																		}  ?>
															<?php if ($row['no_tgl_lahir'] == 'Y') { ?>
																, -
															<?php } else { ?>
																, <?php echo tgl_indo($row['tgl_lahir']); ?>
															<?php }  ?>
														</b>
													</td>
												</tr>
											</tbody>
										</table>

										<a href="<?php echo base_url(); ?><?php echo $this->uri->segment(1, 0) ?>/detail/<?php echo $row['id_pegawai']; ?>/<?php echo $seo; ?>" style="color:#fff;">
											<div style="padding:10px 0;margin:10px;font-size:12px;font-weight:bold; text-align:center;background:#ce6f03;">
												LIHAT PROFIL SELENGKAPNYA
											</div>
										</a>
									</td>
								</tr>
							</tbody>
						</table>
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
				<?php
					} else {
						?>
					<h4>Maaf, Data Belum Tersedia !</h4>
				<?php
					}
					?>
			</div>

		</div>
	</div>









<?php } else  if ($this->uri->segment(2, 0) == 'detail') { ?>
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