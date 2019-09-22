        <!-- Site content -->
        <div id="site-content">
        	<div id="page-header">
        		<div class="container">
        			<div class="row">
        				<div class="page-title">
        					<h2 class="title">Galeri Kegiatan</h2>
        				</div>
        				<div id="page-breadcrumbs">
        					<nav class="breadcrumb-trail breadcrumbs">
        						<ul class="trail-items">
        							<li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>">Home</a></li>
        							<li class="trail-item trail-end"><a href="<?php echo base_url(); ?>galeri">Home</a></li>
        						</ul>
        					</nav>
        				</div>
        			</div><!-- /.row -->
        		</div><!-- /.container -->
        	</div><!-- /#page-header -->
        	<div id="page-body">
        		<div class="flat-row pad-top0px">
        			<div class="container">
        				<div class="row">
        					<div class="flat-wrapper">
        						<div class="flat-portfolio portfolio-grid">
        							<div class="portfolio">
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
        										<div class="portfolio-item item-three-column management">
        											<div class="portfolio-wrap">
        												<div class="portfolio-thumbnail">
        													<img style="width: 370px; height: 254px;" src="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row['gbr_gallery']; ?>" alt="images">
        													<div class="flat-figcaption">
        														<div class="project-buttons">
        															<a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row['id_fotoberita']; ?>/<?php echo seo_link($row['judul_fotoberita']); ?>"><span>Quick View</span></a>
        														</div>
        													</div>
        												</div>
        												<div class="portfolio-info">
        													<div class="portfolio-info-wrap">
        														<h6 class="portfolio-title">
        															<a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row['id_fotoberita']; ?>/<?php echo seo_link($row['judul_fotoberita']); ?>"><?php echo $row['judul_fotoberita']; ?></a>
        														</h6>
        														<ul class="portfolio-categories">
        															<li>Tanggal : <?php echo $tanggal; ?> - <?php echo $row['jumlah']; ?> Foto</li>
        														</ul>
        													</div>
        												</div>
        											</div>
        										</div><!-- /.portfolio-item -->
        									<?php
												}
												?>
        							</div><!-- /.portfolio -->
        						</div><!-- /.flat-portfolio -->
        					</div><!-- /.flat-wrapper -->
        				</div><!-- /.row -->
        			</div><!-- /.container -->
        		</div><!-- /.flat-row -->
        	</div><!-- /.page-body -->
        <?php

		} else {
			?>
        	<h4>Maaf, Data Belum Tersedia !</h4>
        <?php

		}
		?>
        </div><!-- /#site-content -->