<script type="text/javascript" src="<?php echo base_url(); ?>style/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>style/js/exporting.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>style/js/highcharts.js"></script>
<?php if ($this->uri->segment(1, 0) == 'polling' and $this->uri->segment(2, 0) == null) { ?>
    <div class="content grid_7 allberita marked-category">
        <div class="single-page">
            <div class="box-single-content" style="color:#000;">
                <div class="breadcrumb">
                    <a href="<?php echo base_url(); ?>">Beranda </a>/ Polling

                </div>
                <br>
                <h3 class="rs single-title"> <?php echo $judulan; ?></h3>
                <p class="rs post-by"><?php echo $postingby; ?></p>
                <div class="block-content  pad1020 laporan">
                    <script type='text/javascript'>
                        $(document).ready(function() {
                            $('#chartdivpolling').highcharts({
                                chart: {
                                    plotBackgroundColor: null,
                                    plotBorderWidth: null,
                                    plotShadow: false

                                },
                                title: {
                                    text: 'Hasil Polling Bagian Hukum Kab. Tanjung Jabung Timur'
                                },
                                <?php


                                    //$ok = mysql_query("SELECT * from polling where publish='Y' order by id_polling limit 1");
                                    //$rss=mysql_fetch_array($ok);
                                    ?>
                                subtitle: {
                                    text: '<?php echo $pertanyaan; ?>',
                                    x: -20

                                },
                                tooltip: {
                                    pointFormat: '{series.name} : <b>{point.y}</b> Presentase <b>{point.percentage:.1f}%</b>'
                                },
                                plotOptions: {
                                    pie: {
                                        allowPointSelect: true,
                                        cursor: 'pointer',
                                        dataLabels: {
                                            enabled: false

                                        },
                                        showInLegend: true

                                    }
                                },
                                credits: {
                                    enabled: false

                                },
                                <?php

                                    //foreach($pollingpilihan->result() as $row){
                                    //$ook = mysql_query("SELECT * from polling pilihan where id_polling='$rss[id_polling]' order by rating");
                                    //$rs=mysql_fetch_array($ook);
                                    ?>
                                series: [{
                                    type: 'pie',
                                    name: 'Total',
                                    data: [
                                        <?php

                                            //$ook = mysql_query("SELECT * from pollingpilihan where id_polling='$rss[id_polling]' order by rating");
                                            $jumlah = count($pollingpilihan->result());
                                            $no = 1;
                                            foreach ($pollingpilihan->result() as $row) {
                                                //while ($rs=mysql_fetch_array($ook)){
                                                if ($no == 1) {
                                                    $warna = "#00FF00";
                                                } elseif ($no == 2) {
                                                    $warna = "#ff0000";
                                                } elseif ($no == 3) {
                                                    $warna = "#7463b9";
                                                } elseif ($no == 4) {
                                                    $warna = "#000";
                                                } elseif ($no == 5) {
                                                    $warna = "#e9ae0f";
                                                } elseif ($no == 6) {
                                                    $warna = "#6c6758";
                                                } elseif ($no == 7) {
                                                    $warna = "#5b4246";
                                                }
                                                ?> {
                                                name: '<?php echo $row->pilihan; ?>',
                                                y: <?php echo $row->rating; ?>,
                                                sliced: true,
                                                selected: true,
                                                color: '<?php echo $warna; ?>'
                                            }
                                            <?php if ($no < $jumlah) { ?>,
                                        <?php

                                                }
                                                $no++;
                                            }
                                            ?>
                                    ]
                                }]
                            });
                        });
                    </script>
                    <div id="chartdivpolling" style="height:500px"></div>
                    <br><br>
                </div>
            </div>
            <h4 class="title-welcome rs" style="margin-top:30px;">Berita Terbaru </h4> <br>
            <?php

                $no = 1;
                $beritaterbaru = $this->M_data->beritaterbaru(5);
                foreach ($beritaterbaru->result() as $row) {
                    $isi = strip_tags($row->isi_berita);
                    $isi = substr($isi, 0, 140);
                    $judul = seo_link($row->judul);
                    $photopath = str_replace('-', '/', $row->tanggal_modif);
                    $tanggal = $row->tanggal;
                    if ($row->gambar != '') {
                        $gambar = base_url() . "foto_berita/" . $photopath . "/small_" . $row->gambar;
                    } else {
                        $gambar = base_url() . "foto_berita/image-default.jpg";
                    }
                    ?>
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
            <?php

                    $no = $no + 1;
                }
                ?>
        </div>
    </div>
<?php

} elseif ($this->uri->segment(1, 0) == 'polling' and $this->uri->segment(2, 0) == 'vote') { ?>
    <div class="content grid_7 allberita marked-category">
        <div class="single-page">
            <div class="box-single-content" style="color:#000;">
                <div class="breadcrumb">
                    <a href="<?php echo base_url(); ?>">Beranda </a>/ <a href="<?php echo base_url(); ?>dok"> Dokumen </a>
                </div>
                <br>
                <h3 class="rs single-title"> <?php echo $judulan; ?></h3>
                <p class="rs post-by"><?php echo $postingby; ?></p>
                <div class="block-content  pad1020 laporan">
                    <script type='text/javascript'>
                        $(document).ready(function() {
                            $('#chartdivpolling').highcharts({
                                chart: {
                                    plotBackgroundColor: null,
                                    plotBorderWidth: null,
                                    plotShadow: false

                                },
                                title: {
                                    text: 'Hasil Polling Online'
                                },
                                <?php


                                    //$ok = mysql_query("SELECT * from polling where publish='Y' order by id_polling limit 1");
                                    //$rss=mysql_fetch_array($ok);
                                    ?>
                                subtitle: {
                                    text: '<?php echo $pertanyaan; ?>',
                                    x: -20

                                },
                                tooltip: {
                                    pointFormat: '{series.name} : <b>{point.y}</b> Presentase <b>{point.percentage:.1f}%</b>'
                                },
                                plotOptions: {
                                    pie: {
                                        allowPointSelect: true,
                                        cursor: 'pointer',
                                        dataLabels: {
                                            enabled: false

                                        },
                                        showInLegend: true

                                    }
                                },
                                credits: {
                                    enabled: false

                                },
                                <?php

                                    //foreach($pollingpilihan->result() as $row){
                                    //$ook = mysql_query("SELECT * from polling pilihan where id_polling='$rss[id_polling]' order by rating");
                                    //$rs=mysql_fetch_array($ook);
                                    ?>
                                series: [{
                                    type: 'pie',
                                    name: 'Total',
                                    data: [
                                        <?php

                                            //$ook = mysql_query("SELECT * from pollingpilihan where id_polling='$rss[id_polling]' order by rating");
                                            $jumlah = count($pollingpilihan->result());
                                            $no = 1;
                                            foreach ($pollingpilihan->result() as $row) {
                                                //while ($rs=mysql_fetch_array($ook)){
                                                if ($no == 1) {
                                                    $warna = "#00FF00";
                                                } elseif ($no == 2) {
                                                    $warna = "#ff0000";
                                                } elseif ($no == 3) {
                                                    $warna = "#7463b9";
                                                } elseif ($no == 4) {
                                                    $warna = "#000";
                                                } elseif ($no == 5) {
                                                    $warna = "#e9ae0f";
                                                } elseif ($no == 6) {
                                                    $warna = "#6c6758";
                                                } elseif ($no == 7) {
                                                    $warna = "#5b4246";
                                                }
                                                ?> {
                                                name: '<?php echo $row->pilihan; ?>',
                                                y: <?php echo $row->rating; ?>,
                                                sliced: true,
                                                selected: true,
                                                color: '<?php echo $warna; ?>'
                                            }
                                            <?php if ($no < $jumlah) { ?>,
                                        <?php

                                                }
                                                $no++;
                                            }
                                            ?>
                                    ]
                                }]
                            });
                        });
                    </script>
                    <div id="chartdivpolling" style="height:500px"></div>
                </div>
            </div>
            <h3 class="title-welcome rs" style="margin-top:30px;">Berita Terbaru </h3>
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
                    }
                    ?>
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
            <?php

                    $no = $no + 1;
                }
                ?>
        </div>
    </div>
<?php

}
?>