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
						<h2 class="title">Weblinks</h2>
					</div>
					<div id="page-breadcrumbs">
						<nav class="breadcrumb-trail breadcrumbs">
							<ul class="trail-items">
								<li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>">Home</a></li>
								<li class="trail-item trail-end"><a href="<?php echo base_url(); ?>weblinks">Weblins</a></li>
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

								<article class="post">
									<table id="customers">
										<thead>
											<tr>
												<th width="5%" style="text-align: center;">No</th>
												<th width="40%">Nama Instansi/Web</th>
												<th width="15%" style="text-align: center;">Link</th>
												<th width="40%" style="text-align: center;">Gambar</th>
											</tr>
										</thead>
										<tbody>
										<?php
								if ($this->uri->segment(4) != null) {
									$no = 15 * ($this->uri->segment(4) - 1) + 1;
								} else {
									$no = 1;
								}
								foreach ($artikel  as $row) {
									if ($no % 2 == 0) {
										$background = '#FCFCFC';
									} else {
										$background = '#fff';
									}
									//$judul=seo_link($row['judul']);	
									//$row->id_katdokumen
									?>
												<tr>
													<td style="text-align: center;">
													<?php echo $no; ?>
													</td>
													<td>
													<a href="<?php echo $row['link']; ?>"><?php echo $row['nama_weblink']; ?></a>
													</td>
													<td style="text-align: center;">
													<a href="<?php echo $row['link']; ?>" class="button button2">Detail</a>
													</td>
													<td style="text-align: center;">
													<?php if ($row['gambar'] != null) { ?>
											<a href="<?php echo $row['link']; ?>"><img src="<?php echo base_url(); ?>weblink/<?php echo $row['gambar']; ?>" style="margin:0 0 5px 2px;"> </a>
										<?php } else { ?>
											Belum Tersedia

										<?php } ?>
													</td>
												</tr>
												<?php $no++; } ?>
										</tbody>
									</table>
								</article><!-- /.post -->

								<!-- MULAI NAVIGASI -->
								<?php echo $pagination; ?>
								<!-- SELESAI NAVIGASI -->
						
						</div><!-- /.main-content -->
					
						<!-- MULAI SIDEBAR -->
						<?php $this->load->view($vkanan); ?>
						<!-- SELESAI SIDEBAR -->

					</div><!-- /.blog -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /.page-body -->

		<?php } else { ?>
			<h4>Maaf, Data Belum Tersedia !</h4>
			<?php } ?>
	</div><!-- /#site-content -->