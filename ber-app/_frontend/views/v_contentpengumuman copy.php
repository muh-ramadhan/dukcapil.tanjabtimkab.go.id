<?php if ($this->uri->segment(1, 0) == 'pengumuman' and ($this->uri->segment(2, 0) == null or $this->uri->segment(2, 0) == "index")) { ?>

	<div class="content grid_7 allberita marked-category">
		<div class="single-page">
			<div class="box-single-content">
				<div class="breadcrumb">
					<a href="<?php echo base_url(); ?>">Beranda </a>/ <a href="<?php echo base_url(); ?>dok"> Peraturan/Produk Hukum </a>
				</div>
				<br>
				<style>
					#no-more-tables .date-p {
						width: 60%;
						height: 55px;
					}
				</style>
				<h3 class="rs single-title">Pengumuman</h3>
				<p class="rs post-by"><?php echo $postingby; ?></p>
				<?php if (count($artikel)) { ?>
					<div id="no-more-tables" style="*padding:15px;margin:0 auto;">
						<table class="col-md-12 table-bordered table-striped table-condensed cf" style="margin-bottom:15px;">
							<thead class="cf">
								<tr bgcolor="#F2F2F2" align="left">
									<th width="13% !important">
										<center>Tanggal </center>
									</th>
									<th width="25% !important">
										<center>Pengumuman</center>
									</th>
									<th width="8% !important">
										<center>Detail</center>
									</th>
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
									<tr class="ok" bgcolor="<?php echo $background; ?>">
										<td data-title="Tanggal"><br>
											<div class="tglaseli" style="display:none;">
												<div class="tanggal-p leftt"> <?php echo $tanggalp; ?> </div>
												<div class="date-p leftt">
													<div class="bulan-p cputih">
														<?php echo bulan($bulanp); ?> </div>
													<div class="tahun-p cputih"> <?php echo $tahunp; ?> </div>
												</div>
											</div>
											<center><?php echo tgl_indo($row['tanggal_pengumuman']); ?></center>
										</td>
										<td align="center" data-title="Pengumuman">
											<a href="<?php echo base_url(); ?>pengumuman/detail/<?php echo $row['id_pengumuman'] . "/" . $judul . "/"; ?>"><b><?php echo $row['judul']; ?></b></a>
					</div> <br><br><?php echo $isi; ?>... <br><br>
					</td>
					<td align="center" data-title="Detail">
						<a href="<?php echo base_url(); ?>pengumuman/detail/<?php echo $row['id_pengumuman'] . "/" . $judul . "/"; ?>"><b>Detail</b></a>
					</td>
					</tr>
				<?php
							$no++;
						}
						?>
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
		<?php } else { ?>
			<h4>Maaf, Data Belum Tersedia !</h4>
		<?php } ?>
		</div>
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
		<div class="thumb-news1" data-original="<?php echo $gambar; ?>" style="background-image: url('<?php echo $gambar; ?>')"></div>   
	</a>
    <div class="wrap-short-detail">
		<h3 class="rs acticle-title"><a class="be-fc-orange" href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita . "/" . $judul . "/"; ?>"><?php echo $row->judul; ?></a></h3>
        <p class="rs tiny-desc"><?php echo nama_hari($tanggal) . ', '; ?> <span class="fw-b fc-gray"><?php echo tgl_indo($tanggal) . ' | ';
																											echo $row->jam . ' WIB ';
																											?></span></p>
        <p class="rs title-description"><?php echo $isi; ?>...</p>
	</div> 
</div> 
<?php $no = $no + 1;
	} ?> 
-->
	</div>
	</div>








<?php

} elseif ($this->uri->segment(1, 0) == 'pengumuman' and $this->uri->segment(2, 0) == 'detail') { ?>



	<div class="content grid_7 allberita marked-category">

		<div class="single-page">

			<div class="box-single-content">

				<div class="breadcrumb">

					<a href="<?php echo base_url(); ?>">Beranda </a>/ <a href="<?php echo base_url(); ?>pengumuman">Pengumuman </a>







				</div>

				<br>

				<?php

					if (count($detail_pengumuman)) {

						foreach ($detail_pengumuman as $row) {

							//$tanggal=$row->tanggal;

							//$photopath = str_replace('-', '/', $row->tanggal_modif);

							//$judul=seo_link($row->nama_kategori);

							?>





						<h3 class="rs single-title"><?php echo $row->judul; ?></h3>

						<p class="rs post-by"><?php

															$tanggal = $row->tanggal;

															echo nama_hari($tanggal) . ', ';

															echo tgl_indo($tanggal) . ' | ';

															echo $row->jam . ' WIB ';



															?>

							| Dibaca: <?php echo $row->dibaca; ?> Kali </p>



						<div class="left">

							<link rel="stylesheet" href="http://bermultimedia.com/assets/social.css">

							<div class="box-share">

								<div class="share clearfix">

									<div id="social-share"></div>



									<script>
										$(document).ready(function() {

											var link_socmed = "<?php echo current_url(); ?>"

											$('#social-share').klnsosial({

												url: "<?php echo current_url(); ?>",

												comment_count: -1,

												twitter_user: 'kapanlagicom'

											});

										});
									</script>

									<script src="http://bermultimedia.com/assets/social.js"></script>

								</div>

							</div>

						</div>

						<style>
							.filependukung h3 {

								border-bottom: 2px solid #ce6f03;

								line-height: 140%;

								padding-bottom: 10px;

								color: #333;

							}
						</style>

						<div class="editor-content">

							<?php echo $row->isi_pengumuman; ?>



							<br>

							<?php

										$data = array('dibaca' => $row->dibaca + 1);

										$where = "id_pengumuman = '" . $row->id_pengumuman . "'";

										$str = $this->db->update('pengumuman', $data, $where);

										?>



							<br>

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

										echo "</div>";

										?>

							<br>

						</div>

			</div>





			<div class="wrapper-box box-post-comment" style="margin-top:20px;">

				<h4 class="rs title-box-outside">Komentar Facebook</h4>

				<div class="clear"></div>

				<div class="box-white">

					<div id="fbcom1917175884" class="cmp_comments_container">
						<fb:comments href="<?php echo current_url(); ?>" num_posts="20" width="100%" colorscheme="light"></fb:comments>
					</div>

				</div>

			</div>





			<!-- AddThis Button END -->

		<?php

					$id = $row->id_pengumuman;

					$ip_addr = $this->input->ip_address();
				}



				$data = array('dibaca' => $row->dibaca + 1);

				$where = "id_pengumuman = '" . $row->id_pengumuman . "'";

				$str = $this->db->update('pengumuman', $data, $where);
			} else {

				?>

		! Maaf Data Belum Tersedia<br><br><br>

	<?php } ?>







		</div>

	</div>

















<?php

}

?>