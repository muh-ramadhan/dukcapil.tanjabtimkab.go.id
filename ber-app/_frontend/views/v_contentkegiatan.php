<?php if ($this->uri->segment(1, 0) == 'kegiatan' and $this->uri->segment(2, 0) == 'index') { ?>
  <style>
    .jadwal-tab {
      width: 100%;
      text-align: left;
      border-collapse: collapse;
      margin-top: 10px;
      margin-bottom: 10px;
      background-color: #e4e4e4;
    }

    .jadwal-tab td {
      padding: 8px 15px;
      border: 1px solid #fff;
      line-height: 160%;
      color: #161313;
    }

    .tanggal-k {
      background: #304180;
      color: #fff;
      *width: 40px;
      height: 50px;
      font-size: 24px;
      text-align: center;
      padding: 15px 0;
      font-family: 'open_sansbold', Arial, Helvetica, sans-serif;
    }

    .date-k {
      background: #000;
      *height: 50px;
      width: 120px;
      border-radius: 10px;
    }

    .tahun-p {
      font-size: 18px;
      font-family: 'open_sansbold', Arial, Helvetica, sans-serif;
    }

    .bulan-p,
    .tahun-p {
      text-align: center;
      line-height: 150%;
    }

    .corange {
      color: #d79a16;
    }
  </style>
  <div id="site-content">
    <div id="page-header">
      <div class="container">
        <div class="row">
          <div class="page-title">
            <h2 class="title">Kegiatan</h2>
          </div>
          <div id="page-breadcrumbs">
            <nav class="breadcrumb-trail breadcrumbs">
              <ul class="trail-items">
                <li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>">Home</a></li>
                <li class="trail-item trail-end"><a href="<?php echo base_url(); ?>kegiatan">Kegiatan</a></li>
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


                <?php if (count($artikel)) { ?>

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
                        $judul = seo_link($row['namakegiatan']);
                        $tahunj = substr($row['tgl_kegiatan'], 0, 4);
                        $bulanj = substr($row['tgl_kegiatan'], 6, 8);
                        $tanggalj = substr($row['tgl_kegiatan'], 8, 10);
                        ?>
                    <table class="jadwal-tab">
                      <tr>
                        <td rowspan="4" width="160">
                          <center>
                            <div class="date-k right">
                              <div class="tanggal-k"> <?php echo $tanggalj; ?> </div>
                              <div class="bulan-p corange"> <?php echo bulan($bulanj); ?> </div>
                              <div class="tahun-p corange"><?php echo $tahunj; ?></div>
                            </div>
                          </center>
                        </td>
                        <td> Kegiatan : <strong><?php echo $row['namakegiatan']; ?> </strong> </td>
                      </tr>
                      <tr>
                        <td>Tempat: <strong><?php echo $row['tempat']; ?></strong></td>
                      </tr>
                      <tr>
                        <td>Waktu: <strong><?php echo $row['waktu']; ?> </strong></td>
                      </tr>

                      <tr>
                        <td>
                          <a href="<?php echo base_url(); ?>kegiatan/detail/<?php echo $row['id_kegiatan']; ?>/<?php echo $judul; ?>" class="btn btn-green">Selengkapnya</a>

                        </td>
                      </tr>
                    </table>
                  <?php
                        $no++;
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
  </div><!-- /#site-content -->









<?php
} elseif ($this->uri->segment(1, 0) == 'kegiatan' and $this->uri->segment(2, 0) == 'detail') { ?>

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

    .oce-tri {
      background: #efefef;
      border-left: 6px solid #ccc;
    }

    .ver-zebra2 td {
      padding: 3px;
      border: 1px solid #ccc;
      line-height: 160%;
      color: #161313;
    }

    .komisioner-tab {
      width: 100%;
      text-align: left;
      border-collapse: collapse;
      margin-top: 10px;
      margin-bottom: 20px;
    }

    .komisioner-tab td {
      padding: 5px 15px;
      border: 1px solid #ccc;
      line-height: 160%;
      color: #161313;
    }
  </style>


  <div id="site-content">
    <div id="page-header">
      <div class="container">
        <div class="row">
          <div class="page-title">
            <h2 class="title">Kegiatan</h2>
          </div>
          <div id="page-breadcrumbs">
            <nav class="breadcrumb-trail breadcrumbs">
              <ul class="trail-items">
                <li class="trail-item trail-begin"><a href="<?php echo base_url(); ?>">Home</a></li>
                <li class="trail-item trail-end"><a href="<?php echo base_url(); ?>kegiatan">Kegiatan</a></li>
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
            <?php
              if (count($detail_kegiatan)) {
                foreach ($detail_kegiatan as $row) {
                  //$judul=seo_link($row->nama_katdokumen); 
                  ?>
                <div class="main-content">
                  <article class="post">
                    <div class="box-single-content">
                      <div class="breadcrumb">
                        <a href="<?php echo base_url(); ?>">Beranda </a>/ <a href="<?php echo base_url(); ?>kegiatan">Jadwal Kegiatan </a>
                      </div>
                      <br>
                      <h3 class="rs single-title">Nama Kegiatan: <?php echo $judulan; ?></h3>
                      <p class="rs post-by"><?php echo $postingby; ?></p>
                      <table class="komisioner-tab">
                        <colgroup>
                          <col class="oce-tri">
                        </colgroup>
                        <tbody>
                          <tr>
                            <td width="200"><span>Nama Kegiatan</span></td>
                            <td width="500">: <strong> <?php echo $row->namakegiatan; ?> </strong></td>
                          </tr>
                          <tr>
                          </tr>
                          <tr>
                            <td><span>Tanggal</span></td>
                            <td> : <?php
                                          $tanggal = $row->tgl_kegiatan;
                                          echo nama_hari($tanggal) . ', ';

                                          echo tgl_indo($tanggal);

                                          ?> </td>
                          </tr>
                          <tr>
                            <td><span>Waktu</span></td>
                            <td> : <?php echo $row->waktu; ?></td>
                          </tr>
                          <tr>
                            <td><span>Tempat</span></td>
                            <td> : <?php echo $row->tempat; ?></td>
                          </tr>
                          <tr>
                            <td><span>Perihal</span></td>
                            <td>: <?php echo $row->perihal; ?> </td>
                          </tr>
                          <!-- <tr><td><span >Tamu Undangan</span></td>  <td>   <?php echo $row->pengisi; ?></td></tr> -->
                          <tr>
                            <td><span>Jadwal Kegiatan</span></td>
                            <td> <?php echo $row->jadwalkegiatan; ?></td>
                          </tr>
                        </tbody>
                      </table>

                    <?php
                        }
                        ?>
                    <div class="clearfix"></div>
                  <?php } else { } ?>
                    </div>
                  </article><!-- /.post -->
                  <!-- MULAI NAVIGASI -->
                  <?php echo $pagination; ?>
                  <!-- SELESAI NAVIGASI -->
                </div><!-- /.main-content -->
              <?php } ?>
              <!-- MULAI SIDEBAR -->
              <?php $this->load->view($vkanan); ?>
              <!-- SELESAI SIDEBAR -->
          </div><!-- /.blog -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </div><!-- /.page-body -->
  </div><!-- /#site-content -->