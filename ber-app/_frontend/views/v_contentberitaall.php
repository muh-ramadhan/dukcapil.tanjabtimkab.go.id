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
        							<li class="trail-item trail-begin"><a href="/">Home</a></li>
        							<li class="trail-item trail-end"><a href="/berita">Berita</a></li>
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
							<?php
    if (count($artikel)) {
	?>
<?php $no=1;
foreach($artikel as $key => $row){ 
	$isi=strip_tags($row['isi_berita']);
	$isi=substr($isi,0,250); 
	$judul=seo_link($row['judul']);
	$photopath = str_replace('-', '/', $row['tanggal_modif']);				
	$a=substr($row['tanggal'], 0,4);
	$b=substr($row['tanggal'], 5,2);
	$c=substr($row['tanggal'], 8,9);
	$tanggal=$c.'/'.$b.'/'.$a;

	if  ($row['gambar']!='') { 
		$gambar=base_url() ."foto_berita/".$photopath."/small_".$row['gambar'];
	} else { 
		$gambar=base_url() ."foto_berita/image-default.jpg";
	}
?>
        						<article class="post">
        							<div class="entry-wrapper">
        								<div class="entry-cover">
        										<img src="<?php echo $gambar; ?>" alt="images" style="height: 394.3px; width: 525.75px;">
        								</div><!-- /.entry-cover -->
        								<div class="entry-header">
        									<span class="entry-time"><?php echo nama_hari($row['tanggal']).', ';?> <?php   echo tgl_indo($row['tanggal']); ?></span>
        									<h2 class="entry-title">
												<a href="<?php echo base_url(); ?>berita/detail/<?php echo $row['id_berita']."/".$judul."/";?>"><?php echo $row['judul']; ?></a>
											</h2>
        									<div class="entry-meta">
        										<span></span>
												<span class="entry-categories"><a href="#">Business</a></span>
        									</div><!-- /.entry-meta -->
        								</div><!-- /.entry-header -->
        								<div class="entry-content">
										<?php echo $isi; ?>...
										<div class="readmore"><a href="blog-single.html" class="more-link">Selengkapnya</a></div>
        								</div><!-- /.entry-content -->
        							</div><!-- /.entry-wrapper -->
								</article><!-- /.post -->
								<?php
								$no=$no+1; 
                $id = $row->id_berita;
                $ip_addr = $this->input->ip_address();
              }

              $data = array('dibaca' => $row->dibaca + 1);
              $where = "id_berita = '" . $row->id_berita . "'";
              $str = $this->db->update('berita', $data, $where);
            } else { ?>
         ! Maaf Data Belum Tersedia<br><br><br>
	   <?php } ?>
	   

							
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
        </div><!-- /#site-content -->