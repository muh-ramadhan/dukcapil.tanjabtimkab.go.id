 <?php
  //--- KONDISI BILA DETAIL BERITA
  if ($this->uri->segment(1, 0) == 'berita' and $this->uri->segment(2, 0) == 'detail') { ?>
   <!-- Site content -->
   <?php
      if (count($detail_berita->result()) > 0) {
        foreach ($detail_berita->result() as $row) {
          $photopath = str_replace('-', '/', $row->tanggal_modif);
          $judul = seo_link($row->nama_kategori); ?>
       <div id="site-content">
         <div id="page-header">
           <div class="container">
             <div class="row">
               <div class="page-title">
                 <h2 class="title"><?php echo $row->judul; ?></h2>
               </div>
               <div id="page-breadcrumbs">
                 <nav class="breadcrumb-trail breadcrumbs">
                   <ul class="trail-items">
                     <li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>">Home</a></li>
                     <li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>kategori/<?php echo $row->kategori_seo; ?>"><?php echo $row->nama_kategori; ?></a></li>
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
                       <div class="entry-cover">
                         <a href="blog-single.html">
                           <?php if ($row->gambar != '') { ?>
                             <img src="<?php echo base_url(); ?>foto_berita/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>" alt="images">
                         </a>
                         <div style="padding:10px 0;color:#6f777a;border-bottom:1px solid #ccc;font-style:italic;margin:0;"><?php echo $row->text_foto; ?></div>
                       <?php } ?>
                       </div><!-- /.entry-cover -->
                       <div class="entry-header">
                         <span class="entry-time" style="background-color: #0263d4;"><?php $tanggal = $row->tanggal;
                                                                                            echo nama_hari($tanggal) . ', ';
                                                                                            echo tgl_indo($tanggal) . ' | ';
                                                                                            echo $row->jam . ' WIB '; ?></span>
                         <h2 class="entry-title"><?php echo $row->judul; ?></h2>
                         <div class="entry-meta">
                           <span class="entry-categorues"><a href="<?php echo base_url(); ?>kategori/<?php echo $row->kategori_seo; ?>"><?php echo $row->nama_kategori; ?></a></span>
                           <span class="entry-comments-link">Dibaca: <?php echo $row->dibaca; ?> Kali</span>
                         </div><!-- /.entry-meta -->
                       </div><!-- /.entry-header -->
                       <div class="entry-content">
                         <p><?php echo $row->isi_berita; ?></p>
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
         </div><!-- /.page-body -->
       </div><!-- /#site-content -->
     <?php
            $id = $row->id_berita;
            $ip_addr = $this->input->ip_address();
          }
          $data = array('dibaca' => $row->dibaca + 1);
          $where = "id_berita = '" . $row->id_berita . "'";
          $str = $this->db->update('berita', $data, $where);
        } else {
          ?> ! Maaf Data Belum Tersedia<br><br><br>
   <?php } ?>

 <?php } else if ($this->uri->segment(1, 0) == 'kategori') { ?>
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
                 <li class="trail-item trail-end"><a href="<?php echo base_url(); ?>berita">Semua Berita</a></li>
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
                 <?php
                      $no = 1;
                      foreach ($artikel as $key => $row) {
                        $isi = strip_tags($row['isi_berita']);
                        $isi = substr($isi, 0, 220);
                        $judul = seo_link($row['judul']);
                        $photopath = str_replace('-', '/', $row['tanggal_modif']);
                        $a = substr($row['tanggal'], 0, 4);
                        $b = substr($row['tanggal'], 5, 2);
                        $c = substr($row['tanggal'], 8, 9);
                        $tanggal = $c . '/' . $b . '/' . $a;
                        if ($row['gambar'] != '') {
                          $gambar = base_url() . "foto_berita/" . $photopath . "/small_" . $row['gambar'];
                        } else {
                          $gambar = base_url() . "foto_berita/image-default.jpg";
                        } ?>
                   <article class="post">
                     <div class="entry-wrapper">
                       <div class="entry-cover">
                         <img src="<?php echo $gambar; ?>" alt="images" style="height: 394.3px; width: 525.75px;">
                       </div><!-- /.entry-cover -->
                       <div class="entry-header">
                         <span class="entry-time" style="background-color: #0263d4;"><?php echo nama_hari($row['tanggal']) . ', '; ?> <?php echo tgl_indo($row['tanggal']); ?></span>
                         <h2 class="entry-title">
                           <a href="<?php echo base_url(); ?>berita/detail/<?php echo $row['id_berita'] . "/" . $judul . "/"; ?>"><?php echo $row['judul']; ?></a>
                         </h2>
                         <div class="entry-meta">
                           <span></span>
                           <span class="entry-categories"><a href="<?php echo base_url(); ?>berita/detail/<?php echo $row['id_berita'] . "/" . $judul . "/"; ?>"><?php echo $judulan; ?></a></span>
                         </div><!-- /.entry-meta -->
                       </div><!-- /.entry-header -->
                       <div class="entry-content">
                         <?php echo $isi; ?>...
                         <div class="readmore"><a href="<?php echo base_url(); ?>berita/detail/<?php echo $row['id_berita'] . "/" . $judul . "/"; ?>" class="more-link">Selengkapnya</a></div>
                       </div><!-- /.entry-content -->
                     </div><!-- /.entry-wrapper -->
                   </article><!-- /.post -->
                 <?php $no = $no + 1;
                      } ?>

                 <!-- MULAI NAVIGASI -->
                 <?php echo $pagination; ?>
                 <!-- SELESAI NAVIGASI -->
             </div><!-- /.main-content -->

             <!-- MULAI SIDEBAR -->
             <?php $this->load->view($vkanan); ?>
             <!-- SELESAI SIDEBAR -->
           <?php } else { ?>
             <h4>Maaf, Data Belum Tersedia !</h4><br><br><br>
           <?php } ?>
         <?php } ?>
           </div><!-- /.blog -->
         </div><!-- /.row -->
       </div><!-- /.container -->
     </div><!-- /.page-body -->
   </div><!-- /#site-content -->