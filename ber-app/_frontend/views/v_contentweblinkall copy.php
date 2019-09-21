<div class="content grid_7 allberita marked-category">
	<div class="single-page">
		<div class="box-single-content">
			<div class="breadcrumb">
				<a href="<?php echo base_url(); ?>">Beranda </a>/ <a href="<?php echo base_url(); ?>berita"> Berita Terkini </a>
			</div>
			<br>
			<h3 class="rs single-title"><?php echo $judulan; ?></h3>
			<p class="rs post-by"><?php echo $postingby; ?></p>
			<?php
			if (count($artikel)) {
				?>
				<div id="no-more-tables" style="*padding:15px;margin:0 auto;">
					<table class="col-md-12 table-bordered table-striped table-condensed cf" style="margin-bottom:15px;">
						<thead class="cf">
							<tr bgcolor="#F2F2F2" align="left">
								<th width="4% !important">No</th>
								<th width="25% !important">Nama Instansi/Web</th>
								<th width="16% !important">
									<center>Link</center>
								</th>
								<th width="40% !important">
									<center>Gambar</center>
								</th>
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
								<tr class="ok" bgcolor="<?php echo $background; ?>">
									<td data-title="No"><?php echo $no; ?></td>
									<td data-title="Nama Instansi/Web"><a href="<?php echo $row['link']; ?>"><?php echo $row['nama_weblink']; ?></a></b> <br><?php echo $row['link']; ?></td>
									<td align="center" data-title="Link"><b><?php echo $row['link']; ?></b>
									</td>
									<td align="center" data-title="Gambar">
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
				</div>
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