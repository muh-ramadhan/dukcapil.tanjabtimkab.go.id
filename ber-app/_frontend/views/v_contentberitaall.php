        <!-- Site content -->
        <div id="site-content">
        	<div id="page-header">
        		<div class="container">
        			<div class="row">
        				<div class="page-title">
							<h2 class="title">Welcome to my blog</h2>
        				</div>
        				<div id="page-breadcrumbs">
        					<nav class="breadcrumb-trail breadcrumbs">
        						<h2 class="trail-browse">You are here:</h2>
        						<ul class="trail-items">
        							<li class="trail-item trail-begin"><a href="#">Home</a></li>
        							<li class="trail-item trail-end">Welcome to my blog</li>
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
        									<span class="entry-time">January 26, 2016</span>
        									<h2 class="entry-title">
												<a href="<?php echo base_url(); ?>berita/detail/<?php echo $row['id_berita']."/".$judul."/";?>"><?php echo $row['judul']; ?></a>
											</h2>
        									<div class="entry-meta">
        										<span>By</span>
        										<span class="entry-author">
        											<a href="#" class="entry-author-link">themesflat</a>
        										</span>
        										<span>in</span>
        										<span class="entry-categories"><a href="#">Business</a></span>
        										<span class="entry-comments-link"><a href="#">0</a></span>
        									</div><!-- /.entry-meta -->
        								</div><!-- /.entry-header -->
        								<div class="entry-content">
										<?php echo $isi; ?>...
										<div class="readmore"><a href="blog-single.html" class="more-link">Selengkapnya</a></div>
        								</div><!-- /.entry-content -->
        							</div><!-- /.entry-wrapper -->
								</article><!-- /.post -->
								
								<?php $no=$no+1; } ?>
  <?php } else { ?>
<h4 >Maaf, Data Belum Tersedia !</h4>
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