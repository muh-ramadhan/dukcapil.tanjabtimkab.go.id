-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2019 at 08:16 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dukcapil`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(5) NOT NULL,
  `id_kategoriartikel` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kutipan` text COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `isi_artikel` text COLLATE latin1_general_ci NOT NULL,
  `text_foto` text COLLATE latin1_general_ci NOT NULL,
  `kredit` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `penulis` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `editor` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `sumber` varchar(400) COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `id_kategoriartikel`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `aktif`, `isi_artikel`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(1, 1, 'ngadmin', 'Akselerasi dan Sinergitas Pembangunan Infrastruktur Menuju Kabupaten Tanjung Jabung Timur \"SAMUDRA\"', '', '', '', 'akselerasi-dan-sinergitas-pembangunan-infrastruktur-menuju-kabupaten-tanjung-jabung-timur-samudra', 'Y', '<p><strong>Muara Sabak -&nbsp;</strong>Tahun ketiga periode Pembangunan Jangka Menengah Daerah Kabupaten Tanjung Jabung Timur 2011-2016, telah banyak kemajuan&nbsp;yang&nbsp;dicapai&nbsp;terutama&nbsp;pada pembangunan infrastruktur di Kabupaten Tanjung Jabung Timur.&nbsp;Percepatan&nbsp;pembangunaninfrastruktur menjadi prioritas utama pada periode pemerintahan Kabupaten Tanjung Jabung Timur saat ini, sebagaimana dalam sembilan misi yang menjadi target kerja, misi pertama yaitu mempercepat ketersediaan infrastruktur umum secara merata dan berkeadilan menjadi prioritas utama keberhasilan pembangunan.</p>\r\n<p>Kebijakan ini dibuktikan dengan komitmen daerah untuk menganggarkan sektor infrastruktur hingga mencapi 30 persen dari total belanja daerah yang meliputi pembangunan jalan, jembatan, air minum, perumahan, sanitasi, pengairan. Secara kebijakan memang prioritas pembangunan sudah berada pada&nbsp;garis&nbsp;yang tepat, hal ini dikarenakan kondisi infrastruktur Kabupaten Tanjung Jabung Timur&nbsp;sejak berdiri sebagai daerah otonom&nbsp;memang masih minim, dengan kondisi geografis yang sebagian besar adalah rawa gambut pasang surutdan&nbsp;dialiri banyak sungai&nbsp;dan parit-parit, kondisi ini sangat berbeda dengan daerah kabupaten/kota lainnya yang memiliki geografis dan kontur tanah yang lebih baik dalam hal pengembangannya maupun pembiayaannya. Dengan kondisi ini,&nbsp;menyebabkan pembangunan infrastruktur&nbsp;yang dilakukan&nbsp;sangat variatif, pemerintah harus membangun jalan, jerambah dan jembatan, tanggul,&nbsp;serta prasarana air minum&nbsp;yang tentunya memerlukan biaya yang sangat besar. Namun dengan segala kemampuan dan sumber daya yang ada secara bertahap dan berlanjut, pembangunan infrastruktur terus dilakukan dengan konsep pemerataan yang berkeadilan, hingga&nbsp;tahun 2013&nbsp;ini&nbsp;telah banyak target pembangunan dapat diselesaikandengan baik.</p>\r\n<p>Pembangunan Infrastruktur&nbsp;<strong>Pengairan</strong>, pada tahun 2011 telah dibangun tanggul yang berfungsi mendukung program pertanian sepanjang 116,87 Km dan pada tahun 2012 dilakukan pembangunan tanggul sepanjang 96,50 Km, pemeliharaan saluran sepanjang 43,50 Km sedangkan pemeliharaan rutin saluran sepanjang 248,35 Km. Dan pada tahun 2013 ini terus dilakukan pembangunan tanggul sepanjang 124,58 Km, untuk rehab sepanjang 37,98 Km dan pemeliharaan rutin sepanjang 352 Km. Untuk pembangunan pintu air pada tahun 2011 sebanyak 4 unit, tahun 2012 sebanyak 1 unit dan tahun 2013 sebanyak 4 unit. Dengan dibangunnya sektor pengairan ini diharapkan masyarakat dapat meningkatkan produksi pertaniannya baik subsektor perkebunan dan subsektor tanaman pangan. Program ini juga sejalan dengan program pertanian tanaman pangan yaitu Program&nbsp;GERTAK TANPA DUSTA (Gerakan Serentak Tanam Padi Dua Kali Setahun) dan juga mendukung kebijakan daerah untuk pencapaian swasembada beras melalui kebijakan penetapan&nbsp;Lahan Pertanian Pangan Berkelanjutan.</p>\r\n<p>Sektor Bina Marga, sesuai target&nbsp;penambahan&nbsp;panjang&nbsp;<strong>J</strong><strong>alan</strong>&nbsp;sepanjang 100&nbsp;Km pada tahun 2016, target ini terus dilakukan percepatan, dan pada tahun 2011&nbsp;telah dilaksanakan pembangunan jalan&nbsp;baru&nbsp;sepanjang 59,6&nbsp;Km dan pada tahun 2012&nbsp;dilakukan pembangunan jalan sepanjang&nbsp;23&nbsp;km,artinya pemerintah Kabupaten Tanjung Jabung Timur sampai dengan tahun 2012&nbsp;sudah membangun jalan sepanjang 82,6 Km atau telah mencapai 82,6 persen dari target 100 Km yang ditarget pada tahun 2016. Dan komitmen daerah untuk mencapai target yang ditetapkan dalam RPJMD optimis dapat tercapai sesuai dengan yang direncanakan. Disamping itu, pada tahun anggaran 2013 dilaksanakan pengaspalan jalan dengan Hotmix pada beberapa ruas jalan terutama pada ruas jalan parit 7 - Lambur Luar, Lambur II - Simbur Naik, Lambur I &ndash; Rantau Rasau, Puding &ndash; Nipah Panjang, Jalan Simpang Tabu &ndash; Mendahara Ilir, Jalan Dalam Kota Nipah Panjang dengan total panjang 48,2 Km, pekerjaan pengaspalan hotmix baru dapat dikerjakan setelah Jembatan Muara Sabak terbangun. Pada ruas jalan yang dibangun tersebut terus dilakukan secara bertahap, dan diharapkan pada tahun 2016 semua ruas jalan tersebut dapat diselesaikan dengan baik. Begitu pula dengan&nbsp;<strong>J</strong><strong>embatan</strong>, sampai dengan tahun 2012telah banyak jembatan yang konstruksi kayu diubah menjadi konstruksi besi/beton. Pergantian konstruksi ini dimaksudkan untuk memperpanjang usia konstruksi dan memperkecil nilai ekonomi pemeliharaan jembatan tersebut.&nbsp;Pada tahun 2011 jembatan dengan konstruksi besi/beton berjumlah 28 unit dengan total panjang mencapai 662,2 meter. Dan pada tahun 2012 pembangunan jembatan sebanyak 15 unit dengan total panjang mencapai 219 meter. Peningkatan konstruksi jembatan menjadi prioritas dalam pembangunan jembatan yang ada di Kabupaten Tanjung Jabung Timur.</p>\r\n<p>Pembangunan infrastruktur permukiman terus dipacu hingga menuju kabupaten yang sehat, bersih, layak dan akses prasarana dasar yang cukup. Untuk mewujudkan kondisi tersebut, beberapa paket kebijakan telah digulirkan baik kebijakan dari pusat maupun daerah, prasarana&nbsp;<strong>Air Minum</strong>&nbsp;menjadi fokus pembangunan oleh Dinas Pekerjaan Umum pada tahun 2012 dan 2013 ini terus dilakukan pembangunan struktur dan infrastruktur air minum dengan lokasi di Kecamatan Rantau Rasau, Kecamatan Dendang, Kecamatan Nipah Panjang dan Kecamatan Sadu. Dengan pembangunan tersebut jumlah masyarakat yang terlayani air minum sebanyak&nbsp;2.204&nbsp;KK&nbsp;pada tahun 2012, dan&nbsp;pada tahun 2013 terjadi peningkatan jumlah pelanggan yang tersalurkan sebanyak&nbsp;3.429&nbsp;KK. Komitmen daerah untuk mempercepat penyediaan air minum bagi masyarakat terus diupayakan semaksimal mungkin. Untuk mendukung kawasan permukiman yang sehat, pembangunan&nbsp;<strong>Jalan Rabat Beton&nbsp;</strong>dari tahun 2011, 2012 dan direncanakan sampai tahun 2013 dengan total panjang sepanjang 14.096 meter, sedangkan untuk pembangunan&nbsp;<strong>Jalan Jerambah Beton</strong>&nbsp;dari tahun 2011, 2012 dan direncanakan sampai tahun 2013 dengan total panjang sepanjang 12.664 meter, untuk pembangunan&nbsp;<strong>Jalan Lingkungan</strong>&nbsp;dari tahun 2011, 2012 dan direncanakan sampai tahun 2013 dengan total panjang sepanjang 11.037 meter, serta untuk pembangunan&nbsp;<strong>Sumur Bor</strong>&nbsp;dari tahun 2011, 2012 dan direncanakan sampai tahun 2013 dengan total berjumlah 46 unit.</p>\r\n<p>Selaras dengan tema peringatan Hari Jadi Kabupaten Tanjung Jabung Timur ke-14 Tahun 2013 ini yaitu Peningkatan Akselerasi Sinergitas Pemerataan Pembangunan Menuju Tanjung Jabung Timur&nbsp;&ldquo;SAMUDRA&rdquo;. Pemerintah Kabupaten Tanjung Jabung Timur melalui Dinas Pekerjaan Umum saat ini sedang mempersiapkan rencana Pembangunan Jembatan Nipah Panjang &ndash; Sadu yaitu jembatan yang menghubungkan antara Delta Berbak dengan Daratan menuju Ujung Jabung Kecamatan Sadu. Dengan pembangunan Jembatan ini yang diperkirakan sepanjang &plusmn;440,7&nbsp;meter diharapkan akan mempercepat pemerataan pembangunan dan memperkecil disparitas pembangunan antara wilayah&nbsp;kecamatan&nbsp;di Kabupaten Tanjung Jabung Timur&nbsp;dengan membuka keterisolasian dari akses transportasi darat, dengan adanya jembatan ini juga akan mempermudah pengelolaan sumberdaya maupun potensi daerah yang tersedia untuk dikelola dengan efektif, efisien dan ekonomis yang pada akhirnya&nbsp;percepatan kesejahteraan&nbsp;dan taraf hidup&nbsp;masyarakat&nbsp;secara&nbsp;nyata&nbsp;dapat&nbsp;diraih.</p>\r\n<p>Keterpaduan dan sinergitas antar elemen pembangunan juga menjadi kunci keberhasilan pembangunan, pembangunan infrastruktur yang dilakukan akan bernilai negatif jika tidak tepat sasaran dan tidak menyentuh kepada kepentingan masyarakat. Seyogyanya pembangunan yang dilakukan harus bersinergi antara pembangunan infrastruktur, sosial budaya dan ekonomi. Ketiga ini unsur ini memiliki posisi yang sejajar dan saling mempengaruhi, yang kemudian membentuk satu kesatuan sistem dimana setiap sektor merupakan bagian atau subsistem yang satu sama lainnya keterkaitan. Untuk itu, pembangunan infrastruktur yang dilakukan berguna untuk meningkatkan perekonomian dan kesejahteraan masyarakat,begitu pula sebaliknya ekonomi yang maju dan kompetensi yang tinggi menjadi modal untuk meningkatkan infrastruktur yang lebih bermanfaat.</p>\r\n<p>Akhirnya segenap karyawan&nbsp;dan karyawati&nbsp;Dinas Pekerjaan Umum&nbsp;Kabupaten Tanjung Jabung Timur&nbsp;mengucapkan Selamat Hari Jadi Kabupaten Tanjung Jabung Timur Ke-14 Tahun 2013, semoga&nbsp;gerak langkah dan sinergitas yang telah terbangun dengan baik ini dapat menjadikan&nbsp;masyarakat&nbsp;Sejahtera, Aman, Mandiri, Unggul, Demokratis dan Agamis&nbsp;dapat segera kita raih.</p>', 'Master Plan Pelabuhan Ujung Jabung Kec. Sadu', '', '', '', 'Humas Pemkab Kab. Tanjabtim', 'Sabtu', '2014-02-15', '0000-00-00', '13:10:30', '63ujungjabung.jpg', 7, ''),
(2, 1, 'ngadmin', 'UP2K Tanjab Timur Juara Nasional', 'UP2K Tanjab Timur Juara Nasional', '', '', 'up2k-tanjab-timur-juara-nasional', 'Y', '<p><span id=\"yui_3_7_2_1_1369893861492_2810\"><span>MUARASABAK- Warga Kabupaten TanjungJabung Timur patut berbangga hati. Pasalnya, pada lomba UP2K &nbsp;tingkat nasional, UP2K Desa Kota Baru Kecamatan Geragai yang mewakili Provinsi Jambi pada lomba tingkat Nasional berhasil keluar sebagai pemenang dan mendapatkan penghargaan Pakarti Madya I Kategori Kabupaten sebagai pelaksana terbaik UP2K PKK. Penghargaan yang diserahkan langsung oleh&nbsp;</span></span><span>Ketua Umum TP PKK Pusat, Hj Vita Gamawan Fauzi diterima Ketua TP PKK Kabupaten Tanjung Jabung Timur, Sherrin Tharia Zumi Zola pada Puncak Peringatan Bulan Bhakti Gotong Royong ke X tingkat Nasional dan Peringatan Hari Kesatuan Gerak (HKG) PKK ke-41 di Provinsi Kalimantan Selatan&nbsp;</span></p>\r\n<p id=\"yui_3_7_2_1_1369893861492_2809\"><span id=\"yui_3_7_2_1_1369893861492_2808\"><span>Ketua TP PKK Kabupaten Tanjung Jabung Timur didampingi Wakil Ketua, Hj. Sri Ningsih Puspita Ambo Tang menuturkan, pada lomba tahun ini, Kabupaten Tanjung Jabung Timur telah berusaha semaksimal mungkin dalam Usaha Peningkatan Pendapatan Keluarga.</span></span></p>\r\n<p id=\"yui_3_7_2_1_1369893861492_2817\"><span id=\"yui_3_7_2_1_1369893861492_2816\"><span>&lsquo;&rsquo;Kita bersama para kader baik desa, kabupaten dan provinsi sudah semaksimal mungkin berjuang dan bekerjakeras agar program UP2K benar-benar terlaksana dengan baik,&rsquo;&rsquo; kata Sherrin.</span></span></p>\r\n<p id=\"yui_3_7_2_1_1369893861492_2819\"><span id=\"yui_3_7_2_1_1369893861492_2818\"><span>Keberhasilan UP2K Desa Kota Baru ini, tambah Sherrin, tidak lepas dari peran dan dukungan seluruh stakeholder yang terus dan tidak henti-hentinya memberi bantuan serta motivasi kepada kami. Keberhasilan ini bukan hanya milik warga Tanjung Jabung Timur saja, akan tetapi juga warga Provinsi Jambi seluruhnya.</span></span></p>\r\n<p id=\"yui_3_7_2_1_1369893861492_2821\"><span id=\"yui_3_7_2_1_1369893861492_2820\"><span>&lsquo;&rsquo;Kami sangat bangga atas keberhasilan ini. Dan kami tidak akan sampai disini saja, kami akan terus berusaha dan bekerja agar kedepan akan lebih baik lagi,&rsquo;&rsquo; ujarnya.</span></span></p>\r\n<p id=\"yui_3_7_2_1_1369893861492_2823\"><span id=\"yui_3_7_2_1_1369893861492_2822\"><span>Untuk itu, Sherrin berpesan kepada seluruh kader dan stakeholder untuk tidak mudah puas atas capaian yang didapat. Terus berkerja dan berkarya, keberhasilan ini adalah motivator bagi keberhasilan-keberhasilan dimasa yang akan datang.</span></span></p>\r\n<p><span id=\"yui_3_7_2_1_1369893861492_2824\"><span>&lsquo;&rsquo;Kami juga mengucapkan terimakasih kepada seluruh masyarakat Tanjung Jabung Timur dan pengurus PKK Provinsi Jambi yang telah bekerjasama dalam menyukseskan program ini. semoga kedepan kita akan lebih baik lagi,&rsquo;&rsquo; harapnya.</span></span></p>\r\n<p id=\"yui_3_7_2_1_1369893861492_2827\"><span id=\"yui_3_7_2_1_1369893861492_2826\"><span>Ditemui secara terpisah, Bupati Tanjung Jabung Timur Zumi Zola Zulkifli mengatakan, keberhasilan yang telah diraih UP2K Desa Kota Baru merupakan contoh sekaligus motivasi bagi seluruh kader baik di desa maupun kecamatan untuk semakin giat bekerja dalam menyukseskan seluruh program-program PKK.</span></span></p>\r\n<p id=\"yui_3_7_2_1_1369893861492_2709\"><span id=\"yui_3_7_2_1_1369893861492_2828\"><span>&lsquo;&rsquo;Kita patut bersyukur dan jangan mudah puas dengan apa yang dicapai saat ini. Kami, Pemkab akan terus&nbsp;<em>mensupport</em>&nbsp;kegiatan-kegiatan ini, apalagi yang langsung bersentuhan dengan masyarakat,&rsquo;&rsquo; katanya.</span></span></p>\r\n<p id=\"yui_3_7_2_1_1369893861492_2715\"><span id=\"yui_3_7_2_1_1369893861492_2716\"><span>Bahkan, tambah Zola, dirinya tidak tinggal diam dalam berbagai kegiatan-kegiatan yang dilaksanakan PKK. Ia juga sering turun langsung guna melihat pelaksanaan dan kegiatan yang dilaksanakan dilapangan.</span></span></p>\r\n<p><span>&lsquo;&rsquo;Ya, saya dan ibu (Ketua TP PKK Tanjab Timur, red) sering turun mengecek langsung kegiatan-kegiatan PKK. Ini merupakan wujud kepedulian dan dukungan kami sebagai Pemerintah Daerah untuk menyukseskan kegiatankegiatan PKK dilapangan,&rsquo;&rsquo; bebernya.</span></p>\r\n<p id=\"yui_3_7_2_1_1369893861492_2718\"><span>Untu itu, Zola menghimbau kepada seluruh stakeholder untuk membantu dan memotivasi kegiatan-kegiatan PKK.</span></p>\r\n<p id=\"yui_3_7_2_1_1369893861492_2717\"><span id=\"yui_3_7_2_1_1369893861492_2837\"><span>&lsquo;&rsquo;Kader-kader PKK ini merupakan salah satu ujung tombak pembangunan daerah. Dukungan dan program-program PKK juga membantu dalam pembangunan dan kemajuan daerah kami,&rsquo;&rsquo; imbuhnya.&nbsp;</span></span></p>\r\n<p><span>&nbsp;</span></p>', '', '', '', '', '', 'Sabtu', '2014-02-15', '0000-00-00', '15:14:55', '29Untitled-1.jpg', 4, ''),
(3, 1, 'ngadmin', 'Tanjab Timur Menuju Gerbang Ekonomi Jambi di Bawah Kepemimpinan Zumi Zola Zulkifli', '', '', '', 'tanjab-timur-menuju-gerbang-ekonomi-jambi-di-bawah-kepemimpinan-zumi-zola-zulkifli', 'Y', '<p>Perlahan namun pasti, peluang Kabupaten Tanjab Timur menjadi gerbang perekonomian Jambi kian mendekati kenyataan, setelah koridor utama menuju kabupaten tersebut terbuka lebar dengan berdirinya jembatan Muarasabak. Impian untuk mewujudkan rencana tersebut kini tinggal selangkah lagi, ketika Pemerintah Provinsi Jambi menetapkan Tanjung Jabung Timur sebagai lokasi pembangunan pelabuhan berskala internasional Ujung Jabung.</p>\r\n<p>Pelabuhan Ujung Jabung berada di jalur lintas strategis di bibir laut China Selatan. Titik koordinatnya tepat berseberangan dengan Pulau Berhala, di Sungai Itik, Kecamatan Sadu. Saat ini pembangunannya sudah dirintis dengan pembebasan lahan pelabuhan. Pemkab Tanjung Jabung Timur sudah menyiapkan lahan sekitar 4.200 hektare.</p>\r\n<p>Selain menyiapkan lokasi, Pemkab Tanjab Timur juga membuka akses jalan menuju pelabuhan. Dari&nbsp; pengkajian sementara, jalur menuju pelabuhan ini dapat dengan mudah dijangkau dari Kota Jambi, melalui Suak Kandis, Kecamatan Kumpeh, Kabupaten Muarojambi. Selepas perbatasan Kabupaten Tanjab Timur, melalui Jembatan Suak Kandis, maka akan masuk ke Kecamatan Berbak, Kecamatan Nipah Panjang, dan Kecamatan Sadu.</p>\r\n<p>Untuk kelancaran akses darat, mulai&nbsp; tahun anggaran 2014 Pemkab Tanjab Timur juga sudah memulai pembangunan jembatan Nipah Panjang sepanjang 360 meter, yang langsung menjangkau&nbsp; Kecamatan Sadu.</p>\r\n<p>&ldquo;Kita sepenuhnya mendukung pembangunan pelabuhan Ujung Jabung ini. Karena itu kita sudah merancang berbagai pembangunan yang menyokong pelabuhan ini,&rdquo; ujar Bupati Tanjung Jabungtimur Zumi Zola Zulkifli.</p>\r\n<p>Keberadaan pelabuhan Ujung Jabung &nbsp;diharapkan dapat menopang perekonomian Jambi yang lebih maju. Sebab, letaknya yang strategis, berada di jalur perdagangan segitiga emas, Singapura-Batam-Johor atau lebih popular disebut Sibajo.</p>\r\n<p>Diharapkan nantinya, pelabuhan ini dapat memangkas jalur ekspor Jambi, yang tidak lagi terkendala dengan tingginya biaya bongkar muat kapal yang selama ini mengandalkan Pelabuhan Talang Duku. Ini juga sebagai alternatif mengatasi pendangkalan yang kerap melanda Sungai Batanghari dan kerap menyulitkan kapal besar labuh jangkar di Talang Duku.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Gerbang Perekonomian</strong></p>\r\n<p>Bagi Kabupaten Tanjung Jabung Timur,&nbsp; pelabuhan Ujung Jabung juga menjadi daya dorong terhadap daerah ini. Karena Tanjungjabung Timur sejak lama sudah digadang-gadang akan menjadi pintu gerbang kedua perekonomian Jambi. Sebagai daerah yang berada di pesisir timur, kabupaten ini&nbsp; dianggap bisa menjadi pintu masuk bagi lalu lintas perdagangan.</p>\r\n<p>Sebutan sebagai pintu gerbang kedua ini merujuk dari keberadaan pelabuhan di Kota Kuala Tungkal, ibukota Kabupaten Tanjung Jabung Barat. Yang sejak lama sudah menjadi pelabuhan transit para tenaga kerja Indonesia yang datang dari Pulau Jawa, menuju Batam-Singapura-Malaysia.</p>\r\n<p>Karena kondisi Kuala Tungkal yang tidak memungkinkan dibangunnya pelabuhan bongkar muat peti kemas, maka Tanjung Jabung Timur dilirik untuk pengembangan konsep pelabuhan skala besar.&nbsp; Dan ini menjadi semacam pengembalian sejarah. Sebab, dulunya, di zaman Kerajaan Sriwijaya, disebutkan bahwa Muarasabak, ibukota Kabupaten Tanjung Jabung Timur kini, adalah pusat pelabuhan perdagangan.</p>\r\n<p>Terlepas dari sejarah penjang yang dimiliki Muarasabak, langkah awal untuk membangun pelabuhan di Muarasabak pun mulai dicetuskan. Dan itu sudah dimulai di era Gubernur Jambi Abdurrahman Sayoeti, saat ia pertama kali membangun pelabuhan samudra di Muarasabak.</p>\r\n<p>Gagasan ini kemudian diteruskan oleh Gubernur Jambi berikutnya, Zulkifli Nurdin, yang kemudian lebih jauh mengembangkan konsepnya dengan penjabaran yang lebih luas. Untuk pengembangan rencana tersebut didukung dengan membuka akses jalan lingkar di Tanjung Jabung Timur. Sehingga daerah ini nantinya bisa dijangkau dari dua sisi.&nbsp;</p>\r\n<p>Upaya merintis rencana tersebut dimulai dari dibangunnnya jembatan Suakkandis, di Kabupaten Muarojambi. Jembatan yang berada di perbatasan wilayah Kabupaten Muarojambi dan Tanjung Jabung Timur ini membelah Sungai Kumpeh.</p>\r\n<p>Setelah jembatan Suakkandis berhasil dituntaskan, rencana terus berlanjut dengan dibangunnya jembatan Berbak. Tidak jauh dari jembatan Berbak juga dibangun jembatan Palu. Nah, di saat bersamaan Pemerintah Provinsi Jambi mulai merintis ruas jalan dari sisi lain.</p>\r\n<p>Ruas yang dibangun ini merupakan jalur alternatif sekaligus akses pembuka jalan menuju konsep pintu gerbang kedua.&nbsp; Yakni Jembatan Batanghari II yang dibangun di Sijenjang, Kota Jambi. Jembatan yang memiliki panjang 2.270 meter itu&nbsp; merupakan&nbsp; jalur yang memangkas jarak tempuh menuju Muarasabak menjadi 72 kilometer.</p>\r\n<p>Pemkab Tanjab Timur sesuai dengan perjanjian awal ikut menyokong pembiayan&nbsp; pembangunan jembatan tersebut sebesar Rp 7 miliar, yang separuhnya telah dikucurkan pada anggaran 2003 lalu.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Koridor Tanjung Jabung Timur</strong></p>\r\n<p>Di awal pemerintahan Zumi Zola Zulkifli, pembangunan dibuka dengan diresmikannya jembatan Muarasabak sepanjang 737 meter. Jembatan yang membelah Sungai Batanghari ini menghubungkan Delta Berbak dan Sabak Daratan. Jembatan ini menjadikan Tanjung Jabung Timur dapat dijangkau melalui jalur darat. Dan harapan mantan Gubernur Jambi Zulkifli Nurdin, agar Tanjung Jabung Timur memiliki jalan lingkar tercapai dengan keberadaan jembatan ini.</p>\r\n<p>Selain berfungsi sebagai sarana transportasi, jembatan ini juga menjadikan roda perekonomian daerah ini lebih menggeliat. Karena hasil bumi dapat di angkut dengan mudah ke Kota Jambi. Dan jembatan ini juga membuka koridor pariwisata Tanjung Jabung Timur.</p>\r\n<p>Salah satu aset berharga yang dimiliki Tanjab Timur adalah Taman Nasional Berbak, yang dapat&nbsp; dengan mudah dikunjungi wisatawan. Taman nasional yang dikenal sebagai tempat persinggahan ribuan burung berbagai jenis dari Semenanjung Siberia, Rusia Bagian Timur ini, merupakan lahan basah terluas di Asia Tenggara.</p>\r\n<p>Zumi Zola Zulkifli, pun belum lama ini mengembangkan konsep manajemen wisata alam. Di mana jembatan Muarasabak menjadi pintu masuk yang memudahkan perjalanan wisata tersebut.</p>\r\n<p>Tidak berhenti sebatas jembatan Muara Sabak saja, Pemkab Tanjab Timur juga terus mendorong laju percepatan untuk membuka pintu gerbang kedua perekonomian Jambi. Untuk tahun anggaran 2013 sudah dianggarkan untuk mengganti empat jembatan menuju Delta Berbak.</p>\r\n<p>Empat jembatan itu adalah jembatan Sungai Siau, jembatan Kota Raja dan&nbsp; jembatan Lambur I dengan panjang masing-masing sekitar 40 meter. Satu jembatan lagi yakni jembatan Pemusiran&nbsp; memiliki panjang 59 meter. Semua pembangunan jembatan ini dianggarkan di APBD 2013.</p>\r\n<p>Sampai tahun 2016 nanti, sudah direncanakan untuk membangun dan melakkan rehab atas 300 jembatan di daerah ini.</p>\r\n<p>Pemkab Tanjab Timur memang terus menekankan program pembangunannya terhadap jalan dan jembatan. Semua itu untuk membuka akses singkat ke Pelabuhan Samudra, sekaligus memutus rantai isolasi yang menjadi beban berat bagi daerah ini. Kondisi jalan kabupaten saat ini sudah mencapai 952,23 kilometer. Yang tercatat masih dalam layak pakai tak kurang dari separuhnya. Sementara 36,1 persen dalam kondisi rusak</p>', '', '', '', '', '', 'Sabtu', '2014-02-15', '0000-00-00', '16:59:01', '6576ZUMI.jpg', 0, ''),
(4, 2, 'ngadmin', 'Bupati Zumi Zola Serahkan Bantuan 2 Unit Kapal 30 GT dan Dana PUMP', '', '', '', 'bupati-zumi-zola-serahkan-bantuan-2-unit-kapal-30-gt-dan-dana-pump', 'Y', '<p><span>Bupati Tanjungjabung Timur Zumi Zola Zulkifli kemarin (17/1) menyerahkan bantuan dari Kementerian Kelautan Republik Indonesia. Bantuan itu berupa dua unit kapal INKA MINA kapasitas 30 GT, kemudian bantuan dana Pengembangan Usaha MINA Pedesaan (PUMP) untuk perikanan tangkap sebesar Rp 1 Miliar dan bantuan dana PUMP untuk Pengolahan Hasil Perikanan sebesar Rp 150 juta.</span></p>\r\n<p><span>Untuk Bantuan kapal INKA MINA diserahkan kepada Kelompok Usaha Bersama (KUB) Kecamatan Nipah Panjang dan KUB Kecamatan Sadu. Sedangkan bantuan dana Pengembangan Usaha MINA Pedesaan (PUMP) perikanan tangkap diserahkan kepada kepada 18 KUB yang tersebar di Kecamatan Kuala Jambi, Mendahara, Nipah Panjang, Sadu dan Kecamatan Sabak Timur, masing-masing KUB mendapatkan sebanyak Rp 100 Juta. Sedangkan bantuan dana PUMP pengolahan hasil perikanan diserahkan kepada tiga KUB, masing-masing Rp 50 juta.</span></p>\r\n<p><span>Prosesi penyerahan bantuan dilaksanakan di aula Pusat Pelelangan Ikan (PPI) Majelis Hidayah kecamatan Kuala Jambi dan dihadiri oleh seluruh Kepala SKPD dan unsur Porkompimda. Bupati Tanjabtim Zumi Zola Zulkifli dalam sabutannya mengatakan Kabupaten Tanjabtim merupakan salah satu daerah yang kaya dengan potensi ikan dan sumber daya laut lainnya. Hanya saja, hasil tangkap nelayan di Tanjabtim belum tergarap secara keseluruhan, Padahal Tanjab Timur merupakan daerah yang sebagian besar mata pencahrian masyarakatnya adalah nelayan. â€œSaat ini hasil tangkapan nelayan baru tergarap sebanyak 40 persen. Ini akibat kurangnya teknologi masyarakat untuk menangkap ikan,â€ kata Zola.</span></p>\r\n<p><span>Kondisi ini membuat pemerintah Tanjabtim melalui program Bupati memberikan bantuan pompong berikut alat tangkap kepada nelayan kurang mampu di tahun 2012 lalu. Pemberian bantuan pompong beserta alat tangkap tersebut ternyata dirasakan masih kurang, oleh sebab itu, pemerintah kembali memberikan dua buah kapal tangkap lengkap dengan peralatan tangkap dengan kapasitas 30 GT dari Kementerian Kelautan.</span></p>\r\n<p><span>Selain untuk meningkatkan hasil tangkapan nelayan, bantuan ini juga bertujuan untuk meningkatkan jangkauan operasional para nelayan. â€œSelama ini yang terjadi banyak sekali kapal-kapal dari luar masuk diwilayah perairan kami. Hal ini dikarenakan operasi nelayan kami terbatas. Nah dengan adanya bantuan ini mudah-mudahan daya jelajah dan hasil tangkapan dapat semakin meningkat,â€ ujarnya.</span></p>\r\n<p><span>Menurut Zumi Zola, jika tidak ada aral melintang, pada tahun 2013 ini Kabupaten Tanjabtim akan kembali mendapatkan bantuan kapal 30 GT dari pemerintah pusat. â€œMudah-mudahan ini bisa berkesinambungan, dan menyelaraskan program kabupaten. Selain itu juga kami bisa lebih memaksimalkan hasil laut, yang nantinya berujung pada peningkatkan kesejahteraan nelayan,â€ harapnya.</span></p>\r\n<p><span>Sementara itu Kepala Dinas Kelautan dan Perikanan Kabupaten Tanjung Jabung Timur, Ahmad Riadi Pane mengatakan kelompok-kelompok nelayan yang menerima bantuan merupaka kelompok yang telah mengajukan proposal usulan bantuan dan telah diverifikasi serta diteliti oleh pemerintah.</span></p>\r\n<p><span>Pane juga menegaskan, sebelum penyerahan bantuan telah ada perjanjian tertulis antara KUB yang menerima bantuan dengan pemerintah tentang pemanfaatan dan pemeliharaan bantuan. Jika memang KUB tidak menjalankan isi perjanjian sesuai dengan pemanfaatan dan pemeliharaan, maka KUB tersebut akan dikenakan sanksi atau bahkan akan dilakukan penarikan.</span></p>\r\n<p><span>Menurut Pane, Selain bantuan kapal dan sejumlah dana, Pemerintah juga menyerahkan secara simbolis kartu nelayan. Kartu nelayan ini bertujuan untuk mempermudah menginventarisasi para nelayan yang ada di daerah. Selain kartu identitas Kartu Tanda Penduduk (KTP), kartu nelayan ini juga sangat penting dimiliki para nelayan karena merupakan salah satu syarat nantinya bagi nelayan dalam mengajukan bantuan kepada pemerintah</span></p>\r\n<p><span>Â </span></p>', '', '', '', '', '', 'Sabtu', '2014-02-15', '0000-00-00', '17:03:10', '301-17 - bantuan kapal - Kapal Imka Mina.jpg', 1, ''),
(5, 1, 'ngadmin', 'Sebelas PNS Terjaring Razia', '', '', '', 'sebelas-pns-terjaring-razia', 'Y', '<p><strong><span>MUARASABAK</span></strong><span>&nbsp;- Pemkab Tanjab Timur rupanya sedang gencar melakukan razia terhadap PNS Tanjab Timur. Seperti yang terjadi kemarin (14/1) Asisten III, Umar Mahmud bersama Kepala BKD, Abdul Rasid dan Satuan Polisi Pamong Praja (Satpol PP) kembali melakukan razia di warung-warung seputaran lingkup perkantoran. Dari razia yang dilakukan, sebanyak sebelas orang PNS terjaring razia diwaktu jam kerja. \"Sebelas orang ini terjaring tidak melaksanakan aktifitas dikantor dan ditemukan di warung-warung,\" ujar Asisiten III, Umar Mahmud kemarin.</span></p>\r\n<p>Dikatakannya, razia ini tidak berhenti hanya di seputaran perkantoran dan berlaku kepada PNS lingkup Tanjab Timur, akan tetapi juga dilakukan kepada tenaga pengajar seputaran wilayah perkantoran. \"Guru-guru juga ikut kami razia ini bertujuan untuk peningkatan pendidikan. Kami merasa kasihan jika anak dari rumah, anak berniat dan berdoa untuk belajar tetapi sesampai disekolah gurunya tidak ada,\" bebernya.<br />PNS yang terjaring razia, lanjut Umar, pihaknya akan tetap menindak sesauai dengan peraturan yang ada. Dan jika kedapatan PNS yang berulang-ulang maka akan dikenakan sanksi, bisa penundaan kenaikan pangkat, pemotongan TKD, bahkan mutasi. \"Dan ini tetap akan dilakukan sesaui dengan aturan,\" jelasnya.<br />Senada diungkapkan Kaban BKD Tanjab Timur, Abdul Rasid, jika dalam razia yang terjaring merupakan PNS yang sama dan berulang-ulang terjaring maka, apa yang dikatakan oleh Asisiten III itu, menurut rasid secara otomatis TKD akan terpotong. \"Bupati sangat menekankan disiplin PNS,\" katanya.</p>\r\n<p>Sementara itu, Peltu Sekda Tanjab Timur, Sudirman mengatakan razia yang dilakukan Asisten III bersama BKD dan Satpol PP merupakan tolak ukur dari peraturan Bupati. Dimana ketika jam bekerja namun PNS tidak berada diruangan berarti tidak melaksanakan pekerjaan dengan baik. \"Perda jelas tentang jam istrihat jam kerja istirahat. Tanpa membawa bukti izin keluar pada jam kerja kena tilang,\" jelasnya.<br />Sudirman mengatakan, sebelum melakukan razia, dalam setiap apel PNS dan formalitas telah diberitahukan kepada PNS mengenai waktu bekerja dan istirahat. Namun ketika formalitas telah dilanggar barulah dikenakan sanksi tegas. \"Ini adalah pembelajaran bagi PNS lain agar bekerja secara profesional,\" paparnya</p>', '', '', '', '', '', 'Sabtu', '2014-02-15', '0000-00-00', '17:04:52', '4301-14 - razia PNS - Razia PNS.jpg', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(2) NOT NULL,
  `id_subkategori` int(2) NOT NULL,
  `id_subdomain` int(2) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `kutipan` text COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `headline_utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `pilihan` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `text_foto` text COLLATE latin1_general_ci NOT NULL,
  `kredit` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `penulis` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `editor` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `sumber` varchar(400) COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `id_subkategori`, `id_subdomain`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `headline`, `headline_utama`, `aktif`, `pilihan`, `utama`, `isi_berita`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(392, 1, 0, 0, 'ngadmin', 'Bupati Kritisi Kinerja OPD', '', '', '', 'bupati-kritisi-kinerja-opd', 'Y', '', 'Y', '', '', '<p>Muarasabak- Bupati Tanjung Jabung Timur Rmi Hariyanto mengkritisi kinerja bawahannya. Hal ini terkait selama dua tahun terakhir baru mendapat nilai CC dari penilaian Sistim Akuntabilitas Kinerja Intansi Pemerintah (Sakip). Ia mengatakan, seharusnya kinerja OrganisasiPerangkat Daerah (OPD) harus naik dan lebih baik.</p>\r\n<p>\"Dua tahun ini kita dapat nilai CC, tahun ini seharusnya kita naik,\"&nbsp;kata Bupati.</p>\r\n<p>Menurutnya, selama dua tahun mendapatkan penilaian CC, jelas Bupati, bukan berarti Pemkab tidak bisa mendapatkan nilai lebih baik lagi. Akan tetapi harus ada kemauan dari OPD untuk mendapatkan nilai lebih baik lagi.</p>\r\n<p>&lsquo;&rsquo;Nilai kita tahun ini harus naik dari tahu lalu, kita bisa dan mampu, tinggal kemauan OPD lagi,&rsquo;&rsquo; tegasnya.</p>\r\n<p>Jika hal ini belum bisa, kata Bupati, artinya tidak ada kemamuan dan keinginan dari OPD. dan seudah jelas OPD tersebut tidak mendukung pemerintahan untuk bisa lebih baik dan dan bekerjasama dengan pemerintah.</p>\r\n<p>&lsquo;&rsquo;Saya sampaikan seperti ini karena saya yakin kita mampu,&rsquo;&rsquo; katanya.</p>', 'Bupati Tanjung Jabung Timur Romi Hariyanto melihat hasil kopi beberapa waktu lalu', '', '', '', 'Dinas Komunikasi dan Informatika', 'Selasa', '2019-04-16', '2019-04-16', '13:53:14', '24kopi.jpg', 233, ''),
(393, 1, 0, 0, 'ngadmin', 'Bupati Berikan Bantuan Korban Kebakaran', '', '', '', 'bupati-berikan-bantuan-korban-kebakaran', 'Y', 'N', 'Y', '', '', '<p>MUARASABAK- Bupati Tanjung Jabung Timur Romi Hariyanto bersama Wakil Bupati Tanjung Jabung Timur Robby Nahliansyah, Kapolres Tanjung Jabung Timur AKBP Agus Desri Sandi, Sekda Tanjung Jabung Timur Sapril beserta Kepala OPD Lingkup Pemkab Tanjung Jabung Timur langsung mengunjungi korban kebakaran di Parit 6 Desa Pangkal Duri Kecamatan Mendahara. Kedatangan Bupati dan rombongan kali ini guna bertemu dengan para korban sekaligus menyerahkan sejumlah bantuan.</p>\r\n<p><img src=\"http://tanjabtimkab.go.id/uploadan/52-IMG-20190513-WA0003.jpg\" alt=\"Bupati Kab. Tanjung Jabung Timur Romi Hariyanto mengunjungi korban kebakaran di Parit 6 Desa Pangkal Duri Kec. Mendahara\" width=\"1040\" height=\"780\" /></p>\r\n<p>Pada saat bertemu dengan para korban kebakaran, Bupati menyampaikan rasa duka terkait musibah yang melanda warga Desa Pangkal Duri dan berharap kepada korban dapat bersabar.</p>\r\n<p>&lsquo;&rsquo;Semoga diberikan ketabahan dan kesabaran karena ini semuanya ujian dari Allah, jika ada kebutuhan, agar segera di laporkan ke posko agar dapat ditindak lanjuti,&rsquo;&rsquo; kata Bupati.</p>\r\n<p>Ia menyadari bantuan yang diberikan Pemerintah saat ini memang belum optimal, &nbsp;untuk itu apabila ada kebutuhan belum dapat terpenuhi hari ini untuk didata sehingga dapat segera dipenuhi oleh Pemkab.</p>\r\n<p>&lsquo;&rsquo;Ini musibah bagi kita semua, tadi Pak Gubenur dan Pak Kapolda juga nitip salam mereka menyampaikan duka yang mendalam atas musibah ini,&rsquo;&rsquo; katanya.</p>\r\n<p>Musibah kebakaran ini sudah kerap kali terjadi di wilayah <em>Bumi Sepucuk Nipah Serumpun Nibung </em>ini, untuk itu Bupati menghimbau masyarakat agar selalu waspada, karena selain geografis daerah yang sulit juga kondisi bangunan yang rata-rata terbuat dari kayu yang mengakibatkan rentan terbakar.</p>\r\n<p>&lsquo;&rsquo;Saya minta kepada seluruh masyarakat untuk dapat bersabar, dan lebih hati-hati , kita tidak ingin kejadian ini terulang kembali,&rsquo;&rsquo; pintanya.</p>\r\n<p>Senada dengan itu, Kapolres Tanjab Timur AKBP. Agus Desri Sandi juga menyampaikan keprihatinannya dengan kejadian yang menimpa warga Pangkal Duri. Dirinya meminta agar warga yang terkena musibah, harus tabah tawakal karena ini ujian dari yang maha kuasa.</p>\r\n<p>Berdasarkan data sementara dari Dinas Sosial, Pemberdayaan Perempuan dan Perlindungan Anak Kabupaten Tanjab Timur, kerusakan rumah akibat kebakaran di Pangkal Duri, mencapai 67 Rumah hangus terbakar dan 6 rusak ringan karena memang harus dirobohkan. Pada kejadian ini ada 1 orang korban luka bakar. Dan untuk jiwa mencapai 208 Jiwa atau 72 Kepala Keluarga.</p>', 'Bupati Tanjung Jabung Timur Romi Hariyanto berdialog dengan warga Pangkal Duri', '', 'vendra', '', '', 'Senin', '2019-05-13', '2019-05-13', '02:12:49', '98img20190513wa0002-1.jpg', 232, ''),
(394, 1, 0, 0, 'ngadmin', 'Safari Ramadhan, Bupati Ingatkan Warga Lebih Waspada', '', '', '', 'safari-ramadhan-bupati-ingatkan-warga-lebih-waspada', 'Y', 'N', 'Y', '', '', '<p>MUARASABAK- Bupati Tanjung Jabung Timur Romi Hariyanto dan Wakil Bupati Tanjung Jabung Timur Robby Nahliansyah bersama sejumlah Kepala OPD melakukan kegiatan safari Ramadhan ke Desa Alang-Alang Kecamatan Muara Sabak Timur. Pada Safari Ramadhan kali ini, Bupati juga menyempatkan mengingatkan warga untuk lebih waspada dengan bahaya kebakaran. Terlebih bagi kawasan maupun pemukiman yang padat seperti Kecamatan Nipah Panjang, Mendahara, Kuala Jambi dan juga di Daerah Simbur Naik.</p>\r\n<p>&lsquo;&rsquo;Pesan saya, kita harus lebih waspada atau berhati-hati terhadap bahaya kebakaran,&rsquo;&rsquo; kata Bupati.</p>\r\n<p>Bupati menjelaskan, ia telah memerintahkan kepada seluruh Camat, Desa dan Lurah untuk tidak bosan mengingatkan warga terhadap resiko dan bahaya kebakaran.</p>\r\n<p>&lsquo;&rsquo;Tentu kita harus lebih teliti, misalnya ketika mau meninggalkan rumah semua harus di cek,&rsquo;&rsquo; katanya.</p>\r\n<p>Selain berbuka bersama dan tarawih berjamaah, rombongan Safari Ramadhan juga menyerahkan sejumlah bantuan dan bea siswa.</p>\r\n<p>&nbsp;</p>', 'Bupati Tanjung Jabung Timur Romi Hariyanto safari ramadhan di Desa Alang-Alang', '', 'vendra', '', '', 'Senin', '2019-05-20', '2019-05-20', '02:41:08', '31alang.jpg', 117, ''),
(395, 1, 0, 0, 'ngadmin', 'Sekda  : Mari Bangkit Untuk Bersatu', '', '', '', 'sekda---mari-bangkit-untuk-bersatu', 'Y', 'N', 'Y', '', '', '<p><strong><img src=\"http://tanjabtimkab.go.id/uploadan/LIE_2033.jpg\" alt=\"\" width=\"818\" height=\"545\" /></strong></p>\r\n<p><strong>MUARASABAK- </strong>Pada upacara bendera peringatan Hari Kebangkitan Bangsa (Harkitnas) ke 111 Tahun 2019 digelar&nbsp;di lapangan Kantor Bupati Tanjung Jabung Timur, Senin (20/5) yang dipimpim langsung oleh Sekretaris Daerah Kabupaten Tanjung Jabung Timur, Sapril mengajak seluruh ASN untuk bangkit bersatu pada momentum peringatan Harkitnas tahun ini.</p>\r\n<p>Dalam teks pidato Menteri Komunikasi dan Informatika RI&nbsp; yang dibacakan Sekda menyampaikan Peringatan Harkitnas ke 111 ini sangat relevan jika dimaknai dengan teks Sumpah Palapa. Kita berada dalam paska pesta demokrasi yang menguras energi dan emosi sebagian besar masyarakat. Kita mengapresiasi pilhan yang berbeda-beda dalam pemilu, namun semua pilihan pasti kita niatkan untuk kebaikan bangsa.</p>\r\n<p>&lsquo;&rsquo;Oleh sebab itu tak ada maslahatnya jika dipertajam dan justru mengoyak persatuan sosial kita,&rsquo;&rsquo; kata Sekda.</p>\r\n<p>Peringatan Harkitnas tahun ini sedikit berbeda, karena dilaksanakan dalam bulan Ramadhan. Bagi umat muslim, bulan suci ini menuntun kita untuk mengejar pahala denganmeninggalkan perbuatan-perbuatan yang dibenci Allah SWT, seperti permusuhan dan kebencian apalagi penyebar kebohongan atau fitnah. Kita berharap diakhir puasa ramadhan nanti kita dapat mengakhiri puasa dengan hati dan linkungan yang bersih berkat hubungan yang kembali fitri dengan saudara-saudara kita disekitar.</p>\r\n<p>&lsquo;&rsquo;Dengan harapan kiranya sangat relevan apabila Harkitnas ini disematkan tema Bangkit Untuk Bersatu, kebangkitan untuk persatuan,&rsquo;&rsquo; tandasnya.</p>\r\n<p>&nbsp;<img src=\"http://tanjabtimkab.go.id/uploadan/LIE_2048.jpg\" alt=\"Anggota Polres Tanjab Timur ikut upacara Harkitnas\" width=\"300\" height=\"200\" /></p>\r\n<p><img src=\"http://tanjabtimkab.go.id/uploadan/LIE_2050.jpg\" alt=\"Personil TNI juga ikut dalam Upacara Harkitnas\" width=\"300\" height=\"200\" /></p>\r\n<p>&nbsp;<img src=\"http://tanjabtimkab.go.id/uploadan/LIE_2062.jpg\" alt=\"para siswa yang mengikuti upacara Harkitnas\" width=\"400\" height=\"267\" /></p>', 'Sekda Kabupaten Tanjung Jabung Timur, Sapril', '', '', '', '', 'Senin', '2019-05-20', '2019-05-20', '03:19:32', '33lie_2041.jpg', 156, ''),
(397, 1, 0, 0, 'ngadmin', 'Petrochina Serahkan CSR Rp. 21 M', '', '', '', 'petrochina-serahkan-csr-rp-21-m', 'Y', 'N', 'Y', '', '', '<p>MUARASABAK- Petro China Jabung Ltd menyerahkan bantuan sosial CSR tahun 2018, sebesar Rp. 21.413.840.000. Bantuan ini telah terealisasi dalam bentuk 10 item pembangunan. Diantaranya, pembangunan Gedung sanitasi SMPN 21 Tanjabtim Talang Babat, SDN 113 Pandan Makmur, Pembangunan Gedung Perpustakaan SDN 120 Kota Harapan dan Pengaspalan jalan Pangkal Bulian-Nibung Putih. Penyerahan secara simbolis dan penandatangan berita acara dilakukan langsung oleh Bupati Tanjab Timur, Romi Hariyanto, Perwakilan SKK Migas Pusat, Syafei, Kepala Humas SKK Migas Sumbagsel, Andi Ari, Vice President Human Resources and Relations Petrocina, Maryke Pulunggono dan Sekda Tanjab Timur, Sapril.</p>\r\n<p>Maryke Pulunggono Vice mengatakan, bantuan tanggung jawab sosial yang diberikan Petrochina merupakan bentuk kepedulian dan partisipasi kepada Pemkab dan masyarakat Tanjab Timur, khusuanya masyarakat yang berada disekitar daerah oprasional Petrochina.</p>\r\n<p>&lsquo;&rsquo;Dan bantuan yang kami salurkan ini telah kita padukan dengan Program Pemda Tanjab Timur. Artinya, apa yang kami lakukan tentu atas persetujuan dan hasil koordinasi kita dengan Bapak Bupati,&rsquo;&rsquo; katanya.</p>\r\n<p>Sementara itu, Bupati Tanjung Jabung Timur mengapresiasi dan berterimakasih atas realisasi CSR di <em>bumi sepucuk nipah serumpun nibung.</em> Harapannya, kedepan agar dapat dilakukan secara berkesinambungan.</p>\r\n<p>&lsquo;&rsquo;Kami tentu berharap agar komitmen yang kita sepakati direalisasikan,&rsquo;&rsquo; bebernya.</p>\r\n<p>Disisilain, Pemkab juga memiliki kewajiban untuk memberikan kenyamanan dan keamanan kepada Petrochina dalam menjalankan investasinya.</p>\r\n<p>&lsquo;&rsquo;Kami berkomitmen dengan itu. Makanya, kami juga berharap agar komunikasi dan kerjasama yang baik ini dapat berkesinambungan,&rsquo;&rsquo; harapnya.</p>\r\n<p>Selain buka bersama dengan SKK Migas dan PT. Petrochina Jabung Ltd, Bupati juga menyambut kedatangan Syekh Adil Soleh Kholil dari Palestina beserta rombongan Yayasan Kasih Palestina. Sebelum berbuka, Syekh Adil Soleh Kholil memberikan ceramah agama yang mengajak muslim dunia menyelamatkan Masjidil Aqsho dari gempuran Israel dan mendoakan agar masyarakat Pelestina yang menjaga dan mempertahanakan Masjidil Aqsho diberi kekuatan.<img src=\"http://tanjabtimkab.go.id/uploadan/petro%201.jpg\" alt=\"Syekh Adil Soleh Kholil \" width=\"806\" height=\"538\" /></p>\r\n<p>Pada kesempatan tersebut Bupati secara spontan menyumbang sebesar Rp. 20 Juta untuk Palestina. Sementara itu, Wakil Bupati Tanjab Timur Robby Nahliyansyah mengumrohkan masyarakat Kecamatan Geragai, yang rela menyumbangkan tabungan Umrohnya untuk Palestina.</p>\r\n<p>Hadiah Umroh ini diberikan Wabup, saat Syekh Adil Soleh Kholil dari Palestina beserta rombongan Yayasan Kasih Palestina melanjutkan Safari Ramadan di Masjid Nurul Hidayah Stejing, Kecamatan Geragai. Sebelum melaksanakan Salat Tarawih, Yayasan Kasih Palestina melakukan penggalangan dana untuk Palestina yang diawali dengan Ceramah Agama oleh Syekh Adil Soleh Kholil.</p>\r\n<p>Saat penggalangan dana, Ibu paruh baya langsung maju kedepan dan menyatakan menyumbang uang sebesar Rp. 5 Juta untuk Palestina. Setelah ditanya, uang yang disumbangkannya itu merupakan tabungannya selama ini, yang direncanakan untuk berangkat Umroh. Mendengar jawaban itu, Wabup langsung menyatakan akan memberangkatkannya Umroh.</p>\r\n<p>&lsquo;&rsquo;Insyallah akan berangkat pada Umroh Akbar bersama Bapak Bupati awal Januari 2020 mendatang,&rsquo;&rsquo; tandasnya.<img src=\"http://tanjabtimkab.go.id/uploadan/petro%202.jpg\" alt=\"Bupati Tanjung Jabung Timur Romi Hariyanto bersama SKK Migas\" width=\"500\" height=\"334\" /></p>', 'penandatanganan berita acara penyerahan CSR Petro China ', '', '', '', '', 'Selasa', '2019-05-21', '2019-05-21', '04:22:09', '57petro.jpg', 181, ''),
(398, 1, 0, 0, 'ngadmin', 'Bupati Safari Ramadhan di Kuala Jambi', '', '', '', 'bupati-safari-ramadhan-di-kuala-jambi', 'Y', 'N', 'Y', '', '', '<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: justify; line-height: 16.9pt; background: white;\"><span style=\"color: black;\">MUARASABAK- Bupati Tanjung Jabung Timur Romi Hariyanto didampingi Dandim 0419 Tanjab Letkol. Inf. M. Arry Yudistira S. IP, M.I. Pol, Kapolres Tanjung Jabung Timur AKBP. Agus Desri Sandi, S. IK, MM dan Wakil Bupati Tanjung Jabung Timur Robby Nahliansyah melaksanakan kegiatan Safari Ramadhan di Kecamatan Kuala Jambi. Dalam sambutanya, Bupati menyampaikan agar tetap menjaga keutuhan persatuan dan kesatuan bangsa serta jangan mudah terprovokasi dengan isu-isu yang dapat memecah belah persatuan. </span></p>\r\n<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: justify; line-height: 16.9pt; background: white;\"><span style=\"color: black;\">&lsquo;&rsquo;Pemilu telah usai, siapapun yang terpilih itulah pilihan rakyat, mari kita dukung demi kemajuan Republik Indonesia ini,&rsquo;&rsquo; ungkapnya. </span></p>\r\n<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: justify; line-height: 16.9pt; background: white;\"><span style=\"color: black;\">Safari ramadhan yang bertempat di Masjid Jami AlIhsan Desa Kuala Lagan tersebut, juga dilakukan penyerahan bantuan hibah dari Pemkab Tanjung Jabung Timur berupa uang senilai Rp.15 Juta, ambal dan dana tanggap bencana sebesar Rp. 6 Juta. </span></p>\r\n<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: justify; line-height: 16.9pt; background: white;\"><span style=\"color: black;\">Sementara itu, Kapolres Tanjung Jabung Timur juga menghimbau kepada masyarakat yang hadir agar tidak terpengaruh dan terprovokasi dengan isu yang belum tentu kebenarannya.</span></p>\r\n<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: start; line-height: 16.9pt; background: white; box-sizing: border-box; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span style=\"color: black;\">&lsquo;&rsquo;Jika mendengar atau mendapat berita apa lagi berita tersebut didapatkan dari sosmed agar jangan disebarkan, tapi Check terlebih dahulu atau bila perlu menanyakan langsung kepada aparat pemerintah baik Kecamatan, TNI, dan Polri atau sumber yang bisa kita percaya,&rsquo;&rsquo; tandasnya. </span></p>', 'Bupati Tanjung Jabung Timur Romi Hariyanto beberapa waktu lalu', '', '', '', '', 'Kamis', '2019-05-23', '2019-05-23', '03:46:15', '81bupati-tjt.jpg', 103, ''),
(399, 1, 0, 0, 'ngadmin', 'Bupati Dampingi Gubernur Kunjungi Korban Kebakaran', '', '', '', 'bupati-dampingi-gubernur-kunjungi-korban-kebakaran', 'Y', 'N', 'Y', '', '', '<p>MUARASABAK- Bupati Tanjung Jabung Timur Romi Hariyanto mendampingi Gubernur Jambi Fachrori Umar mengunjungi korban kebakaran di Desa Pangkal Duri Kecamatan Mendahara. Pada kunjungan ini, Bupati bersama Gubernur selain memberikan bantuan juga menghibur para korban hingga bernyanyi bersama.</p>\r\n<p>Bupati menyampaikan bahwa Pemkab dan Pemprov dapat merasakan musibah yang melanda masyarakat Desa Pangkal Duri. Ia mengaku, ia selalu meminta laporan kepada Camat dan Kepala Desa, terkait kabar warga yang terkena musibah.</p>\r\n<p>&lsquo;&rsquo;Yakinlah Bapak-Ibu sekalian tidak sendiri. Ada kami, Pak Gubernur juga, meskipun sibuk beliua rela kesini demi untuk bertemu dengan kita semua,&rdquo; ungkapnya sedih.</p>\r\n<p>Bupati juga mengajak semua korban untuk bangkit, dengan cara berusaha dan berdoa. Dan Romi juga mengapresiasi dan berterimakasih kepada &nbsp;semua pihak yang telah menyalurkan bantuan kepada masyarakat yang terkena musibah.</p>\r\n<p>&ldquo;Selain itu kami juga masih mengupayakan agar Kementrian turut membantu untuk pembangunan rumah. Dan hari ini (red_kemarin) insya allah dari Kementrian akan turun. Jika ini terealisasi tentu ini sangat membantu,&rdquo;jelasnya.</p>\r\n<p>Semenatar itu, Gubernur Jambi Fachrori Umar sempat meneteskan air mata saat berada di posko korban kebakaran Pangkal Duri. Gubernur bercerita, saat kejadian dirinya sedang berada di Jakarta. Sementara dua minggu terakhir cukup banyak kegiatan yang tidak dapat ia tinggalkan. Makanya, baru kali ini dirinya dapat mendatangi k<img src=\"http://tanjabtimkab.go.id/uploadan/FB_IMG_1558669223530.jpg\" alt=\"\" width=\"779\" height=\"519\" />orban.</p>\r\n<p>&ldquo;Saya mohon maaf baru bisa kesini. Tapi, saya selalu tanya dengan Pak Bupati, dan Alhamdulillah hari ini baru kesini,&rdquo;ungkapnya.</p>\r\n<p>Pada kesempatan itu, tidak banyak yang disampikan Gubernur, dirinya hanya memotivasi agar korban bangkit atas musibah yang melanda. Gubernur juga sempat bernyanyi bersama di posko korban kebakaran Desa Pangkal Duri. Sementara itu, pada kesempatan ini Gubernur dan Bupati juga menyerahkan beberapa bantuan, diantaranya bantuan sembako dan uang tunai kepada korban.</p>\r\n<p>&nbsp;</p>', 'Gubernur Jambi Fachrori Umar menyampaikan sambutannya', '', '', '', '', 'Jumat', '2019-05-24', '2019-05-24', '04:05:27', '96fb_img_1558669257087.jpg', 118, ''),
(400, 1, 0, 0, 'ngadmin', 'Lagi, Tanjab Timur Raih WTP', '', '', '', 'lagi-tanjab-timur-raih-wtp', 'Y', 'N', 'Y', '', '', '<p>MUARASABAK-Pemerintah Kabupaten Tanjung Jabung Timur kembali berhasil meraih predikat Opini Wajar Tanpa Pengecualian (WTP) dari Badan Pemeriksa Keuangan (BPK) Republik Indonesia. Pemberian predikat WTP ini terhadap pengelolaan keuangan tahun anggaran 2018. Penyerahan Laporan Hasil Pemeriksaan (LHP) BPK tersebut diserahkan langsung kepala BPK perwakilan Jambi Hery Ridwan kepada Bupati Tanjab Timur Romi Hariyanto, di kantor BPK RI Perwakilan Provinsi Jambi di Jambi, Jumat (24/5).</p>\r\n<p>Kepala BPK Perwakilan Provinsi Jambi kepada Bupati menyampaikan perlunya pembenahan beberapa strategi pengelolaan anggaran. Di antaranya sistem pengendalian intern yang perlu lebih dioptimalkan. Begitu pula pengawasan lapangan terhadap pekerjaan fisik pembangunan.</p>\r\n<p>&ldquo;Agar lebih dioptimalkan sehingga bisa efektif memastikan proses pembangunan yang dilaksanakan sesuai perencanaan,&rdquo; kata Heri.</p>\r\n<p>Ia juga menekankan pentingnya memastikan lebih serius semua tahapan pengadaan barang dan jasa. Bupati usai menerima LHP mengaku sangat berterima kasih kepada BPK RI perwakilan Jambi yang sudah melalukan pemeriksaan anggaran 2018 dengan opini WTP. Ia juga menyampaikan terima kasih kepada seluruh aparatur Tanjabtim yang tersebar di seluruh OPD.</p>\r\n<p>&ldquo;Ini prestasi saudara &ndash; saudara sekalian para pengelola program dan kegiatan. Saya berharap hal ini bisa dipertahankan, dan yang terpenting ikuti saran dan arahan BPK dengan serius. Pasti semua arahan dan saran itu untuk kebaikan kita,&rdquo; kata Bupati.</p>\r\n<p>Sejak kepemimpinan Bupati dan Wakil Bupati yang dilantik pada 12 April 2016 silam, <em>Bumi Sepucuk Nipah Serumpun Nibung </em>sudah dua kali mendapat opini WTP secara berturut &ndash; turut dari 2017 dan 2018. Sedangkan tahun pertama memimpin, 2016, Romi &ndash; Robby hanya diberi opini Wajar Dengan Pengecualian (WDP).</p>\r\n<p>Inspektur Kabupaten Tanjung Jabung Timurt, Suhas Purrojani mengatakan, sejak dilantik Bupati emang tegas soal pengawasan dan supervisi terhadap pengelolaan anggaran.</p>\r\n<p>Selain Bupati, acara penyerahan LHP sendiri tampak dihadiri pula oleh wakil ketua DPRD Tanjabtim Markaban, Kaban Keuangan Daerah Nusirwan, Inspektur Suhas Purrojani dan sejumlah pejabat Tanjabtim.</p>\r\n<p>&nbsp;</p>', 'Penyerahan LHP BPK RI kepada Pemkab Tanjung Jabung Timur', '', '', '', '', 'Senin', '2019-05-27', '2019-05-27', '01:51:44', '57wtp-2018.jpg', 204, ''),
(401, 1, 0, 0, 'ngadmin', 'Tim Peduli Bencna Kembali Serahkan Bantuan ', '', '', '', 'tim-peduli-bencna-kembali-serahkan-bantuan-', 'Y', 'N', 'Y', '', '', '<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: justify; line-height: 19.5pt; background: white;\"><span style=\"color: #222222;\">MUARASABAK- Tim Peduli Bencana Kabupaten Tanjung Jabung Timur, kembali menyerahkan bantuan kepada korban kebakaran di Desa Pangkal Duri Kecamatan Mendahara. Kali ini bantuan yang diserahkan sebesar Rp 73 Juta. Penyaluran ini langsung diserahkan secara simbolis oleh Bupati Tanjab Timur Romi Hariyanto, Kamis (23/5) lalu. Bantuan ini diserahkan kepada seluruh Kepala Keluarga (KK) korban kebakaran. Masing-masing KK akan mendapatkan bantuan sebesar Rp 1 Juta/KK. Seperti yang diketahui, bantuan pertama kali yang diserahkan Tim Peduli pada 2 hari pasca kejadian dengan besaran Rp 25 Juta yang dirinci Rp 15 Juta berupa barang dan Rp. 10 Juta berupa uang.</span></p>\r\n<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: start; line-height: 19.5pt; background: white; box-sizing: border-box; overflow-wrap: break-word; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span style=\"color: #222222;\">&ldquo;Ini untuk membantu menjelang Idul Fitri ini. Ini merupakan bantuan masyarakat yang disalurkan melalui rekning Tanjung Jabung Timur Peduli,&rdquo; ungkap Bupati saat menyerahkan bantuan kepada Kepala Desa Pangkal Duri, Khalikin.</span></p>\r\n<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: start; line-height: 19.5pt; background: white; box-sizing: border-box; overflow-wrap: break-word; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span style=\"color: #222222;\">Dijelaskannya, bantuan yang masuk ke rekning Tim Peduli terus mengalir. Hal ini membuktikan jika kebersamaan dan rasa peduli antar sesama cukup tinggi di Provinsi Jambi. dan ini menjadi modal bagi Provinsi Jambi dan Tanjab Timur khususnya.</span></p>\r\n<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: start; line-height: 19.5pt; background: white; box-sizing: border-box; overflow-wrap: break-word; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span style=\"color: #222222;\">&ldquo;Bantuan yang diterima Tim Peduli ini akan disalurkan secara bertahap. Dan melalui media ini kami sampaikan, atas nama Bupati dan Pemerintah menngucapkan terimakasih kepada masyarakat yang telah membantu keluarga kita yang terkena musibah,&rdquo;jelasnya.</span></p>\r\n<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: start; line-height: 19.5pt; background: white; box-sizing: border-box; overflow-wrap: break-word; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span style=\"color: #222222;\">Sementara itu, Arapik Ketua Tim Donasi Tanjab Timur Peduli Arapik mengatakan, saat ini saldo di rekening Tanjung Jabung Timur Peduli masih tersisa sekitar 100 juta. Sisa saldo ini akan kembali disalurkan, namun masih menunggu jika masih ada masyarakat ataupun instansi yang ingin berdonasi.</span></p>\r\n<p style=\"margin: 0cm; margin-bottom: .0001pt; text-align: start; line-height: 19.5pt; background: white; box-sizing: border-box; overflow-wrap: break-word; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span style=\"color: #222222;\">Makanya, Tim Peduli tetap membuka rekening donasi bagi siapapun yang ingin berdonasi melalui rekening 3002067338 Bank 9 Jambi (Bank BPD Jambi), atas nama Tanjung Jabung Timur Peduli.</span></p>', '', '', '', '', '', 'Kamis', '2019-05-23', '2019-05-23', '02:05:16', '99fb_img_1557460209350.jpg', 111, ''),
(402, 3, 0, 0, 'ngadmin', 'Bupati dan Wabup Gelar Open House', '', '', '', 'bupati-dan-wabup-gelar-open-house', 'Y', 'N', 'Y', '', '', '<p>MUARASABAK- Bupati dan Wakil Bupati Tanjung Jabung Timur Romi Hariyanto dan Robby Nahliansyah menggelar <em>open house </em>setelah pelaksanaan Salat Idul Fitri 1440 H di Rumah Dinas. Tampak hadir dalam <em>open house </em>tersebut sejumlah kepala Perangkat Daerah dan masyarakat.</p>\r\n<p>Ditemui disela-sela kegiatan tersebut, Bupati dan Wabup menuturkan, dihari kemenangan ini ia berharap amal ibadah Puasa Ramadhan tahun ini dapat diterima oleh Allah SWT.</p>\r\n<p>&lsquo;&rsquo;Kegiatan <em>open house </em>&nbsp;ini setiap tahunnya kita lakukan, ini sebuah ajang silaturrahmi kami bersama masyarakat dalam rangka idul fitri,&rsquo;&rsquo; katanya.</p>', 'Suasana setelah salat Idul Fitri di Masjid Nur Addarojad Muara Sabak Barat', '', '', '', '', 'Rabu', '2019-06-05', '2019-06-05', '02:43:14', '40img20190611wa0048696x392.jpg', 65, ''),
(403, 1, 0, 0, 'ngadmin', 'PKK Desa Sido Mukti Wakili Jambi ke Lomba Tingkat Nasional', '', '', '', 'pkk-desa-sido-mukti-wakili-jambi-ke-lomba-tingkat-nasional', 'Y', 'N', 'Y', '', '', '<p>MUARASABAK &ndash; PKK Kabupaten Tanjung Jabung Timur kembali meraih prestasi membanggakan. Kali ini, melalui PKK Desa Sido Mukti Kecamatan Dendang, berhasil mewakili Provinsi Jambi pada ajang lomba Tertib Administasi PKK tingkat Nasional. Tak tanggung-tanggung, sejumlah persiapan pun terus dimatangkan guna menyambut penilaian pada lomba tersebut.</p>\r\n<p>Ketua TP PKK Kabupaten Tanjung Jabung Timur Wirdayanti melalui Wakil Ketua II TP PKK Nurmaya Sapril menuturkan, terpilihnya PKK Desa Sido Mukti mewakili Provinsi Jambi ini berkat kerja keras dan keuletan anggota dan pengurus PKK desa tersebut. Tentunya, kata Nurmaya, TP PKK Kabupaten akan terus mensupport dan akan memberikan yang terbaik bagi <em>Bumi Sepucuk Nipah Serumpun Nibung. </em></p>\r\n<p>&lsquo;&rsquo;Kita akan berbuat yang terbaik. Tentu dengan harapan mendapatkan nilai yang terbaik pula,&rsquo;&rsquo; katanya.</p>\r\n<p>Pada lomba kali ini, difokuskan pada lomba tertib administrasi PKK yang berbasis IT (Informasi Teknologi). Tim penilai dijadwalkan akan mengunjungi Kabupaten Tanjung Jabung Timur pada 17 Juni mendatang.</p>\r\n<p>&lsquo;&rsquo;Insyallah, semua persiapan terus akan kita lakukan. Kita mohon doa dan dukungan dari seluruh masyarakat untuk kesuksesan lomba itu nanti,&rsquo;&rsquo; harapnya.</p>\r\n<p>&nbsp;</p>', 'Tampak beberapa baligho ajakan menggunakan IT guna tertib administrasi PKK', '', 'vendra', '', '', 'Kamis', '2019-06-13', '2019-06-13', '09:10:02', '18whatsapp-image-20190613-at-17.17.37.jpeg', 80, ''),
(404, 1, 0, 0, 'ngadmin', 'Berbasis IT, Administrasi PKK Tanjab Timur Melaju ke Tingkat Nasional', '', '', '', 'berbasis-it-administrasi-pkk-tanjab-timur-melaju-ke-tingkat-nasional', 'Y', 'N', 'Y', '', '', '<p>MUARASABAK- PKK Desa Sido Mukti Kecamatan Dendang berhasil mewakili Provinsi Jambi pada lomba tertib administrasi PKK tingkat Nasional. Ketua TP PKK Kabupaten Tanjung Jabung Timur bersama pengurus, Minggu (16/6) langsung menyambut kedatangan Tim Penilai dari PKK Pusat, di Rumah Dinas Bupati Tanjab Timur.</p>\r\n<p>Kehadiran tim penilai pada lomba kali ini tentu menjadi kebanggaan tersendiri bagi <em>Bumi Sepucuk Nipah Serumpun Nibung. </em>Pasalnya, selain membawa dampak positif bagi semnagat para kader dan pengurus PKK karena mewakili Provinsi Jambi ke tingkat Nasional, prestasi ini juga akan memperpanjang deretan prestasi di kancah tingkat nasional bagi Kabupaten Tanjung Jabung Timur.</p>\r\n<p>Dalam sambutannya, Wirdayanti Romi mengatakan, di percaya mewakili Provinsi Jambi dan kedatangan tim penilai Lomba tertib administrasi PKK dari pusat merupakan pengalaman yang sangat berharga dan menjadi berkah bagi masyarakat Tanjabtim.</p>\r\n<p>&ldquo;Ini ajang bergengsi apalagi tingkat nasional. Persiapan sudah semaksimal mungkin dan kita persiapan dengan ekstra,&rdquo; ungkapnya.</p>\r\n<p>Dalam kesempatan itu pula, Wirdayanti Romi menjelaskan tentang beberapa kegiatan yang dilaksanakan TP PKK Kabupaten Tanjab Timur. Dalam melaksanakan 10 program pokok PKK tersebut, keberhasilannya didukung oleh pelaksanaan tertib administrasi PKK dengan menggunakan IT. Lewat IT, program PKK berjalan dengan sangat baik, apalagi wilayah Kabupaten Tanjung Jabung Timur yang terdiri&nbsp; dari 11 Kecamatan cukup jauh. Dengan memanfaatkan penggunaan Teknologi Informasi seperti pemamfaatan aplikasi Whatsapp, Website, E-reporting dan buku tamu online serta fasilitas IT lainnya akan mempermudah administrasi PKK.</p>\r\n<p>&ldquo;Dengan berbasis IT ini sangat mempermudahkan, kecepatan dan ketepatan data di karenakan kondisi wilyah Tanjabtim yang juah dan sulit dijangkau,&rdquo; jelasnya.</p>\r\n<p>Tidak hanya itu pula lanjutnya, berkat dukungan dari Pemerintah Daerah melalui OPD dan pihak terkait seperti mitra kerja PKK. Terjalin kerjasama yang tertuang dalam MoU di setiap Kecamatan. Sehingga melahirkan sejumlah prestasi&nbsp; diantaranya juara 1 lomba tertib adminsitrasi Tingkat Provinsi Jambi tahun 2018, juara 1 lomba IVA Test Tingkat Provinsi Jambi tahun 2018, mendapat penghargaan Manggala Karya Kencana perwakilan dari BKKBN Pusat tahun 2018.</p>\r\n<p>Sementara itu, Bupati Kabupaten Tanjung Jabung Timur Romi Hariyanto selaku pembina PKK Tanjung Jabung Timur mengatakan, meski dengan segala keterbatasan Bupati sangat bersyukur daerahnya bisa mewakili Provinsi Jambi dalam ajang lomba tertib administrasi PKK ke tingkat Nasional.</p>\r\n<p>&rsquo;&rsquo;Kepada PKK Provinsi, terimkasih sudah memberikan kepercayaan kepada Kabupaten Tanjabtim. Ini merupakan suatu kebanggaan bagi masyarakat dan Pemerintah Daerah,&rdquo; unkapnya.</p>\r\n<p>Apapun hasilnya nanti tambah Bupati, Kader PKK harus terima, karena sudah terpilih dan ikut merupakan suatu hal yang membanggakan. Baik dan buruk bisa meraih prestasi atau tidak kader PKK harus tetap terima.</p>\r\n<p>&ldquo;Semoga ini menjadikan nilai tambah untuk semangat kita bersama khususnya Kades, PKK. Dan yakinlah PKK kedepan makin jaya,&rdquo; katanya.</p>', 'penyambutan tim penilai di Rumah Dinas Bupati Tanjung Jabung Timur', '', 'vendra', '', '', 'Minggu', '2019-06-16', '2019-06-16', '01:42:56', '34fb_img_1560730678177.jpg', 64, ''),
(405, 1, 0, 0, 'ngadmin', 'Bupati Serahkan 8 SK CPNS Dari Tenaga PTT', '', '', '', 'bupati-serahkan-8-sk-cpns-dari-tenaga-ptt', 'Y', 'N', 'Y', '', 'Y', '<p>MUARASABAK- Bupati Tanjung Jabung Timur Romi Hariyanto, Rabu (19/6) menyerahkan 8 SK CPNS bagi 8 orang tenaga PTT dari Kementerian Kesehatan RI yang bertempat di ruang utama Kantor Bupati. Kedelapan orang PTT tersebut terdiri dari 1 orang dokter dan 7 orang bidan yang merupakan tenaga kesehatan yang bertugas dalam wilayah <em>Bumi Sepucuk Nipah Serumpun Nibung. </em></p>\r\n<p>Pada penyerahan kemarin, Bupati mengingatkan kepada para CPNS untuk tidak terburu-buru menggadaikan SK tersebut ke Bank untuk mengajukan pinjaman uang. Hal ini disampaikan Bupati bukan tidak memiliki alasan. Menurut Bupati, dengan mengajukan pinjaman ke Bank dan gaji yang minus diterima pegawai akan berdampak juga pada kualitas kinerja pegawai tersebut. &nbsp;</p>\r\n<p>&lsquo;&rsquo;Boleh mengajukan pinjaman, asalkan benar-benar punya manfaat yang jelas,&rsquo;&rsquo; pinta Bupati.</p>\r\n<p>Selain itu juga Bupati juga menegaskan kepada delapan CPNS tersebut untuk tidak mengajukan permohonan pindah. Ia meminta komitmen dari seluruh Aparatur Sipil Negara (ASN) Lingkup pemekab Tanjung Jabung Timur untuk membangun Kabupaten ini.</p>\r\n<p>&lsquo;&rsquo;Komitmen itu harus kuat, jangan baru beberapa bulan terima SK lalu ngajukan pindah. Bantu kami membangun daerah ini,&rsquo;&rsquo; harap Bupati. &nbsp;</p>\r\n<p>&nbsp;</p>', 'Foto bersama dengan para PTT yang telah menerima CPNS', '', 'vendra', '', '', 'Rabu', '2019-06-19', '2019-06-19', '02:04:38', '84tempojambi_com_6_img20190619wa0029.jpg', 51, '');

-- --------------------------------------------------------

--
-- Table structure for table `berita---`
--

CREATE TABLE `berita---` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `id_subkategori` int(2) NOT NULL,
  `id_subdomain` int(2) NOT NULL,
  `id_daerah` int(2) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kutipan` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `headline_utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `pilihan` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `text_foto` text COLLATE latin1_general_ci NOT NULL,
  `kredit` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `penulis` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `editor` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sumber` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `isi_berita` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita---`
--

INSERT INTO `berita---` (`id_berita`, `id_kategori`, `id_subkategori`, `id_subdomain`, `id_daerah`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `headline`, `headline_utama`, `aktif`, `utama`, `pilihan`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`, `rating`, `isi_berita`) VALUES
(1, 2, 0, 0, 0, 'ngadmin', 'Indonesia Mampu Menjadi Negara Mandiri di Bidang Maritim', '', '', '', 'indonesia-mampu-menjadi-negara-mandiri-di-bidang-maritim', 'N', '', 'Y', '', '', 'Rapat Kerja Tahun 2017', '', '', '', '', 'Selasa', '2017-06-20', '2017-06-20', '13:36:33', '80raker1.jpg', 498, '', 0, '<p><strong>JAKARTA</strong> - Menteri Perhubungan Budi Karya Sumadi memberikan apresiasi kepada Direktorat Jenderal Perhubungan Laut yang telah berhasil merebut kembali kejayaan maritim melalui pencapaian beberapa bulan terakhir ini. Pencapaian tersebut diantaranya mendatangkan kapal besar dengan kapasitas kurang lebih 8500 TEUs, melakukan pemanduan di Selat Malaka dan mengelola RoRo dari Malaysia dan Filipina ke Indonesia. Hal tersebut disampaikan Menhub saat memberikan arahan sekaligus membuka Rapat Kerja Direktorat Jenderal Perhubungan Laut pada Rabu (3/5) di Jakarta.</p>\r\n<p>Dalam kesempatan tersebut, Menhub mengarahkan Direktorat Jenderal Perhubungan Laut untuk tidak berpuas diri dan bertindak lebih baik untuk kemajuan bidang maritim Indonesia.</p>\r\n<p>&ldquo;Tidak cukup sampai di situ, karena akan lebih berhasil apabila tingkat keterisian kapal menjadi lebih besar, pemanduan kapal dapat dimanfaatkan oleh banyak orang dan keterisian Roro juga lebih besar,&rdquo; jelas Menhub.</p>\r\n<p>Menhub optimis pencapaian-pencapaian tersebut dapat menjadikan Indonesia sebagai Negara yang Mandiri di Bidang Maritim.</p>\r\n<p>&ldquo;Pencapaian tersebut sekaligus menunjukkan bahwa Indonesia mampu menjadi Negara yang Mandiri di bidang maritim, sehingga ke depan Pemerintah optimis mampu mengembalikan kejayaan Indonesia sebagai bangsa maritim yang besar dan sejalan dengan Program Nawacita Nasional yakni mewujudkan Indonesia sebagai Poros Maritim Dunia,&rdquo; ujar Menhub.</p>\r\n<p>Selain itu, Menhub juga menyoroti hal-hal yang menjadi catatan penting, diantaranya safety (keselamatan), integritas dan governance (tata kelola).</p>\r\n<p>&ldquo;Ada beberapa hal yang saya beri catatan; pertama, safety (keselamatan). Kita masih banyak kekurangan, oleh karenanya kita harus melakukan dengan cara yang lebih baik dan advance supaya kecelakaan-kecelakaan itu tidak terjadi lagi. Kedua, integritas dan governance (tata kelola). Kita bersama Polri sudah menemukan perbuatan yang tidak baik di Samarinda. Sekarang, kita punya tata aturan baru di mana ada pay ada service (ada pembayaran, ada pelayanan), bukan lagi no service but pay (tidak ada pelayanan, ada pembayaran),&rdquo; jelas Menhub.</p>\r\n<p>Menhub menegaskan akan menumpas kegiatan yang tidak baik seperti di Samarinda dan kota lainnya agar tidak dicontoh dan tidak terjadi lagi.</p>\r\n<p>&ldquo;Saya katakan mulai saat ini kita bersama-sama aparat penegak hukum untuk secara sistematis menumpas kegiatan yang tidak baik tersebut. Di tempat lain jangan coba-coba, karena kita sudah ingatkan beberapa kali, kejadian Medan, Surabaya, Jakarta, Samarinda,&rdquo; tegas Menhub.</p>\r\n<p>Sementara itu, Rapat kerja yang bertema &ldquo;Melalui Rapat Kerja Direktorat Jenderal Perhubungan Laut Tahun 2017, Kita Raih Kemandirian Maritim Menuju Poros Maritim Dunia&rdquo; ini diharapkan dapat mendorong partisipasi aktif dari seluruh instansi dan stakeholder maritim terkait baik swasta maupun BUMN dalam pelaksanaan pembangunan sektor transportasi laut.</p>\r\n<p>&ldquo;Maritim adalah salah satu tempat yang luas, banyak kepentingan, banyak juga hal-hal yang belum bisa kita kerjakan sendiri, termasuk keterbatasan APBN yang dimiliki Pemerintah. Oleh karenanya, kita butuh peran serta swasta dan BUMN dalam pembangunan sektor transportasi laut melalui terobosan-terobosan yang dapat memberikan manfaat besar bagi kesejahteraan masyarakat, seperti program Tol Laut dan Rumah Kita, Pemanduan di Selat Malaka, Direct Call Kapal CGM CMA dengan rute Tanjung Priok &ndash; Los Angeles/ Statutory Class oleh PT. Biro Klasifikasi Indonesia (BKI), dan yang terakhir Pembukaan Rute Pelayaran dari Davao Filipina ke Bitung,&rdquo; tutup Menhub.<strong> (CRA/TH/BS/JAB)</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>'),
(2, 2, 0, 0, 0, 'ngadmin', 'Pemudik Agar Manfaatkan Angkutan Motor Gratis Lebaran', '', '', '', 'pemudik-agar-manfaatkan-angkutan-motor-gratis-lebaran', 'N', '', 'Y', '', '', '', '', '', '', '', 'Selasa', '2017-06-20', '2017-06-20', '13:40:49', '63budi_karya_sumadi.jpg', 349, '', 0, '<p>TERNATE &ndash; Kementerian Perhubungan siapkan subsidi angkutan kapal roll on-roll off (ro-ro) sebanyak 50.000 untuk mengangkut penumpang dan motor gratis pada masa angkutan lebaran 2017/1438 H dengan rincian 32.000 penumpang dan 18.000 sepeda motor tujuan Jakarta ke Jawa Tengah. Saat ini Kemenhub sedang aktif melakukan sosialisasi kepada pemudik terkait angkutan mudik lebaran dengan menggunakan kapal yang tidak hanya dapat mengangkut penumpang melainkan juga barang.</p>\r\n<p>\"Kita sosialisasikan supaya okupansinya bagus. Kapal ini menjadi suatu potensi yang bagus, suatu jalan terbaik untuk lebaran mendatang dengan menambah angkutan mudik melalui kapal. Kalau jalan raya, jalan tol, kereta kan terbatas tetapi dengan kapal itu ruang dan waktu masih banyak. Jadi kalau kita berhasil tahun ini sekitar 50.000, tahun depan ini sudah menjadi format baru angkutan lebaran untuk ke Jawa Tengah, Jawa Timur maupun Sumatera Selatan,\" terang Menteri Perhubungan Budi Karya Sumadi disela kunjungannya ke Ternate pada Selasa (9/5).</p>\r\n<p>Menhub menjelaskan beroperasinya kapal ro-ro ini difungsikan untuk mengurangi beban jalan bagi truk yang melewati jalur pantura.</p>\r\n<p>\"Kapal ro-ro pada saat lebaran kita fungsikan untuk angkutan truk ke Semarang terutama truk yang memiliki lebih dari 2 sumbu karena terdapat larangan truk dibeberapa jalan tertentu. Kapal ro-ro ini menjadi salah satu cara kita menyelesaikan angkutan truk dari Jakarta menuju Semarang dan Surabaya karena itu akan mengurangi tekanan atau beban jalan utama Jakarta-Surabaya dan juga mengurangi angka kecelakaan lalu lintas,\" jelas Menhub.</p>\r\n<p>Lebih lanjut Menhub mengatakan pihaknya sudah berkoordinasi dengan ASDP terkait beroperasinya Kapal ro-ro tujuan Tanjung Priuk ke Panjang Lampung yang akan digunakan sebagai angkutan lebaran bagi masyarakat yang akan mudik ke wilayah Sumatera.</p>\r\n<p>\"Kapal ro-ro dari Tanjung Priuk ke Panjang Lampung sudah ada 3 kapal. Kita sudah koordinasi dengan ASDP, satu yang kita minta kapal yang dioperasikan harus besar, kedua kapalnya berkecepatan tinggi sehingga daya serap untuk mengangkut lebih besar,\" kata Menhub.</p>\r\n<p>Menhub menghimbau masyarakat dapat memanfaatkan mudik gratis dengan angkutan kapal ro-ro tersebut, selain hemat biaya dan tenaga juga dapat mengurangi angka kecelakaan lalu lintas khususnya pengendara sepeda motor di jalur pantura dan selatan.</p>\r\n<p>&ldquo;Saya minta pemudik bisa memaksimalkan penggunaan mudik gratis dengan kapal ro-ro. Kita bisa istirahat, hemat tenaga, hemat biaya, selamat, terhindar dari bahaya kecelakaan yang sering terjadi dijalur pantura&rdquo;, tegas Menhub.<strong>(LFH/TH/BS/JAB)&nbsp;</strong></p>'),
(3, 2, 0, 0, 0, 'ngadmin', 'Pemerintah Fokus Pengembangan Pelabuhan Strategis untuk Dukung Poros Maritim', '', '', '', 'pemerintah-fokus-pengembangan-pelabuhan-strategis-untuk-dukung-poros-maritim', 'N', '', 'Y', '', '', '', '', '', '', '', 'Selasa', '2017-06-20', '2017-06-20', '13:41:51', '', 418, '', 0, '<p>NUSA DUA - Kementerian Perhubungan telah rencanakan pengembangan 24 pelabuhan strategis termasuk 5 pelabuhan pengumpul antara lain Pelabuhan Kuala Tanjung, Pelabuhan Kalibaru, Pelabuhan Tanjung Perak, Pelabuhan Makassar, Pelabuhan Bitung, dan 19 pelabuhan untuk penumpang. Hal ini disampaikan Menteri Perhubungan Budi Karya Sumadi saat menjadi pembicara dalam forum IAPH The 30th World Port Conference di Bali Nusa Dua Convention Centre, Bali pada Jumat (12/5).</p>\r\n<p>Acara yang dihadiri oleh Presiden IAPH Santiago Garcia Mil&agrave;, Direktur Utama PT. Pelindo I-IV, dan 505 peserta dari 51 negara perwakilan mengangkat tema \"Transformasi Bahari Indonesia.\"</p>\r\n<p>Dalam paparannya Menhub membahas tentang peran serta sektor transportasi maritim dalam mendukung pembangunan dan perbaikan infrastruktur di Indonesia.</p>\r\n<p>\"Saya mengapresiasi forum ini sebagai sebuah langkah kongkret dalam menyatukan kemampuan potensi laut Indonesia dengan 50 negara peserta. Kita dapat saling bekerjasama untuk mengelola pelabuhan-pelabuhan yang ada di Indonesia, yang terpenting adalah connectivity,\" tegas Menhub.</p>\r\n<p>Untuk menjawab tantangan di sektor maritim, Kementerian Perhubungan telah melaksanakan berbagai kebijakan strategis yang mendukung program Tol Laut yang digagas oleh Presiden RI.</p>\r\n<p>\"Kebijakan strategis dimaksud antara lain membangun transportasi multimoda melalui optimalisasi sistem logistik nasional, percepatan pengembangan sistem transportasi multimoda, sinkronisasi transportasi lokal, teritorial dan nasional, pengembangan jaringan sistem transportasi laut terpadu, peningkatan keamanan transportasi laut, pemanfaatan alat transportasi laut hijau,\" tambah Budi Karya.</p>\r\n<p>Menhub menambahkan, saat ini Kementerian Perhubungan tengah mengembangkan program terpadu antara Tol Laut dan Rumah Kita yang diharapkan dapat menekan disparitas harga dan membangun potensi perdagangan (trade follow the ship) di wilayah Indonesia Timur khususnya Papua. <strong>(INH/BU/TH/BS/JAB)&nbsp;</strong></p>'),
(4, 2, 0, 0, 0, 'ngadmin', 'Tingkatkan Keselamatan Angkutan Sungai dan Danau Kemenhub Bagikan Life Jacket', '', '', '', 'tingkatkan-keselamatan-angkutan-sungai-dan-danau-kemenhub-bagikan-life-jacket', 'N', '', 'Y', '', '', 'Direktur Lalu Lintas Pandu Yunianto dalam sambutannya pada kegiatan Bimbingan Teknis kepada para operator dan para pengguna jasa transportasi sungai dan danau di Kab. Kuala Tungkal Jambi, Rabu (10/5)', '', '', '', '', 'Selasa', '2017-06-20', '2017-06-20', '13:44:08', '20sdp_jaket.jpg', 431, '', 0, '<p>JAMBI (10/5) - Kementerian Perhubungan melalui Direktorat Jenderal Perhubungan Darat menyiapkan 200 buah jaket pelampung atau life jacket yang dibagikan kepada para operator kapal yang nantinya akan digunakan menjadi sarana keselamatan kapal.</p>\r\n<p>Kementerian Perhubungan melalui Direktorat Jenderal Perhubungan Darat sebagaimana perintah Menteri Perhubungan terus berusaha meningkatkan kinerja keselamatan angkutan sungai dan danau, dalam rangka peningkatan keselamatan transportasi sungai, danau, dan penyeberangan serta memberikan bimbingan teknis terkoordinasi dengan instansi yang terlibat terhadap peningkatan keselamatan dalam berlalu lintas di sungai dan danau.</p>\r\n<p>\"Tujuannya untuk meningkatkan kualitas pelayanan, kelancaran operasional dan keselamatan Lalu Lintas Angkutan Sungai dan Danau, serta memberikan pengetahuan kepada para operator akan pentingnya perlengkapan keselamatan angkutan sungai dan danau,&rdquo; ujar Direktur Lalu Lintas Pandu Yunianto dalam sambutannya pada kegiatan Bimbingan Teknis kepada para operator dan para pengguna jasa transportasi sungai dan danau di Kab. Kuala Tungkal Jambi, Rabu (10/5).</p>\r\n<p>Angkutan sungai dan danau sejatinya sangat diperlukan sebagai sarana untuk meningkatkan kesejahteraan masyarakat, memberikan aksebilitas yang lebih baik sehingga dapat mengakomodasi peningkatan kebutuhan mobilitas penduduk melalui jaringan transportasi darat yang terputus di perairan antar-pulau, sepanjang daerah aliran sungai dan danau, serta berfungsi melayani transportasi yang menjangkau daerah terpencil dan daerah pedalaman.</p>\r\n<p>Pandu mengatakan bahwa keselamatan transportasi merupakan suatu kebutuhan yang harus diwujudkan dalam penyelenggaraan transportasi khususnya angkutan sungai dan danau, sehingga perlu senantiasa berupaya meningkatkan keselamatan transportasi secara terus-menerus.</p>\r\n<p>\"Terjadinya kecelakaan angkutan sungai dan danau pada umumnya diakibatkan oleh faktor kelalaian manusia, di samping aspek teknis, faktor alam seperti adanya gangguan alur sungai dan lain-lain,\" ucap Pandu. \"Hal tersebut menjadi tanggung jawab kita bersama untuk berupaya mencegah dan menekan angka kecelakaan lalu lintas dan angkutan sungai dan danau menjadi sekecil mungkin,\" tambahnya.</p>\r\n<p>Acara yang dipimpin langsung oleh Bupati Tanjung Jabung Barat Safrial MS dihadiri oleh 100 orang dari berbagai operator kapal di lingkungan Kabupaten Tanjung Jabung Barat Jambi. Selain itu, kegiatan ini juga melakukan pembagian 100 buah pelampung ban atau Life Buoy kepada para operator kapal dari program kerjasama Ditjen Perhubungan Darat dengan PT. Jasa Raharja (Persero).</p>\r\n<p>Pada kesempatan yang sama Bupati Safrial memberikan apresiasi yang tinggi kepada Direktorat Jenderal Perhubungan Darat atas bimbingan teknis yang dilaksanakan. \"Saya berharap ini bukan yang pertama dan terakhir, semoga kedepannya kegiatan ini terus berlanjut agar para operator dan masyarakat teredukasi akan pentingnya keselamatan transportasi,\" kata Safrial.</p>\r\n<p>Diharapkan dengan dilaksanakannya bimbingan teknis ini dapat tercipta penyelenggaraan Lalu Lintas dan Angkutan Sungai dan Danau yang tertib, selamat, lancar, aman dan nyaman. <strong>(KDN/PTR)&nbsp;</strong></p>'),
(5, 2, 0, 0, 0, 'ngadmin', 'Penumpang Harus Berani Tegur Sopir yang Ugal-ugalan', '', '', '', 'penumpang-harus-berani-tegur-sopir-yang-ugalugalan', 'N', '', 'Y', '', '', '', '', '', '', '', 'Selasa', '2017-06-20', '2017-06-20', '13:47:31', '35busmudik.jpg', 331, '', 0, '<p><strong>JAKARTA</strong> - Dalam masa Angkutan Lebaran 2017, Kementerian Perhubungan peduli terhadap keberadaan angkutan umum yang laik jalan untuk menjamin keselamatan penumpang sehingga inspeksi kendaraan dilakukan menyeluruh di semua moda. Selain kesiapan Pemerintah dalam menyiapkan infrastruktur, penumpang juga harus berperan dengan cara menegur sopir yang menyetir dengan ugal-ugalan. Demikian ditegaskan Dirjen Perhubungan Darat Pudji Hartanto Iskandar ketika meninjau Posko Tingkat Nasional Angkutan Lebaran Terpadu 2017 pada Senin (19/7).</p>\r\n<p>&ldquo;Pemerintah sudah mengerahkan segala usaha dalam melayani masyarakat pada masa Angkutan Lebaran 2017 dan sudah melakukan langkah antisipasi mengatasi kepadatan namun juga diperlukan peran aktif penumpang dengan cara menegur sopir apabila menyetir ugal-ugalan,&rdquo; papar Pudji.</p>\r\n<p>Terkait pengoperasian jalan tol dari Brebes Timur sampai dengan Weleri secara fungsional, Pudji mengingatkan para pemudik agar berhati-hati karena jalurnya belum sepenuhnya siap beroperasi.</p>\r\n<p>&ldquo;Kecepatannya tidak boleh lebih dari 40 km/jam karena memang belum operasional seluruhnya dan jalannya masih berdebu, lampu belum maksimal namun marka jalan sudah lengkap, dan juga dipasangi patok di kanan kiri jalan dengan menggunakan scotlite,&rdquo; jelas Pudji.</p>\r\n<p>Sementara itu, jumlah kendaraan pribadi pada tahun ini, Pudji memprediksi, akan meningkat sebanyak 12% namun untuk jumlah pemudik sepeda motor, Pudji berharap jumlahnya akan berkurang karena sudah ada program mudik gratis untuk pemudik sepeda motor yang tahun ini jumlahnya naik sebanyak 175%. Pudji berharap, dengan program mudik gratis tersebut, beban di jalan akan berkurang.</p>\r\n<p>Pudji menjelaskan apabila ada kepadatan di jalan, pihak kepolisian di lapangan akan melakukan manajemen rekayasa lalu lintas dengan komando dari Kakorlantas Polri.</p>\r\n<p>&ldquo;Berdasarkan evaluasi dari tahun lalu, hal tersebut tidak ada di tahun lalu. Oleh Karena itu, untuk tahun ini, mulai dari Cikarang Utama, Cikopo, hingga Brebes Barat sudah dikendalikan,&rdquo; ujar Pudji.</p>\r\n<p>Dengan semua persiapan yang telah dilakukan, Pudji berharap para pemudik agar selamat di asal, selamat di perjalanan, dan selamat di tujuan sehingga tercipta mudik yang selamat, aman, dan lancar.&nbsp;<strong>(RY/TH/BS/JAB)&nbsp;</strong></p>'),
(6, 2, 0, 0, 0, 'ngadmin', 'Dishub Provinsi Jambi akan Tindak Tegas Angkutan Lebaran Tak Laik Jalan', '', '', '', 'dishub-provinsi-jambi-akan-tindak-tegas-angkutan-lebaran-tak-laik-jalan', 'Y', '', 'Y', '', '', 'Herlambang Saputra, ST, MM, Kepala Seksi Lalu Lintas dan Angkutan', '', '', '', '', 'Senin', '2017-07-19', '2017-07-19', '12:49:19', '59foto.jpg', 400, '', 0, '<p><strong>JAMBI</strong>&nbsp;- Dinas Perhubungan Provinsi Jambi memprioritaskan pengecekan kelaikan angkutan Lebaran untuk menekan angka kecelakaan saat musim mudik Idul Fitri 1438 Hijriah.</p>\r\n<p>\"Kendaraan yang bermasalah atau tidak laik jalan menjadi catatan kita, sehingga cek kelaikan angkutan Lebaran itu menjadi salah satu prioritas kami,\" kata Kepala Seksi Lalu Lintas dan Angkutan Dishub Provinsi Jambi Herlambang Saputra, ST, MM di Jambi.<br /><br />Kendaraan angkutan Lebaran yang bermasalah akan menjadi catatan dan tidak diperbolehkan beroperasi mengangkut penumpang saat musim mudik Lebaran. \"Begitu angkutan itu masuk terminal akan dicek dan betul-betul kita perhatikan karena banyak kendaraan yang tidak laik jalan tetap dipaksakan untuk operasional dan itu yang dilarang,\" katanya.<br /><br />Uji kelaikan jalan angkutan umum tersebut juga telah diatur dalam Peraturan Menteri Perhubungan Nomor 26 Tahun 2017 tentang penyelenggaraan angkutan orang dengan kendaraan bermotor umum tidak dalam trayek. Pada pencanangan angkutan Lebaran yang sudah dilaksanakan pada Kamis (15/06/2017). \"Dan yang akan menjadi perhatian, di antaranya kelengkapan surat-surat kendaraan.<br /><br />Setiap angkutan itu, yang diperiksa seluruh alat kelengkapannya, seperti lampu dekat, lampu jauh, lampu rem, ban, dan pintu darurat.<br /><br />\"Di samping kendarannya, juga pengemudinya akan dites urine untuk memastikan bahwa pengemudinya itu sehat dan bebas dari narkoba dan alkohol,\" katanya.&nbsp;<strong>(ATD)</strong></p>\r\n<p>&nbsp;</p>'),
(7, 3, 0, 0, 0, 'ngadmin', 'Jumlah Kecelakaan Pada Angkutan Lebaran 2017 Turun 30,4 Persen', '', '', '', 'jumlah-kecelakaan-pada-angkutan-lebaran-2017-turun-304-persen', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id/', 'Rabu', '2017-08-01', '2017-08-01', '09:24:06', '16whatsappimage20170726at11.40.21.jpeg', 664, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">JAKARTA - Salah satu indikator suksesnya penyelenggaraan angkutan lebaran terpadu tahun 2017 adalah menurunnya angka kecelakaan. Pada angkutan lebaran tahun 2017 terjadi penurunan data angka kecelakaan yang cukup drastis dibandingkan tahun 2016, yaitu sebanyak 30,4%. Demikian disampaikan Menteri Perhubungan Budi Karya Sumadi dalam Rapat Dengar Pendapat dengan Komisi V DPR RI, Rabu (26/7).</span></p>\r\n<p style=\"text-align: justify;\">Perbandingannya kejadian tahun 2017 sebanyak 3.168 kejadian dibandingkan tahun 2016 sebanyak 4.551 kejadian atau turun 1.383 kejadian.</p>\r\n<p style=\"text-align: justify;\">Sedangkan untuk jumlah korban meninggal dunia turun sebesar 519 korban (41,2%) dari 1.261 korban Tahun 2016 (1437 H) menjadi 742 korban Tahun 2017 (1438 H). Jumlah korban luka berat turun sebesar 461 korban (40,2%) dari 1.148 korban Tahun 2016 (1437 H) menjadi 687 korban Tahun 2017 (1438 H). Jumlah korban luka ringan turun sebesar 1.331 korban (23,4%) dari 5.697 korban Tahun 2016 (1437 H) menjadi 4.366 korban Tahun 2017 (1438 H).</p>\r\n<p style=\"text-align: justify;\">Mengenai turunnya angka kecelakaan ini, Menhub memberikan apresiasi khusus terhadap kinerja Kepolisian dalam rekayasa lalu lintas serta penegakan hukum selama angkutan lebaran.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Penurunan angka kecelakaan pada angkutan Lebaran Tahun 2017, tidak terlepas dari upaya himbauan dan penegakan hukum dari Kepolisian yang cukup efektif dalam menekan angka kecelakaan,&rdquo; ujar Menhub.</p>\r\n<p style=\"text-align: justify;\">Dalam kesempatan ini, Menhub berterima kasih kepada berbagai pihak yang telah bekerja keras menyukseskan angkutan lebaran 2017. Sukses ini tidak terlepas dari matangnya perencanaan penyelenggaraan angkutan lebaran yang telah dipersiapkan sejak Januari 2017.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Dengan demikian dapat dikatakan bahwa program Mudik Bareng Guyub Rukun 2017 berjalan sukses, salah satunya melalui tahapan perencanaan yang matang sehingga menjadikan pelaksanaan operasional dan pelayanan angkutan mudik berjalan lancar,&rdquo; tambah Menhub.</p>\r\n<p style=\"text-align: justify;\">Sedangkan dari aspek kesiapan sarana transportasi secara umum dipaparkan bahwa jumlah bus AKAP, AKDP dan Pariwisata yang tersedia tahun ini sebanyak 48.790 unit naik 4,97% dari tahun 2016 sebanyak 46.478 unit.</p>\r\n<p style=\"text-align: justify;\">Jumlah kapal Penyeberangan Ro-ro dan LCT yang tersedia tahun ini sebanyak 200 kapal naik 2,56% dari tahun 2016 sebanyak 195 kapal. Jumlah kapal Laut (termasuk Perintis) yang tersedia tahun ini sebanyak 1.278 kapal naik 0,39% dari tahun 2016 sebanyak 1.273 kapal. Jumlah pesawat udara yang tersedia tahun ini sebanyak 532 pesawat naik 1,14% dari tahun 2016 sebanyak 526 pesawat. jumlah sarana kereta api yang tersedia tahun ini sebanyak 371 sarana sama dari tahun 2016 sebanyak 371 sarana.</p>\r\n<p style=\"text-align: justify;\">Untuk kendaraan pribadi Menhub mengatakan terjadi peningkatan yang melintas di jalan nasional yaitu mengalami kenaikan sebesar 713.214 unit (28,74%) dari 2.481.334 unit Tahun 2016 (1437 H) menjadi 3.194.548 unit Tahun 2017 (1438 H). Sedangkan untuk mobil yang melintasi jalan tol tahun 2017 mengalami kenaikan sebesar 121.763 unit (2,95%) dari 4.134.463 unit Tahun 2016 (1437 H) menjadi 4.256.226 unit Tahun 2017 (1438 H). Sementara itu untuk jumlah sepeda motor pada tahun 2016 ini mengalami kenaikan sebesar 1.605.009 unit (33,53%) dari 4.786.775 unit Tahun 2016/1437 H menjadi 6.391.784 unit Tahun 2017 (1438 H).</p>\r\n<p style=\"text-align: justify;\">Menhub menyoroti secara khusus penggunaan sepeda motor pada angkutan lebaran. Menurut Menhub sepeda motor masih digemari untuk mudik dikarenakan memiliki tingkat fleksibilitas mobilitas dan aksesibilitas yang mudah serta biaya relatif murah.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Untuk itu harus ada penanganan khusus terhadap pemudik angkutan sepeda motor sebagai solusi pada angkutan Lebaran di tahun mendatang,&rdquo; tegas Menhub.</p>\r\n<p style=\"text-align: justify;\">Pada angkutan mudik lebaran, hasil evaluasi jumlah penumpang Mudik Bareng tahun 2017 yang dibandingkan tahun 2016, dengan periode pemantauan H-7 sampai dengan H+7, yaitu secara keseluruhan jumlah penumpang angkutan umum untuk semua moda transportasi (darat, kereta api, laut dan udara) mengalami kenaikan sebesar 442.413 penumpang (2,44%) dari 18.160.668 penumpang tahun 2016 (1437 H) menjadi 18.603.081 penumpang tahun 2017 (1438 H), meskipun terdapat kenaikan jumlah penumpang, namun penumpukan penumpang bisa terkendali.</p>\r\n<p style=\"text-align: justify;\">Sedangkan untuk realisasi kegiatan mudik gratis untuk pengendara motor gambarannya yaitu:</p>\r\n<p style=\"text-align: justify;\">Yang diselenggarakan oleh Kementerian Perhubungan :</p>\r\n<p style=\"text-align: justify;\">Menggunakan Truk dan Bus, jumlah sepeda motor yang diangkut sebanyak 3.130 unit dengan jumlah penumpang sebanyak 44.354 penumpang;</p>\r\n<p style=\"text-align: justify;\">Menggunakan Kapal Ro-ro, jumlah sepeda motor yang diangkut sebanyak 1.194 unit dengan jumlah penumpang sebanyak 2.531 penumpang;</p>\r\n<p style=\"text-align: justify;\">Menggunakan Kereta Api, jumlah sepeda motor yang diangkut sebanyak 12.454 unit dengan jumlah penumpang sebanyak 24.908 penumpang;</p>\r\n<p style=\"text-align: justify;\">Menggunakan Kapal Laut, jumlah sepeda motor yang diangkut sebanyak 2.370 unit dengan jumlah penumpang sebanyak 5.094 penumpang.</p>\r\n<p style=\"text-align: justify;\">Yang diselenggarakan oleh BUMN peserta mudik gratis sebanyak 118.220 orang, oleh Pemerintah Daerah sebanyak 83.116 orang dan Perusahaan Swasta sebanyak 20.955 orang.</p>\r\n<p style=\"text-align: justify;\">sehingga jumlah keseluruhan sebanyak 19.148 motor dan jumlah peserta sebanyak 299.178 orang.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Untuk meningkatkan animo masyarakat maka pada angkutan Lebaran tahun mendatang program mudik gratis yang dilaksanakan tetap ditingkatkan dan disosialisasikan lebih awal, mengingat pemudik motor belum tertarik beralih ke moda lain,&rdquo; tutup Menhub.</p>\r\n<p style=\"text-align: justify;\">Sementara itu Wakil Ketua Komisi V Michael Watimena selaku pimpinan rapat mengatakan hampir semua masyarakat, pengamat dan LSM yang concern di bidang pelayanan publik memberikan penilaian bahwa angkutan lebaran tahun 2017 lebih baik dari tahun sebelumnya. Ia mewakili Komisi V menyampaikan apresiasi kepada pihak-pihak yang terkait dengan angkutan lebaran 2017.</p>\r\n<p style=\"text-align: justify;\">\"Kami komisi V DPR RI yang selama ini melaksanakan fungsi pengawasan, memberikan apresiasi yang setinggi tingginya, kepada Kementerian Perhubungan, Kementerian PUPR, Kementerian terkait lainnya, Korlantas Polri, Lembaga Pemerintah lainnya, Perusahaan BUMN dan Perusahaan Swasta yang terkait transportasi serta semua pihak yang telah membantu lancar san suksesnya mudik lebaran tahun 2017, \"ujar Michael.</p>\r\n<p style=\"text-align: justify;\">Namun Michael menyayangkan masih adanya korban kecelakaan pada angkutan lebaran tahun ini walaupun presentasenya turun drastis.</p>\r\n<p style=\"text-align: justify;\">\"Selain pencapaian hasil yang positif tersebut, kita tidak bisa mengingkari masih terdapat kecelakaan dalam periode angkutan lebaran 2017 ini, walaupun secara statistik terjadi penurunan yang sangat signifikan, kami menyampaikan rasa prihatin kepada korban luka-luka dan turut berduka cita yang mendalam atas korban yang meninggal dunia,\" tuturnya.</p>\r\n<p style=\"text-align: justify;\">Rapat dengar pendapat dengan Komisi V DPR RI kali ini membahas tema Evaluasi Penyediaan Sarana dan Prasarana Transportasi dalam Rangka Penanganan Arus Mudik dan Arus Balik Lebaran Tahun 2017. Selain Menteri Perhubungan turut hadir Dirjen Bina Marga Kementerian PUPR Arie Setiadi, Kepala Korlantas Polri Royke L, Kepala BMKG Andi Eka Sakya, Sestama BNPP Dadang A, Wakil Ketua KNKT Haryo Satmiko.</p>\r\n<p style=\"text-align: justify;\">Dari jajaran Kementerian Perhubungan ikut hadir Sekretaris Jenderal Sugihardjo, Dirjen Perhubungan Darat Pudji Hartanto, Dirjen Perhubungan Laut A. Tonny Budiono, Dirjen Perhubungan Udara Agus Santoso, Kepala Badan Litbang Umiyatun Hayati dan Kepala BPTJ Bambang Prihartono.</p>\r\n<p style=\"text-align: justify;\">Hadir pula perwakilan dari Perusahaan BUMN serta Perusahaan Swasta yang terkait dengan sektor transportasi.<strong>(HH/TH/BS/JAB)</strong> </p>'),
(8, 3, 0, 0, 0, 'ngadmin', 'Menhub : Belum Ada Pelarangan Sepeda Motor Untuk Mudik Lebaran', '', '', '', 'menhub--belum-ada-pelarangan-sepeda-motor-untuk-mudik-lebaran', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Rabu', '2017-08-01', '2017-08-01', '09:31:08', '30whatsapp.jpeg', 366, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">JAKARTA &ndash; Menteri Perhubungan Budi Karya Sumadi menegaskan belum akan melarang penggunaan sepeda motor dalam waktu dekat ini. Hal ini diungkapkan Menhub untuk menjawab pertanyaan anggota komisi V DPR RI yang meminta pemerintah untuk melarang sepeda motor digunakan sebagai angkutan mudik lebaran. Demikian disampaikan Menhub dalam acara Rapat Dengar Pendapat bersama Komisi V DPR RI, Rabu (26/7).</span></p>\r\n<p style=\"text-align: justify;\">Tingginya angka kecelakaan yang disumbangkan sepeda motor menjadi pemicu agar sepeda motor dilarang penggunaannya untuk mudik lebaran. Namun Menhub mengatakan tidak serta merta dapat melarang sepeda motor karena pengembangan angkutan massal harus diselesaikan terlebih dahulu.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Kita akan melakukan secara simultan, meningkatkan angkutan massal di Jabodetabek dan daerah. Untuk di Jabodetabek akan kita maksimalkan MRT, BRT dan LRT. Sedangkan untuk di daerah akan kita maksimalkan bus dan kapal. Sehingga pengguna sepeda motor akan berkurang banyak. Nanti waktunya bisa kita larang apabila kita telah menyelesaikan itu, tidak sekarang,&rdquo; tegas Menhub Budi.</p>\r\n<p style=\"text-align: justify;\">Menhub mengatakan hal ini akan didiskusi lebih detail dan dibuat kertas kerjanya dulu. Karena jika langsung diterapkan akan menimbulkan friksi di masyarakat, disebabkan saat ini sepeda motor adalah alat transportasi masyarakat yang murah dan efisien.</p>\r\n<p style=\"text-align: justify;\">Pada kesempatan yang sama, Menhub mengungkapkan demi meningkatkan pelayanan pada tahun 2018, Kementerian Perhubungan telah menyiapkan kebijakan rencana operasi angkutan lebaran diantaranya H1 dan H2 Idul Fitri yang jatuh pada hari Jum&rsquo;at dan Sabtu tanggal 15 dan 16 Juni 2018, sehingga monitoring direncanakan mulai hari Kamis tanggal 7 Juni 2018 (H-8) sampai dengan Senin 24 Juni 2018 (H+8).</p>\r\n<p style=\"text-align: justify;\">Untuk cuti bersama diusulkan pada arus mudik hari Rabu 13 Juni 2018 (H-2) dan hari Kamis 14 Juni 2018 (H-1). Cuti bersama juga diusulkan pada arus balik hari Senin 18 Juni 2018 (H+2) dan hari Selasa 19 Juni 2018 (H+3).</p>\r\n<p style=\"text-align: justify;\">Menhub juga mengatakan perlu diusulkan agar libur anak sekolah disesuaikan dengan cuti bersama lebaran.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Libur sekolah agar diatur dalam masa libur lebaran sehingga ada masa kebersamaan libur antara anak-anak dan orang tua,&rdquo; terang Menhub.</p>\r\n<p style=\"text-align: justify;\">Lebih lanjut Menhub menyampaikan perlu juga diusulkan pengaturan penggunaan rest area serta perluasan rest area di jalan tol Cikampek dan bila ketersediaan lahan tidak memungkinkan diusulkan dibangun elevated park.</p>\r\n<p style=\"text-align: justify;\">\"Kementerian Perhubungan juga mendorong daerah mengembangkan/membangun simpul simpul niaga tradisional untuk menampung pedagang kaki lima (pasar tumpah), perpanjangan waktu pengaturan pembatasan operasional angkutan barang, menata mudik gratis tahun 2018 dengan lebih baik lagi dengan satu konsep kebersamaan dengan para stakeholder, serta mendorong pertumbuhan jumlah kapal Ro-Ro lintas Jakarta Semarang dan Jakarta Surabaya,\" tambah Menhub.</p>\r\n<p style=\"text-align: justify;\">Selain itu, akan dilakukan upaya apabila operasional jalan tol sampai dengan Semarang, yakni pengaturan aspek kelancaran lalu lintas yang meliputi pengaturan transaksi non tunai di pintu keluar tol untuk mencegah antrian panjang, membuat U-Turn di ruas mendekati ujung Tol Semarang, penerapan Contra Flow dan buka-tutup sistem satu arah.</p>\r\n<p style=\"text-align: justify;\">Untuk pengaturan pada aspek keselamatan meliputi pengendalian dan pengawasan kecepatan kendaraan, penegakan hukum pelanggaran batas kecepatan dan tersedianya perlengkapan jalan.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Sedangkan sebagai solusi permanen untuk mengatasi kemacetan di Nagrek adalah dengan pembangunan jalan Tol Bandung-Tasikmalaya,&rdquo; tutup Menhub.</p>\r\n<p style=\"text-align: justify;\">Rapat dengar pendapat dengan Komisi V DPR RI kali ini membahas tema Evaluasi Penyediaan Sarana dan Prasarana Transportasi dalam Rangka Penanganan Arus Mudik dan Arus Balik Lebaran Tahun 2017. Selain Menteri Perhubungan turut hadir Dirjen Bina Marga Kementerian PUPR Arie Setiadi, Kepala Korlantas Polri Royke L, Kepala BMKG Andi Eka Sakya, Sestama BNPP Dadang A, Wakil Ketua KNKT Haryo Satmiko.</p>\r\n<p style=\"text-align: justify;\">Dari jajaran Kementerian Perhubungan ikut hadir Sekretaris Jenderal Sugihardjo, Dirjen Perhubungan Darat Pudji Hartanto, Dirjen Perhubungan Laut A. Tonny Budiono, Dirjen Perhubungan Udara Agus Santoso, Kepala Badan Litbang Umiyatun Hayati dan Kepala BPTJ Bambang Prihartono.</p>\r\n<p style=\"text-align: justify;\">Hadir pula perwakilan dari Perusahaan BUMN serta Perusahaan Swasta yang terkait dengan sektor transportasi.(HH/TH/BS/JAB)</p>'),
(9, 0, 0, 0, 0, 'ngadmin', 'Keselamatan, Keamanan dan Pelayanan Transportasi Tetap Menjadi Prioritas Dalam Peraturan Perundangan', '', '', '', 'keselamatan-keamanan-dan-pelayanan-transportasi-tetap-menjadi-prioritas-dalam-peraturan-perundangan', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Rabu', '2017-08-01', '2017-08-01', '09:36:50', '29whatsappimage20170727at16.19.39.jpeg', 889, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">JAKARTA &ndash; Keselamatan, keamanan dan pelayanan transportasi tetap menjadi prioritas dalam penyelenggaraan jasa transportasi, untuk mewujudkan terciptanya transportasi yang berkeselamatan dan pelayanan transportasi yang prima, sebagai regulator Kementerian Perhubungan telah menerbitkan berbagai peraturan perundang-undangan sebagai landasan hukumnya. Demikian dikatakan Staf Ahli Bidang Hukum dan Reformasi Umar Aris saat membuka Sosialisasi Peraturan Perundang-undangan Bidang Transportasi Darat di Jakarta, Kamis (27/7).</span></p>\r\n<p style=\"text-align: justify;\">&ldquo;Tiga hal utama yang menjadi tolok ukur keberhasilan kinerja Kementerian Perhubungan adalah Keselamatan, Keamanan dan Pelayanan Publik, ketiga faktor tersebut tentu saja tidak hanya terkait dengan infrastruktur namun juga harus disertai implementasi kebijakan secara konsisten serta komitmen kuat dari setiap pemangku kepentingan di bidang Perhubungan,&rdquo; jelas Umar.</p>\r\n<p style=\"text-align: justify;\">&lsquo;&rsquo;Sosialisasi ini sebagai sarana untuk bertukar pikiran terkait pelaksanaan tugas sehari-hari terutama dalam peningkatan keselamatan, keamanan dan peningkatan kualitas maupun kuantitas pelayanan transportasi publik&rdquo; pesan Sahli Umar.</p>\r\n<p style=\"text-align: justify;\">Umar menambahkan tujuan dilaksanakan sosialiasi ini untuk menjadikan aparatur perhubungan, masyarakat dan mitra kerja dapat memahami, menaati serta menerapkan aturan hukum sesuai dengan ketentuan yang berlaku sehingga dapat meningkatkan kinerja baik bagi aparatur negara, orang perorangan maupun sebagai warga masyarakat.</p>\r\n<p style=\"text-align: justify;\">Acara Sosialisasi Peraturan Perundang-undangan di Bidang Transportasi Darat dan Peraturan Menteri Lainnya Tahun 2017 di Jakarta ini merupakan rangkaian kegiatan sosialisasi yang telah dijadwalkan oleh Biro Hukum Kementerian Perhubungan dalam Tahun Anggaran 2017. Selanjutnya acara sosialisasi ini akan diadakan di tiga lokasi/daerah lainnya yaitu DIY (Yogyakarta), Sumatera Utara (Medan), dan Sulawesi Selatan (Makassar).</p>\r\n<p style=\"text-align: justify;\">Adapun materi yang di sampaikan dalam acara sosialisasi tersebut adalah sebagai berikut:</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ol>\r\n<li><span style=\"background-color: initial;\">Peraturan Menteri Perhubungan Nomor PM 52 Tahun 2012 tentang Alur Pelayanan Sungai dan Danau;</span></li>\r\n<li>Peraturan Menteri Perhubungan Nomor PM 96 Tahun 2015 tentang Pedoman Pelaksanaan Kegiatan Manajemen dan Rekayasa Lalu Lintas;</li>\r\n<li>Peraturan Menteri Perhubungan Nomor PM 111 Tahun 2015 tentang Tata Cara Penetapan Batas Kecepatan;</li>\r\n<li>Peraturan Menteri Perhubungan Nomor 133 Tahun 2015 tentang Pengujian Berkala Kendaraan Bermotor;</li>\r\n<li>Peraturan Menteri Perhubungan Nomor PM 145 Tahun 2016 tentang Organisasi dan Tata Kerja Balai Pengelolaan Transportasi Darat;</li>\r\n<li>Peraturan Menteri Perhubungan Nomor PM 156 Tahun 2016 tentang Kompetensi Penguji Berkala Kendaraan Bermotor;</li>\r\n<li>Peraturan Menteri Perhubungan Nomor PM 11 Tahun 2017 tentang Perubahan Ketiga Atas Peraturan Menteri Perhubungan Nomor PM 75 Tahun 2015 tentang Penyelenggaraan Analisis Dampak Lalu Lintas;</li>\r\n<li>Peraturan Menteri Perhubungan Nomor 26 Tahun 2017 tentang Penyelenggaraan Angkutan Orang Dengan Kendaraan Bermotor Umum Tidak Dalam Trayek;</li>\r\n<li>Peraturan Menteri Perhubungan Nomor PM 43 Tahun 2017 tentang Pedoman Pembentukan Unit Layanan Pengadaan di Kementrian Perhubungan.(MM-PFP/TH/BS/JAB)</li>\r\n</ol>'),
(10, 2, 0, 0, 0, 'ngadmin', 'Satu Penerbangan Jamaah Haji Pesawat Saudia Airlines Dialihkan Sementara Ke Bandara Soekarno Hatta', '', '', '', 'satu-penerbangan-jamaah-haji-pesawat-saudia-airlines-dialihkan-sementara-ke-bandara-soekarno-hatta', 'Y', '', 'Y', '', '', '', '', '', '', 'Kemenhub RI', 'Rabu', '2017-08-01', '2017-08-01', '09:49:16', '46halim1.jpg', 514, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">JAKARTA &ndash; Direktur Jenderal Perhubungan Udara Agus Santoso menyampaikan permohonan maaf atas terjadinya keterlambatan keberangkatan jemaah haji dari bandara Halim Perdanakusuma pada hari Jumat (28/8) dikarenakan terjadinya pengelupasan landasan setelah pesawat pengangkut Jemaah haji kloter pertama jenis B777 tinggal landas menuju Madinah, Arab Saudi.</span></p>\r\n<p style=\"text-align: justify;\">Lebih lanjut Dirjen Hubud menjelaskan bahwa dengan kerusakan pada landasan diperlukan waktu untuk perbaikan dan untuk itu Bandara Halim PK ditutup selama kurang lebih 3 (tiga) jam. sesuai dengan nomor NOTAM A2511/17 yang dikeluarkan Direktorat Navigasi Penerbangan Direktorat Jenderal Perhubungan Udara.</p>\r\n<p style=\"text-align: justify;\">Menteri Perhubungan Budi Karya Sumadi menginstruksikan kepada Dirjen Perhubungan Udara untuk segera mengkoordinasikan dengan pihak Manajemen PT Angkasa Pura II dan panitia embarkasi haji Bandara Halim Perdanakusuma untuk penanganan pelayanan jamaah haji dengan adanya keterlambatan tersebut. Lebih lanjut Menhub menginstruksikan Dirjen Perhubungan Udara memerintahkan kepada penyelenggara bandara embarkasi haji untuk melaksanakan rencana kontijensi sesuai hasil verifikasi yang telah dilakukan oleh Direktorat Jenderal Perhubungan Udara.</p>\r\n<p style=\"text-align: justify;\">Hari ini, Jumat (28/7) sesuai jadwal akan diberangkatkan 3 (tiga) penerbangan haji melalui bandara Halim PK dengan rincian 1 penerbangan dengan menggunakan pesawat Garuda Indonesia dan 2 penerbangan dengan menggunakan pesawat Saudia Airlines dengan masing-masing menggunakan jenis pesawat B777.</p>\r\n<p style=\"text-align: justify;\">Agar pemberangkatan jadwal penerbangan haji berikutnya tidak mengalami keterlambatan yang signifikan karena penutupan sementara bandara Halim PK, maka pemberangkatan jadwal penerbangan haji berikutnya yang rencana akan diberangkatkan dari bandara Halim PK pukul 12.00 WIB dengan pesawat Saudia Airlines untuk sementara dialihkan ke bandara Soekarno-Hatta dengan jadwal pemberangkatan pada pukul 13.05 WIB. Selanjutnya, setelah bandara Halim PK beroperasional kembali, maka jadwal penerbangan haji melalui bandara Halim PK akan diberangkatkan sesuai dengan jadwal yang sudah ditentukan. <strong>(ATD)</strong></p>'),
(11, 2, 0, 0, 0, 'ngadmin', 'Wapres Apresiasi Angka Kecelakaan Mudik Lebaran Menurun 30%', '', '', '', 'wapres-apresiasi-angka-kecelakaan-mudik-lebaran-menurun-30', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Rabu', '2017-08-01', '2017-08-01', '09:55:43', '44img0473.jpg', 514, '', 0, '<p style=\"text-align: justify;\"><span style=\"-webkit-text-size-adjust: 100%;\">JAKARTA &ndash; Wakil Presiden Jusuf Kalla memberikan ucapan selamat dan terima kasih atas upaya yang telah dilakukan Kementerian dalam hal ini Kementerian Perhubungan yang telah berhasil menurunkan angka kecelakaan sebanyak 30% pada mudik lebaran tahun 2017. Demikian disampaikan Jusuf Kalla yang akrab dipanggil JK pada saat penyerahan penghargaan atas meningkatnya keselamatan &amp; kelancaran Arus Mudik Lebaran 2017 dalam acara Pencanangan Tahun Keselamatan Untuk Kemanusiaan 2017-2018 di Bundaran Hotel Indonesia (HI) pada Minggu (30/7).</span></p>\r\n<p style=\"text-align: justify;\">\"Saya mengucapkan terima kasih dan selamat atas penerima penghargaan hari ini yang dengan segala upayanya menyelamatkan banyak jiwa manusia sehingga mudik lebaran menurun korbannya sampai 30% menandakan bahwa apabila kita bekerja sama dengan baik dapat kita selesaikan hal-hal yang selama ini memberikan korban jiwa yang begitu besar,\" ujar JK</p>\r\n<p style=\"text-align: justify;\">Lebih lanjut JK mengatakan berkurangnya 30% angka korban jiwa dalam mudik lebaran 2017 dapat terwujud atas koordinasi dan perencanaan yang baik.</p>\r\n<p style=\"text-align: justify;\">\"30% itu artinya kurang lebih 200 orang dapat diselamatkan karena koordinasi dan perencanaan yang baik. Sekali lagi wujudkan kerjasama dan upaya bersama sehingga kecelakaan ini dapat kita kurangi,\" jelas JK.</p>\r\n<p style=\"text-align: justify;\">Kemenhub sendiri menjadi bagian dalam Pilar Ketiga yaitu kendaraan yang berkeselamatan dalam Instruksi Presiden No.4 Tahun 2013 tentang Rencana Umum Nasional Keselamatan (RUNK) Jalan yang terdiri dari 5 (lima) pilar yaitu : Manajemen Keselamatan Jalan, Jalan yang Berkeselamatan, Kendaraan yang Berkeselamatan, Perilaku Pengguna Jalan yang Berkeselamatan dan Penanganan Pra dan Paska Kecelakaan.</p>\r\n<p style=\"text-align: justify;\">\"Fokus Kemenhub dalam Pilar ketiga diantaranya, pembatasan kecepatan pada kendaraan, penanganan muatan lebih (overloading), penghapusan kendaraan, standar keselamatan angkutan umum, penyempurnaan uji tipe kendaraan bermotor yang diimpor dalam keadaan bukan baru modifikasi, serta pengembangan desain dan riset kendaraan bermotor,\" terang Menteri Perhubungan Budi Karya Sumadi.</p>\r\n<p style=\"text-align: justify;\">Senada dengan Menhub, Kapolri Tito Karnavian menjelaskan outcome seluruh potensi yang ada pada pemangku kepentingan 5 pilar maupun seluruh komunitas kalangan masyarakat dapat mengaktifkan soft power serta mitra-mitra keselamatan yang proaktif dalam mewujudkan keselamatan untuk kemanusiaan.</p>\r\n<p style=\"text-align: justify;\">\"Bahwa rancangan ini adalah wujud sinergi yang utuh antara 5 pilar Kementerian dan Kelembagaan yaitu Menteri Perencanaan Pembangunan Nasional, Menteri Pekerjaan Umum dan Perumahan Rakyat, Menteri Perhubungan, Kapolri, Menteri Kesehatan serta Dirut Jasa Raharja dalam penyelenggaraan gerakan moral yang bertujuan untuk meningkatkan kualitas keselamatan, menurunkan tingkat fatalitas korban kecelakaan serta membangun budaya tertib berlalu lintas,\" jelas Tito.</p>\r\n<p style=\"text-align: justify;\">Turut hadir dalam acara diantaranya Menteri Kemen PUPR Basuki Hadimuljono, Kementerian BUMN Rini M. Soemarno, Menteri Kesehatan Nila Moeloek, Menteri PPN Bambang Brodjonegoro, Direktur Utama PT. Jasa Raharja Budi Setyarso. <strong>(LFH/TH/BS/JAB)</strong></p>'),
(12, 3, 0, 0, 0, 'ngadmin', 'Indonesia Siap Tandatangani ASEAN CBTP (Cross Border Transport of Passangers By Road Vehicle)', '', '', '', 'indonesia-siap-tandatangani-asean-cbtp-cross-border-transport-of-passangers-by-road-vehicle', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Rabu', '2017-08-07', '2017-08-07', '21:35:50', '40whatsappimage20170803at16.20.37.jpeg', 405, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">JAKARTA &ndash; Indonesia siap menandatangi ASEAN Cross Border Transport of Passangers by Road Vehicle (CBTP) pada pertemuan the 23rd ASEAN Transport Ministers Meeting (ATM) yang akan diselenggarakan pada bulan Oktober 2017 di Singapura. Demikian disampaikan Sekretaris Jenderal Kementerian Perhubungan Sugihardjo pada pertemuan Transport Facilitation Working Group (TFWG) ke-34 dan pertemuan ASEAN Transit Transport Coordinating Board ke-9 di Phu Quoc Island, Vietnam pada tanggal 31 Juli &ndash; 3 Agustus 2017.</span></p>\r\n<p style=\"text-align: justify;\">&ldquo;Sebagai implementasi dari ditandatanganinya persetujuan tersebut, Indonesia diharapkan untuk dapat meningkatkan kapasitas dan kualitas infrastruktur jalan serta membangun fasilitas pendukung di perbatasan Indonesia dengan negara tetangga,&rdquo; jelas Sugihardjo.</p>\r\n<p style=\"text-align: justify;\">Untuk itu, Sugihardjo menjelaskan, saat ini Pemerintah Indonesia sedang melakukan pembangunan Rest and Recreation Centers di perbatasan, menyelesaikan pembangunan jalan ruas Pontianak &ndash; Entikong dan Tayan &ndash; Sarawak, perluasan Jalan Toll Manado-Bitung dari 2 ruas menjadi 4 ruas, pembangunan jalan toll Balikpapan-Samarinda yang diharapkan selesai pada tahun 2019, pembangunan Jembatan Pulau Balang (Kalimantan Timur) yang diharapkan selesai pada tahun 2018 serta pembangunan Terminal Barang Internasional Entikong, Kalimantan Barat, Nangabadau, dan Aruk.</p>\r\n<p style=\"text-align: justify;\">Sugihardjo berharap dengan ditandatanganinya agreement tersebut, dapat mempermudah pergerakan penumpang lintas batas negara sehingga pada akhirnya akan membantu terwujudnya konektivitas antar negara di wilayah ASEAN, menumbuhkan perekonomian masyarakat perbatasan dan lebih jauh lagi dapat meningkatkan tingkat kesejahteraan masyarakat di sekitar wilayah tersebut.</p>\r\n<p style=\"text-align: justify;\">Pertemuan TFWG ke-34 dihadiri oleh seluruh perwakilan dari negara anggota ASEAN, ASEAN Secretariat, Ministry of Land, Infrastructure and Transport (MLIT) Jepang, ASEAN Federation of Forwarders Association (AFFA), ASEAN Trucking Federation (ATF), dan ASEAN Council of Bureau (COB). Delegasi Indonesia dipimpin oleh Sekretaris Jenderal Kementerian Perhubungan Sugihardjo dan turut serta sebagai anggota delegasi adalah Direktur Sarana Perhubungan Darat, Eddy Gunawan, perwakilan Biro Kerja Sama, Atase Perhubungan di Kuala Lumpur, dan Direktorat Jenderal Perhubungan Darat Kementerian Perhubungan.</p>\r\n<p style=\"text-align: justify;\">Pertemuan ke-34 TFWG tersebut secara resmi dibuka oleh Deputy Minister, Ministry of Transport of Viet Nam, H. E. Mr. Nguyen Hong Truong, yang pada sambutannya menekankan tentang peran penting transportasi dalam mewujudkan ASEAN Community Vision 2025 yang mendorong terciptanya wilayah ASEAN yang lebih terintegrasi.</p>\r\n<p style=\"text-align: justify;\">Rangkaian pertemuan dilanjutkan dengan pertemuan ke-9 ASEAN Transit Transport Coordinating Board (TTCB) yang telah diselenggarakan pada tanggal 3 Agustus 2017 dan dibuka oleh STOM Leader dari Viet Nam. Pertemuan ini merupakan pertemuan pejabat tinggi dalam bidang transportasi transit yang telah ditunjuk sebagai TTCB Leaders dari semua negara anggota ASEAN.</p>\r\n<p style=\"text-align: justify;\">Selanjutnya, Brunei Darussalam akan menjadi tuan rumah untuk pertemuan ke-35 TFWG dan seterusnya selama 2 tahun ke depan.</p>\r\n<p style=\"text-align: justify;\">Poin Pembahasan pada TFWG ke-34</p>\r\n<p style=\"text-align: justify;\">Pada pertemuan TFWG ke-34 tersebut, terdapat beberapa poin penting yang perlu menjadi perhatian, yaitu:</p>\r\n<p style=\"text-align: justify;\">a.ASEAN Secretariat akan mengirimkan draft final ASEAN CBTP (ASEAN Framework Agreement on the Facilitation of Cross Border Transport of Passangers by Road Vehicles) untuk mendapatkan persetujuan dari masing-masing negara anggota ASEAN di mana pada pertemuan TFWG ke-34 ini sudah tidak terdapat masalah terkait legal drafting sehingga diharapkan sudah tidak ada lagi intervensi terhadap agreement tersebut. ASEAN CBTP diharapkan dapat ditandatangani pada pertemuan ke-23 ASEAN Transport Ministers (23rd ATM) di Singapura pada bulan Oktober.</p>\r\n<p style=\"text-align: justify;\">b.Proses ratifikasi ASEAN Framework Agreement of the Facilitation of Inter State Transport (AFAFIST) dan beserta panduan teknisnya memerlukan perhatian khusus dalam implementasinya. Direktorat Jenderal Perhubungan Darat juga perlu memperhatikan fasilitasi dalam hal ini kesiapan infrastruktur untuk mendukung implementasi persetujuan ini.</p>\r\n<p style=\"text-align: justify;\">c.Policy Dialogue on Logistics between Indonesia and Japan rencananya akan diselenggarakan pada awal bulan November 2017 di Jakarta. Penyelenggara pertemuan ini adalah pihak Jepang dan Indonesia diminta mengusulkan topik terkait operasionalisasi dan kebijakan logistik di Indonesia. Dalam pertemuan ini diharapkan Indonesia dapat mengundang semua kementerian/lembaga beserta stakeholder terkait. Biro Kerja Sama, Direktorat Jenderal Perhubungan Darat, dan Badan Litbang diharapkan dapat memfasilitasi pertemuan ini.</p>\r\n<p style=\"text-align: justify;\">Turut hadir sebagai delegasi Indonesia dalam kegiatan tersebut Kepala Bagian Kerjasama Multilateral Sindu Rahayu, Atase Perhubungan di Kuala Lumpur M. Abduh, Kepala Seksi Pengawasan Usaha Angkutan Multimoda Elis Simbolon dan Kepala Seksi Manajemen Lalu Lintas SDP Desy Waluyanti.</p>\r\n<p style=\"text-align: justify;\">(RY/TH/SR/BS)</p>');
INSERT INTO `berita---` (`id_berita`, `id_kategori`, `id_subkategori`, `id_subdomain`, `id_daerah`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `headline`, `headline_utama`, `aktif`, `utama`, `pilihan`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`, `rating`, `isi_berita`) VALUES
(13, 2, 0, 0, 0, 'ngadmin', 'Lantik 74 Perwira Pandu, Menhub Berharap Kualitas Layanan Pandu Meningkat', '', '', '', 'lantik-74-perwira-pandu-menhub-berharap-kualitas-layanan-pandu-meningkat', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Sabtu', '2017-08-09', '2017-08-09', '14:11:46', '16img0658.jpg', 565, '', 0, '<p style=\"text-align: justify;\"><span style=\"-webkit-text-size-adjust: 100%;\">JAKARTA - Menteri Perhubungan Budi Karya Sumadi berharap dapat meningkatkan kualitas dan kuantitas layanan pemanduan kapal sehingga makin meningkatkan keselamatan pelayaran. Hal tersebut disampaikan Menhub usai melantik 74 Perwira Pandu Tingkat II Angkatan XXXIX Tahun 2017 di Ruang Mataram Kementerian Perhubungan pada Selasa (8/8).</span></p>\r\n<p style=\"text-align: justify;\">Menhub mengatakan bahwa penyelenggaraan pemanduan di Indonesia telah diatur dalam Peraturan Menteri Perhubungan Nomor. 57 Tahun 2015 tentang Pemanduan dan Penundaan Kapal. Sesuai Peraturan tersebut, pelayanan jasa pemanduan dan penundaan kapal diselenggarakan oleh Kantor Otoritas Pelabuhan (OP), Kantor Kesyahbandaran dan Otoritas Pelabuhan (KSOP), atau Kantor Unit Penyelenggara Pelabuhan (UPP).</p>\r\n<p style=\"text-align: justify;\">&ldquo;Namun jika kantor OP, KSOP atau UPP belum menyediakan jasa pemanduan dan penundaan kapal maka pelaksanaan pelayanan jasa pemanduan dan penundaan kapal dapat dilimpahkan kepada Badan Usaha Pelabuhan yang memenuhi persyaratan setelah memperoleh izin dari Menteri,&rdquo; terang Menhub.</p>\r\n<p style=\"text-align: justify;\">Selanjutnya, kepada jajaran Badan Usaha Pelabuhan dan Terminal Khusus sebagai pelaksana dan pengelola pemanduan, Menhub berharap agar dapat memberikan pelayanan pemanduan dan kepelabuhanan yang optimal dengan memperhatikan faktor keselamatan, serta memenuhi persyaratan yang telah ditetapkan. Persyaratan tersebut antara lain : menyediakan pandu, menyediakan sarana bantu, dan prasarana pemanduan kapal yang memenuhi persyaratan, serta memberikan pelayanan jasa pemanduan sesuai dengan sistem dan prosedur yang ditetapkan.</p>\r\n<p style=\"text-align: justify;\">Dalam sambutannya Menhub juga menjelaskan pentingnya peran pandu dalam menunjang keselamatan pelayaran, khususnya di Selat Malaka dan Selat Singapura yang merupakan salah satu kawasan terpenting jalur laut di Kawasan Asia Tenggara. Kawasan sepanjang 550 mil laut tersebut merupakan salah satu jalur laut sempit namun banyak dilalui ribuan kapal dari berbagai negara. Setiap tahunnya terdapat sekitar 70-80 ribu kapal, baik itu kapal kargo maupun kapal tanker yang melintas di selat Malaka dan Selat Singapura.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Padatnya kondisi jalur pelayaran di selat tersebut tentunya rawan terhadap kecelakaan di laut. Kondisi ini menjadikan pemanduan di wilayah Selat Malaka dan Selat Singapura menjadi sangat penting terutama dalam menjamin keselamatan pelayaran bagi kapal-kapal yang berlayar. Hingga saat ini, petugas pandu yang bertugas melakukan pemanduan di Selat tersebut berjumlah 40 orang,&rdquo; jelas Menhub.</p>\r\n<p style=\"text-align: justify;\">Terkait beberapa pelabuhan yang akan menjadi hub internasional, kedepan menhub akan membekali para pandu dengan fungsi edukasi serta fungsi promosi.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Saya selalu concern bahwasanya pemanduan ada kaitannya dengan pengembangan Kuala Tanjung. Untuk itu kita akan memberikan pembekalan edukasi dan promosi kepada para pandu karena mereka ini yang akan mengarahkan dan memberikan informasi kapal-kapal internasional yang masuk wilayah tersebut,&rdquo; ujar Menhub.</p>\r\n<p style=\"text-align: justify;\">Sebagai informasi, 74 Perwira Pandu yang dilantik telah berhasil menyelesaikan Diklat Pandu Tk.II selama 5 (lima) bulan yang terbagi dalam dua tahap pelatihan yaitu 3 (tiga) bulan untuk teori dan evaluasi, 2 (dua) bulan untuk praktek pemanduan kapal. Sedangkan pesertanya dibagi dalam 2 (dua) tahap, yaitu Tahap I diikuti oleh 40 (Empat Puluh) siswa yang terdiri dari PT. Pelindo I (14 siswa), PT. Pelindo II (12 siswa), PT. Pelindo IV (10 siswa), PT. Krakatau Bandar Samudera (1 siswa), PT. TPPI-Tuban (1 siswa), PT. Adhiguna Putera (1 siswa), dan Swadana (1 siswa). Sedangkan Tahap II diikuti oleh 34 (Tiga Puluh Empat) siswa yang berasal dari PT. Pelindo III (32 siswa), PT. Arutmin Indonesia (1 siswa), dan PT. World Terminalindo (1 siswa). <strong>(LFH/TH/BS/HA)</strong></p>'),
(14, 2, 0, 0, 0, 'ngadmin', 'Rusia Tawarkan Pesawat MC-21 Kepada Indonesia, Menhub: Makin Banyak Pilihan Yang Kompetitif', '', '', '', 'rusia-tawarkan-pesawat-mc21-kepada-indonesia-menhub-makin-banyak-pilihan-yang-kompetitif', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Jumat', '2017-08-14', '2017-08-14', '20:54:01', '5whatsappimage20170809at14.46.02.jpeg', 526, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">Jakarta &ndash; Rusia tawarkan pesawat komersial buatannya yakni MC-21 kepada Indonesia. Pesawat ini adalah buatan Irkut Corporation, manufaktur pembuat pesawat asal Rusia. Dengan adanya pesawat ini akan membuat dunia penerbangan Indonesia memiliki banyak pilihan, sehingga produk yang ditawarkan lebih kompetitif. Demikian disampaikan Menteri Perhubungan RI Budi Karya Sumadi pada presentasi penawaran pesawat MC-21 yang turut dihadiri Menteri Luar Negeri Rusia Sergey Lavrov di Hotel Grand Hyatt, Jakarta, Rabu (9/8).</span></p>\r\n<p style=\"text-align: justify;\">Menhub mengatakan hal ini merupakan suatu kesempatan bagi dunia aviasi Indonesia, terutama bagi pihak yang bergerak dalam dunia penerbangan untuk mendapatkan suatu produk-produk yang kompetitif. &ldquo;Makin banyak barang-barang ditawarkan makin banyak kesempatan kita untuk memilih. Jadi nanti makin banyak supply, kita dapat lebih memilih apa yang kita butuhkan dengan harga yang lebih kompetitif,&rdquo; ujar Menhub.</p>\r\n<p style=\"text-align: justify;\">Menhub Budi menambahkan pesawat MC-21 yang ditawarkan ini adalah jenis pesawat yang sering digunakan di Indonesia karena dapat menampung 165-211 penumpang, suatu jumlah penumpang yang diperlukan untuk penerbangan di Indonesia.</p>\r\n<p style=\"text-align: justify;\">Selanjutnya untuk segi bisnis, Menhub memberikan kebebasan kepada korporasi penerbangan untuk langsung berhubungan dengan produsen alat transportasi.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Untuk cocok atau tidak cocoknya kita serahkan kepada korporasi untuk melakukan penjajakan dengan mereka, dan nanti kalau didapatkan suatu efisiensi yang bagus pasti pesawat ini akan diminati juga di Indonesia. Kalau mau beli saya serahkan kepada korporasi penerbangan kita seperti Garuda, Lion, Sriwijaya dan sebagainya silahkan melihat. Namun demikian kami memiliki standar tertentu khususnya mengenai safety, maka Ditjen Perhubungan Udara akan memberikan rekomendasi dan akan disesuaikan dengan standar internasional pada ICAO,&rdquo; pungkas Menhub.</p>\r\n<p style=\"text-align: justify;\">Standar ini mengacu pada UU No. 1 Tahun 2009 tentang Penerbangan dan Civil Aviation Safety Regulation (CASR part 21 terkait Certification Procedures for Product and Parts. Pada aturan ini mengatur bahwa sesuai prosedur dan standar internasional pesawat komersial harus ada sertifikat uji tipe dari negara pembuat dan ada verifikasi dari negara dimana pesawat akan dioperasikan.</p>\r\n<p style=\"text-align: justify;\">Pesawat MC-21 yang ditawarkan ini adalah khusus penumpang. Karena ini baru penawaran awal, Menhub mengatakan harus dilakukan pengamatan lebih jauh tentang kehandalan pesawat ini baru nanti akan ditentukan penggunaannya untuk komersial atau logistik. &ldquo;Tentunya akan ada pendalaman-pendalaman tentang keunggulan-keunggulan pesawat ini dan itu dilakukan oleh masing-masing korporasi penerbangan,&rdquo; tutur Menhub.</p>\r\n<p style=\"text-align: justify;\">Menurut Menhub, saat ini pesawat Rusia masih terbatas digunakan untuk pesawat carter dan general aviation. &ldquo;Pesawat Rusia sekarang ini digunakan untuk pesawat-pesawat pribadi dan pesawat untuk carter. Jumlahnya saya tidak terlalu tahu persis, tapi cukup banyak,&rdquo; kata Menhub.</p>\r\n<p style=\"text-align: justify;\">Pada kesempatan ini Menhub juga mengatakan dalam dunia penerbangan Indonesia adalah pasar yang potensial. Saat ini dunia penerbangan Indonesia berkembang sangat pesat. Tercatat 95 juta penumpang menggunakan pesawat udara setiap tahunnya. Dan ini berkembang dengan pesat dari tahun ke tahun. &ldquo;Perlu diketahui juga kami mengoperasikan kurang lebih 200 airport, dari 200 airport itu terdapat 60 airport komersial. Saat ini beroperasi lebih dari 1200 pesawat yang terdaftar di Indonesia. Kita juga melakukan perawatan-perawatan secara baik sehingga pesawat-pesawat itu dapat beroperasi dengan baik,&rdquo; jelas Menhub.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Secara internasional Indonesia sudah mendapatkan FAA kategori 1, yang menyatakan bahwa Indonesia telah memiliki standar internasional. Berkaitan dengan Eropa, Indonesia yang tadinya ada banned (cekal) terhadap penerbangan Indonesia, sekarang praktis tidak ada lagi banned terhadap penerbangan Indonesia. Diartikan dunia aviasi Indonesia memiliki masa depan yang sangat cerah,&rdquo; ucap Menhub.</p>\r\n<p style=\"text-align: justify;\">Sedangkan Menteri Luar Negeri Federasi Rusia Sergey Lavrov mengatakan pengenalan pesawat penumpang Rusia terbaru MS-21, merupakan langkah penting dalam pelaksanaan kesepakatan mengenai aktivasi kerjasama ekonomi yang saling menguntungkan antara Rusia dan Indonesia.</p>\r\n<p style=\"text-align: justify;\">Ia menambahkan bahwa ini adalah perwujudan kemajuan industri pesawat terbang Rusia dalam beberapa tahun terakhir yang dibuat atas dasar perkembangan inovatif yang unik di sejumlah bidang. &ldquo;Akibatnya, pesawat ini tidak hanya tidak inferior, tapi juga melampaui indikator modifikasi terbaru dari perusahaan pesaing yang sesuai - Airbus dan Boeing,&rdquo; ujarnya</p>\r\n<p style=\"text-align: justify;\">Sergey berharap Pesawat MC-21 akan diminati di pasar transportasi udara yang tumbuh secara dinamis di Indonesia. &ldquo;Pesawat ini bisa menjadi solusi optimal untuk memastikan interkoneksi transportasi yang handal dari kepulauan-kepulauan Indonesia yang berada jauh dari satu sama lain,&rdquo; harapnya.</p>\r\n<p style=\"text-align: justify;\">Sergey secara khusus mencatat bahwa pabrikan Irkut Corporationsiap tidak hanya memasok pesawat ini ke Indonesia, tetapi juga untuk mengembangkan kerjasama ilmiah, teknis dan produksi yang beragam dengan mitra Indonesia dalam program MC-21. &ldquo;Secara khusus, ini mungkin merupakan pertanyaan untuk membangun pusat regional untuk perbaikan dan perawatan pesawat terbang ini,&rdquo; tutup Sergey. <strong>(HH/TH/BS/HA)</strong></p>'),
(15, 3, 0, 0, 0, 'ngadmin', 'Menhub dan Dubes Jepang Bahas Kerjasama Pembangunan Infrastruktur Transportasi di Indonesia', '', '', '', 'menhub-dan-dubes-jepang-bahas-kerjasama-pembangunan-infrastruktur-transportasi-di-indonesia', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Jumat', '2017-08-14', '2017-08-14', '20:57:53', '49dubesjepang.jpg', 371, '', 0, '<p><span style=\"background-color: initial;\">Jakarta &ndash; Menteri Perhubungan Budi Karya Sumadi bertemu dengan Duta Besar Jepang Masafumi Ishii untuk membahas 4 (empat) hal terkait kerjasama infrastruktur transportasi bilateral dari kedua negara.</span></p>\r\n<p>&ldquo;Pertemuan hari ini adalah pertemuan lanjutan antara saya dengan Dubes Jepang terkait pembahasan kerjasama pembangunan infrastruktur dan kerjasama pembiayaan, yaitu rencana pembangunan peningkatan kecepatan kereta api Jakarta-Surabaya, kelanjutan perjanjian kerjasama Indonesia-JICA untuk studi MRT East-West Corridor, perpanjangan disbursement loan proyek KA double-double track Cikarang-Manggarai, dan kerjasama pembangunan Pelabuhan Patimban,\" ujar Menhub saat ditemui di Kantor Kemenhub pada Senin (14/8).</p>\r\n<p>Menhub menyampaikan terkait rencana pembangunan percepatan waktu tempuh kereta-api rute jalur Jakarta-Surabaya menjadi kurang lebih 5 jam, Pemerintah Indonesia secara intensif telah membahas persiapan untuk mewujudkan hal tersebut.</p>\r\n<p>Menhub juga menegaskan Kemenhub berkomitmen melanjutkan perjanjian kerjasama Pemerintah Indonesia dengan JICA (Japan International Cooperation Agency) untuk studi proyek pembangunan MRT East-West Corridor.</p>\r\n<p>&ldquo;Setelah perayaaan Hari Kemerdekaan, saya menugaskan Dirjen Perkeretaapian untuk menemui Bapak Dubes untuk membahas rincian tindak lanjut rencana Pemerintah Indonesia untuk melanjutkan komitmen melaksanakan Perjanjian Pinjaman untuk Kerjasama studi Rencana pembangunan MRT East-West Corridor sesuai dengan perjanjian yang telah disepakati antara Pemerintah Indonesia dan JICA tersebut,&rdquo; jelas Menhub.</p>\r\n<p>Menhub juga akan meminta Dirjen Perkeretaapian untuk membahas dengan staf Bapak Dubes terkait perpanjangan waktu disbursement (pembayaran) dari bulan September 2017 sampai dengan awal tahun depan untuk pinjaman pembangunan jalur kereta api double double track Cikarang-Manggarai.</p>\r\n<p>&ldquo;Permintaaan perpanjangan ini kami sampaikan karena adanya proses teknis dengan BPKP yang masih memerlukan waktu. Kami perkirakan kemungkinan akan melewati batas waktu disbursement loan agreement bulan September 2017,&rdquo; tambah Menhub.</p>\r\n<p>Terkait rencana pembangunan Pelabuhan Patimban, Menhub mengatakan Pemerintah Indonesia terus melaksanakan rencana kerja sesuai dengan jadwal yang disepakati.</p>\r\n<p>&ldquo;Kami juga ingin membahas kembali mengenai rencana pembangunan Pelabuhan Patimban. Dalam hal ini, Pemerintah Indonesia terus melaksanakan rencana kerja sesuai dengan jadwal yang disepakati dengan pihak Pemerintah Jepang. Pemerintah Indonesia terus melakukan pembahasan mengenai rencana kerjasama untuk operator Pelabuhan Patimban tersebut,&rdquo; tutup Menhub. (CRA/TH/BS/HA)</p>'),
(16, 2, 0, 0, 0, 'ngadmin', 'Aturan Pembatasan Operasional Angkutan Barang Pada Hari Raya Idul Adha 1438 H Mulai Berlaku 31 Agust', '', '', '', 'aturan-pembatasan-operasional-angkutan-barang-pada-hari-raya-idul-adha-1438-h-mulai-berlaku-31-agust', 'Y', '', 'Y', '', '', '', '', '', '', 'Dephub', 'Jumat', '2017-08-31', '2017-08-31', '08:39:20', '61image.jpg', 569, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">JAKARTA &ndash; Untuk mendukung kelancaran arus lalu lintas pada saat libur panjang Hari Raya Idul Adha Tahun 2017/1438 H, Kementerian Perhubungan melalui Direktorat Jenderal Perhubungan Darat telah mengeluarkan surat edaran tentang pengaturan lalu lintas dan pembatasan operasional terhadap tiga jenis kendaraan angkutan barang diantaranya kendaraan bahan bangunan, kereta tempelan atau kereta gandengan, serta kendaraan kontainer, dan kendaraan pengangkut barang dengan sumbu tiga atau lebih.</span></p>\r\n<p style=\"text-align: justify;\">&ldquo;Sesuai Surat Edaran Dirjen Perhubungan Darat Tahun 2017, pembatasan kendaraan angkutan barang mulai berlaku pada tanggal 31 Agustus 2017 pukul 12.00 WIB sampai dengan 1 September 2017 pukul 12.00 WIB dan tanggal 3 September 2017 pukul 06.00 sampai dengan 23.59 WIB,&rdquo; jelas Plt. Kepala Biro Komunikasi dan Informasi Publik Hengki Angkasawan di Jakarta, Senin (28/8).</p>\r\n<p style=\"text-align: justify;\">Lebih Lanjut Hengki menjelaskan larangan pengoperasian kendaraan angkutan barang berlaku pada ruas jalan tol dan jalan nasional.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Ruas jalan yang diberlakukan aturan ini yaitu ruas jalan tol Jakarta-Cikampek-Brebes Timur, ruas jalan tol Jakarta-Purbaleunyi, ruas jalan tol Merak-Jakarta, ruas jalan tol Prof. Soediyatmo, jalan nasional Gilimanuk-Denpasar, dan jalan nasional Surabaya-Jombang-Kertosono-Madiun-Surakarta,&rdquo; terang Hengki.</p>\r\n<p style=\"text-align: justify;\">Namun, lanjut Hengki, aturan larangan pengoperasian kendaraan angkutan barang tersebut tidak berlaku bagi kendaraan pengangkut Bahan Bakar Minyak (BBM), Bahan Bakar Gas (BBG), ternak, bahan pokok (beras, gula pasir, terigu, minyak goreng, cabe merah, bawang merah, kacang tanah, kedelai, daging sapi, daging ayam, ikan segar, dan telur), pupuk. susu murni, barang antaran pos dan barang (bahan Baku) ekspor/impor dari kawasan industri atau sebaliknya ke pelabuhan ekspor/impor.</p>\r\n<p style=\"text-align: justify;\">Hengki mengatakan bahwa pengaturan arus lalu lintas dilakukan dengan manajemen dan rekayasa lalu lintas diantaranya pengendalian lalu lintas pada persimpangan, pengendalian lalu lintas pada ruas jalan dan pemasangan rambu lalu lintas, alat pemberi isyarat lalu lintas serta alat pengendali dan pengaman pengguna jalan sementara.</p>\r\n<p style=\"text-align: justify;\">Hengki juga menambahkan, waktu pemberlakukan larangan pengoperasian kendaraan angkutan barang dapat dievaluasi berdasarkan pertimbangan Kepolisian Negara Republik Indonesia.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Apabila terjadi gangguan arus lalu lintas dan angkutan jalan, maka para Kepala Dinas Perhubungan sesuai lokasi masing-masing perlu segera mengambil langkah-langkah antisipasi dan proaktif berkoordinasi dengan aparat pemerintah yaitu Ditjen Perhubungan Darat dan Polri,&rdquo; tambah Hengki.</p>\r\n<p style=\"text-align: justify;\">\"Pembatasan operasional angkutan barang pada hari raya Idul Adha Tahun 2017 yang tertuang dalam Surat Edaran Dirjen Perhubungan Darat Nomor : SE.17/AJ.201/DRJD 2017 pada tanggal 28 Agustus 2017 tentang Pengaturan Lalu Lintas dan Pembatasan Operasional Pada Saat Libur Panjang Hari Raya Idul Adha 2017/1438H,\" tutup Hengki. <strong>(LFH/TH/BS/HA)</strong></p>'),
(17, 3, 0, 0, 1, 'ngadmin', 'Tingkatkan Efektivitas dan Efisiensi Kerja, Pemprov Jambi Rasionalisasi PTT', '', '', '', 'tingkatkan-efektivitas-dan-efisiensi-kerja-pemprov-jambi-rasionalisasi-ptt', 'Y', '', 'Y', '', '', '', '', 'ATD', '', 'http://redaksijambi.com', 'Kamis', '2017-09-05', '2017-09-05', '08:19:59', '29img20170904wa0007300x225.jpg', 469, '', 0, '<p>JAMBI &ndash; Gubernur Jambi, Zumi Zola&nbsp;berusaha meningkatkan efektivitas dan efisiensi kerja, yang ditujukan untuk meningkatkan kinerja Pemerintah Provinsi Jambi. Salah satu langkah yang ditempuh adalah memerintahkan Organisasi Perangkat Daerah (OPD) lingkup Pemerintah Provinsi Jambi untuk mengkaji kebutuhan pegawai Tidak Tetap (PTT) atau yang kerap disebut honorer. Zola menegaskan, jumlah PTT harus sesuai dengan kebutuhan tiap OPD.</p>\r\n<p>&nbsp;</p>\r\n<p>Perintah Zola ditindaklanjuti OPD dengan menyesuaikan kebutuhan jumlah PTT. Untuk itu, diadakan seleksi kepada PTT, baik tes tertulis wawancara, dan tes kesehatan.</p>\r\n<p>Senin (4/9) siang, Kepala Badan Kepegawaian Daerah (BKD) Provinsi Jambi, Husairi menjelaskan, dari seleksi terhadap Pegawai Tidak Tetap Pemerintah Provinsi Jambi tersebut, jumlah PTT berkurang sangat signifikan, dari 3.433 orang PTT Pemerintah Provinsi Jambi tahun 2016 menjadi 2.676 pada tahun 2017. Artinya, ada 757 orang PTT yang dirasionalisasi pada tahun anggaran 2017.</p>\r\n<p>Husairi berharap agar rasionalisasi jumlah PTT Pemprov bisa meningkatkan kinerja Pemprov Jambi. (*/akn).</p>'),
(18, 3, 0, 0, 1, 'ngadmin', 'Gaji Seluruh PTT Dishub Sudah Dibayar', '', '', '', 'gaji-seluruh-ptt-dishub-sudah-dibayar', 'Y', '', 'Y', '', '', '', '', 'ATD', '', 'http://redaksijambi.com', 'Kamis', '2017-09-05', '2017-09-05', '08:45:30', '42img20170904wa0008300x225.jpg', 886, '', 0, '<p>JAMBI &ndash; Menindaklanjuti adanya berita yang menyatakan gaji Pegawai Tidak Tetap (PTT) Dinas Perhubungan (Dishub) Provinsi Jambi belum dibayar, tim yang terdiri dari Kepala Badan Kepegawaian Daerah (BKD) Provinsi Jambi, Husairi dan dan Inspektorat Provinsi Jambi melakukan verifikasi langsung kepada seluruh PTT Dinas Perhubungan Provinsi Jambi, Senin (4/9) &nbsp;jam 09.00 WIB.</p>\r\n<p>Didampingi oleh Kepala Biro Humas dan Protokol Setda Provinsi Jambi, Johansyah, Husairi menjelaskan, seluruh PTT Dinas Perhubungan Provinsi Jambi telah ditanyakan apakah ada yang belum dibayar gajinya, dan ternyata dari verifikasi tersebut, gaji seluruh (22 orang PTT) Dinas Perhubungan Provinsi Jambi tersebut telah dibayarkan gajinya.</p>\r\n<p>&ldquo;Bersama Inspektorat, kita tadi sudah turun ke Dinas Perhubungan Provinsi Jambi untuk menanyakan langsung seluruh (22 orang) PTT tersebut, mereka semua mengatakan bahwa gajinya sudah dibayarkan,&rdquo; ujar Husairi. (*/akn).</p>'),
(19, 2, 0, 0, 0, 'ngadmin', 'Menhub Minta Perwira Transportasi Lakukan Budaya Melayani, Tanggap Akan Keselamatan dan Bekerja Kera', '', '', '', 'menhub-minta-perwira-transportasi-lakukan-budaya-melayani-tanggap-akan-keselamatan-dan-bekerja-kera', 'Y', '', 'Y', '', '', '', '', 'ATD', '', 'http://www.dephub.go.id', 'Sabtu', '2017-09-07', '2017-09-07', '17:15:20', '40whatsappimage20170907at11.07.19.jpeg', 403, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">TANGERANG &ndash; Para wisudawan Perwira Transportasi agar melakukan budaya melayani, tanggap akan keselamatan dan bekerja keras yang berintegritas. Hal tesebut disampaikan Menteri Perhubungan Budi Karya Sumadi pada saat menjadi Inspektur Upacara Pelantikan Perwira Transportasi Darat, Laut dan Udara di lingkungan Badan Pengembangan Sumber Daya Manusia (BPSDM) Perhubungan Tahun 2017 yang dipusatkan di Sekolah Tinggi Penerbangan Indonesia (STPI) Curug, Tangerang, Kamis (7/9).</span></p>\r\n<p style=\"text-align: justify;\">Dalam melaksanakan pengabdian, Menhub berpesan kepada seluruh perwira yang dilantik untuk tidak berpuas diri terhadap keberhasilan yang saat ini dicapai, namun agar terus mengembangkan diri, meningkatkan kemampuan dan pengetahuan di bidang transportasi, serta memupuk sikap profesional.</p>\r\n<p style=\"text-align: justify;\">\"Para perwira untuk dapat terus menjalin komunikasi dan kerja sama yang sebaik-baiknya dengan sesama alumni untuk memperkuat nasionalisme dan semangat kebangsaan dimanapun saudara berada\", ujar Menhub Budi.</p>\r\n<p style=\"text-align: justify;\">Ke depan, Menhub berharap para wisudawan dapat terus meningkatkan kemampuan dan kinerja.</p>\r\n<p style=\"text-align: justify;\">\"Saya berharap para wisudawan terus meningkatkan kemampuan sehingga sumber daya manusia transportasi yang dihasilkan dapat diunggulkan baik di kancah nasional, regional, maupun internasional,\" tutup Menhub.</p>\r\n<p style=\"text-align: justify;\">Sementara pada kesempatan yang sama, Kepala Badan Pengembangan Sumber Daya Manusia Perhubungan, Djoko Sasono menyampaikan bahwa penyelenggaraan Pelantikan Perwira Transportasi Darat, Laut, dan Udara di Lingkungan Kementerian Perhubungan untuk mempersiapkan para perwira agar mengabdi untuk kepentingan bangsa dan negara.</p>\r\n<p style=\"text-align: justify;\">\"Selain itu pelantikan ini bertujuan untuk membangun jiwa korsa korps perwira transportasi sebagai</p>\r\n<p style=\"text-align: justify;\">perwujudan solidaritas dari seluruh unit pelaksana teknis di lingkungan Badan Pengembangan SDM Perhubungan Kemenhub,\" tambah Djoko.</p>\r\n<p style=\"text-align: justify;\">Perwira transportasi yang dilantik tercatat berjumlah 2046 orang dari berbagai program studi pada Sekolah Tinggi, Politeknik Akademi dan Balai di Lingkungan Badan Pengembangan SDM Perhubungan dengan rincian: Matra Darat 598 orang yang terdiri dari STTD Bekasi 230 orang, PKTJ Tegal 137 orang, API Madiun 119 orang, BPPTD Bali 56 orang, BPPTD Palembang 56 orang.</p>\r\n<p style=\"text-align: justify;\">Matra Laut 855 orang yang terdiri dari: STIP Jakarta 385 orang, PIP Semarang 189 orang, PIP Makasar 212 orang, Poltekpel Surabaya 69 orang.</p>\r\n<p style=\"text-align: justify;\">Matra Udara berjumlah 593 orang terdiri dari: STPI Curug 255 orang, Poltekpen Surabaya 98 orang, ATKP Makasar 141 orang, ATKP Medan 99 orang.</p>\r\n<p style=\"text-align: justify;\">Turut hadir dalam acara wisuda ini Wakil Ketua II MPR Efert Erens Mangindaan, Sekretaris Jenderal Kemenhub Sugihardjo, Inspektur Jenderal Kemenhub Wahju Satrio Utomo, Kepala Badan Pengembangan Sumber Daya Manusia Perhubungan Djoko Sasono, Setua STPI Curug Capt. Novyanto Widadi, Ketua STIP Marunda Capt. Sahattua P. Simatupang, Utusan Khusus Menhub untuk IMO Laksamana Purnawirawan Doktor Marsetio, perwakilan dari Negara sahabat Timor Leste, dan perwakilan dari sejumlah BUMN. <strong>(YP/TH/BS/HA)</strong></p>'),
(20, 2, 0, 0, 0, 'ngadmin', 'Menhub: Pembangunan Infrastruktur Transportasi Harus Didukung SDM Berkompeten', '', '', '', 'menhub-pembangunan-infrastruktur-transportasi-harus-didukung-sdm-berkompeten', 'Y', '', 'Y', '', '', '', '', 'ATD', '', 'http://www.dephub.go.id', 'Minggu', '2017-09-13', '2017-09-13', '11:46:28', '12whatsappimage20170912at10.47.42.jpeg', 363, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">JAKARTA - Pembangunan infrastruktur transportasi yang berkualitas harus didukung oleh Sumber Daya Manusia yang memiliki kompetensi yang baik dalam bidang transportasi. Demikian pernyataan Menteri Perhubungan Budi Karya Sumadi pada saat memberikan arahan pada Wisuda Sekolah Tinggi Manajemen Transportasi (STMT) Trisakti di Jakarta Convention Center (JCC) Selasa, (12/9).</span></p>\r\n<p style=\"text-align: justify;\">&ldquo;Pembekalan insan transportasi harus dengan suatu kompetensi yang baik dan mumpuni, untuk itu saya apresiasi STMT Trisakti yang telah menyelenggarakan pendidikan yang berkaitan dengan sektor transportasi ini,\" ujar Menhub.</p>\r\n<p style=\"text-align: justify;\">Menhub mengatakan saat ini pertumbuhan sektor transportasi per tahun rata-rata di atas 7%, lebih besar dari pertumbuhan PDB secara total. Di tahun 2016 sektor transportasi berkontribusi sebesar 5,18% terhadap PDB.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Hal ini memberikan gambaran bahwa walaupun ditengah keterbatasan anggaran namun melalui tata kelola anggaran yang efektif dan efisien, sektor transportasi berkembang dengan baik dan memberikan konstribusi yang positif terhadap perekonomian nasional,&rdquo; terang Menhub.</p>\r\n<p style=\"text-align: justify;\">Lebih lanjut Menhub menambahkan Kementerian Perhubungan juga turut andil dalam mendukung Nawa Cita. Sektor perhubungan memiliki peranan yang teramat strategis dalam kehidupan berbangsa dan bernegara. Menurutnya, keberhasilan pembangunan sangat dipengaruhi oleh peranan transportasi sebagai urat nadi kehidupan politik, ekonomi, sosial budaya dan pertahanan keamanan.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Karena peranannya yang teramat strategis itu, ke depannya sektor transportasi harus dapat menjalin konektivitas antar pulau dan harus mampu mewujudkan aksesibilitas ke seluruh wilayah tanah air Indonesia. Selain itu transportasi juga harus bisa menjamin keamanan dan keselamatan pengguna jasa dan menyediakan pelayanan dengan kualitas yang baik serta prima,&ldquo; tutur Menhub.</p>\r\n<p style=\"text-align: justify;\">Menhub menyampaikan saat ini pemerintah terus mengerjakan proyek infrastruktur transportasi guna mendorong pertumbuhan ekonomi nasional. Pada tahun 2045 ekonomi Indonesia diprediksi akan mencapai puncak kejayaannya yaitu menjadi negara dengan ekonomi terbesar ke empat di dunia dengan PDB mencapai Rp. 120 ribu triliun. Untuk itu selain infrastruktur yang baik dibutuhkan pula SDM yang berkualitas.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Sejalan dengan pembangunan fisik tersebut, pemerintah juga membangun sumber daya manusia melalui pembangunan kampus diklat beserta kelengkapannya dan peningkatan kualitas SDM Perhubungan. Saat ini kebutuhan pegawai Kementerian Perhubungan secara nyata adalah sebanyak 38.968 orang,&rdquo; ucap Menhub.</p>\r\n<p style=\"text-align: justify;\">Untuk memenuhi kuota pegawai, tahun ini Kementerian Perhubungan mendapatkan kuota CPNS dari Kementerian Pendayagunaan Aparatur Negara sejumlah 400 orang. Menurut Menhub rentang kerja Kementerian Perhubungan yang mencakup dari Sabang sampai Merauke maka dibutuhkan Abdi Negara yang mampu melayani di semua daerah. Ke 400 CPNS itu nantinya sebagian besar akan ditempatkan di daerah-daerah karena membutuhkan dukungan teknis dan manajemen sebagai bentuk pengabdian bagi negara.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Kementerian Perhubungan sangat lekat dengan layanan kepada msyarakat. Jadi kita butuh orang-orang yang mempunyai jiwa melayani masyarakat dan mengabdi pada negara,&rdquo; tutur Menhub.</p>\r\n<p style=\"text-align: justify;\">Sebagai informasi, wisuda STMT Trisakti kali ini melantik sebanyak 1212 wisudawan yang terdiri dari jenjang pendidikan S2 sebanyak 39 orang, S1 sebanyak 901 orang dan DIII sebanyak 272 orang. Menhub mengapresiasi wisuda yang dilakukan STMT Trisakti ini serta mendorong agar STMT Trisakti segera menjadi institut.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Saya apresiasi STMT Trisakti melaksanakan wisuda ini dan saya juga mendukung ada proses STMT Trisakti menjadi institut. Karena jika menjadi institut maka makin banyak mata pelajaran dan masing-masing mahasiswa dapat secara spesialis menempa dirinya,&rdquo; tutup Menhub. (HH/TH/BS/HA)</p>'),
(21, 3, 0, 0, 0, 'ngadmin', 'Di Hari Perhubungan Nasional, Menhub Meresmikan Beroperasinya Skytrain Di Bandara Soekarno-Hatta', '', '', '', 'di-hari-perhubungan-nasional-menhub-meresmikan-beroperasinya-skytrain-di-bandara-soekarnohatta', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Jumat', '2017-09-17', '2017-09-17', '22:26:29', '54whatsappimage20170917at09.01.24.jpeg', 332, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">TANGERANG - Bertepatan dengan Hari Perhubungan Nasional, Sabtu, (17/9) Automated People Mover System (APMS) atau lebih dikenal dengan sebutan Skytrain di Bandara Soekarno-Hatta mulai beroperasi. Peresmian pengoperasian tersebut dilakukan oleh Menteri Perhubungan Budi Karya Sumadi, Menteri Negara BUMN Rini Soemarno dan Dirut PT. Angkasa Pura II M. Awaluddin.</span></p>\r\n<p style=\"text-align: justify;\">Dalam sambutannya Menhub mengungkapkan kebanggaannya atas beroperasinya Skytrain Bandara Soekarno-Hatta apalagi pengoperasian perdana ini tepat pada Hari Perhubungan Nasional.</p>\r\n<p style=\"text-align: justify;\">\"Hari ini Kementerian Perhubungan sangat berbahagia sekali, bertepatan dengan Hari Perhubungan Nasional yang merupakan hari bakti perhubungan, PT Angkasa Pura II memberikan kado yang luar biasa, membaktikan diri kepada masyarakat. Bandara Soekarno-Hatta adalah showcase Indonesia, oleh karenanya (suatu) keharusan menanpilkan Soekarno-Hatta bukan hanya cantik tapi juga memiliki fungsi sama baiknya dengan bandara terkemuka,\" ucap Menhub Budi.</p>\r\n<p style=\"text-align: justify;\">Menhub juga menyampaikan bahwa bulan Desember 2017 nanti Skytrain akan terhubung ke seluruh terminal yang ada di Bandata Soekarno-Hatta.</p>\r\n<p style=\"text-align: justify;\">\"Saya sampaikan pada bulan Desember 2017 nanti terminal 1 sampai terminal 3 akan terhubung dengan Skytrain dan Kereta Api Bandara dari Dukuh Atas. Jadi nanti kalau kita berhenti di stasiun utama bila akan ke terminal 2 dan 3 bisa tanpa menggunakan kendaraan. Selain itu Ibu Rini (Menteri BUMN) dan PT Angkasa Pura II sangat luar biasa karena dapat mengerjakan ini dalam satu tahun. Itu tidak mudah dan saya ucapkan selamat kepada PT. Angkasa Pura II,\" pungkas Menhub Budi.</p>\r\n<p style=\"text-align: justify;\">Di saat yang bersamaan Menteri Negara BUMN Rini Soemarno juga merasa bangga dengan dengan beroperasinya Skytrain ini.</p>\r\n<p style=\"text-align: justify;\">\"APMS atau Skytrain ini pertama kali di Indonesia, untuk itu buat kami di Kementerian BUMN maupun perusahaan BUMN itu sendiri dalam mengerjakan Skytrain yaitu PT. AP II, PT. Len dan PT. Wijaya Karya terus bersinergi dalam pengerjaan Skytrain ini. Jadi saya sangat bangga dalam 12 bulan mulai (proyek) APMS ini,\" ucap Menteri Rini.</p>\r\n<p style=\"text-align: justify;\">Sedangkan Direktur Utama PT. Angkasa Pura II M. Awaluddin mengatakan pada tahap 1 ini baru melayani terminal 2 dan terminal 3 dan nantinya pada Oktober 2017 nanti akan melayani kesuluruhan terminal penumpang yang ada di Bandara Soekarno-Hatta.</p>\r\n<p style=\"text-align: justify;\">\"Tahap 1 ini Skytrain baru beroperasi dari terminal 2 ke terminal 3 begitupun sebaliknya dengan waktu tempuh 5 menit, jam operasi Skytrain saat ini dibagi menjadi 3 kali yaitu mulai pukul 07.00-10.00 WIB, 13.00-14.00 WIB dan 17.00-19.00 WIB. Pada pengoperasian tahap 1 ini dilengkapi dengan 1 trainset yang terdiri dari 2 gerbong kereta yang mampu mengangkut 176 penumpang dalam satu kali perjalanan,\" tambah Awaluddin.</p>\r\n<p style=\"text-align: justify;\"><strong>(MM/TH/BS/BI)</strong></p>'),
(22, 3, 0, 0, 0, 'ngadmin', 'Menhub : Konektivitas di Indonesia Adalah Tanggung Jawab Kita Bersama', '', '', '', 'menhub--konektivitas-di-indonesia-adalah-tanggung-jawab-kita-bersama', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id/', 'Jumat', '2017-09-17', '2017-09-17', '22:33:47', '97img1460.jpg', 311, '', 0, '<p style=\"text-align: justify;\"><span style=\"-webkit-text-size-adjust: 100%;\">JAKARTA &ndash; Indonesia terdiri dari ribuan pulau-pulau yang tersebar, untuk itu konektivitas antar pulau merupakan tanggung jawab kita bersama. Demikian disampaikan Menteri Perhubungan Budi Karya Sumadi usai membuka acara Hari Perhubungan Nasional (Harhubnas) di Lapangan Selatan Silang Monas pada Minggu (17/9).</span></p>\r\n<p style=\"text-align: justify;\">\"Melalui momentum Harhubnas, saya berpesan kepada insan perhubungan, wilayah Indonesia luas sekali terdiri dari berbagai pulau. Banyak daerah yang harus diperhatikan dan itu merupakan tanggung jawab kita bersama dan kita harus melayani semuanya,\" jelas Menhub.</p>\r\n<p style=\"text-align: justify;\">Dalam kesempatan tersebut Menhub mengatakan Harhubnas adalah Hari Bakti Perhubungan yang artinya kita semua harus berbakti kepada negara.</p>\r\n<p style=\"text-align: justify;\">\"Hari ini ada beberapa inisiasi yang kita lakukan yaitu mengingatkan kepada semua karyawan, staf Kementerian Perhubungan bahwasanya konektivitas nusantara itu terdiri dari berbagai daerah. Oleh karenanya hari ini kita untuk mengingat kebhinekaan kita menggunakan pakaian adat,\" ujar Menhub.</p>\r\n<p style=\"text-align: justify;\">Lebih lanjut Menhub mengatakan bahwa dalam acara harhubnas tahun ini akan ditampilkan karya seni yaitu pemutaran dua film.</p>\r\n<p style=\"text-align: justify;\">\"Hari ini kita akan menggelar suatu makna kebhinekaan dengan ditampilkan beberapa karya seni melalui pemutaran dua film yaitu, film tentang navigasi dan film tentang keindahan Indonesia bagian timur,\" terang Menhub</p>\r\n<p style=\"text-align: justify;\">Menhub menambahkan selain pemutaran film, sebagai hiburan juga akan ditampilkan musik keroncong melayu. \"Malam ini juga ada keroncong melayu. Informasinya keroncong melayu mulai tidak digemari padahal kalau kita dengarkan indah sekali dan kita harus bangga pada budaya-budaya nasional,\" tambah Menhub.</p>\r\n<p style=\"text-align: justify;\">Terakhir Menhub berpesan, melalui momentum Harhubnas Tahun 2017 insan perhubungan dapat memberikan kontribusi untuk memajukan sektor transportasi di Indonesia.</p>\r\n<p style=\"text-align: justify;\">\"Pembangunan sektor transportasi harus menjamin konektivitas dan aksesibilitas ke seluruh wilayah Indonesia dari Sabang sampai Merauke, dari Miangas hingga Pulau Rote,\" tutup Menhub.</p>\r\n<p style=\"text-align: justify;\">Acara Harhubnas Tahun 2017 sendiri dibuka dengan penampilan marching band oleh Sekolah Tinggi Transportasi Darat (STTD). <strong>(LFH/TH/BS/HA)</strong></p>'),
(23, 2, 0, 0, 1, 'ngadmin', 'Wagub Fachrori Umar, Minta Dishub Majukan Sektor Transportasi dan Wujudkan Infrastruktur yang Handal', '', '', '', 'wagub-fachrori-umar-minta-dishub-majukan-sektor-transportasi-dan-wujudkan-infrastruktur-yang-handal', 'Y', '', 'Y', '', '', 'Wakil Gubernur Jambi Facrori Umar, Rabu (20/9), menjadi Inspektur Upacara (Irup) Peringatan Hari Perhubungan Nasional Tahun 2017,Bertempat di Terminal Eks. Bandara Sulthan Thaha Jambi.', '', 'ATD', '', '', 'Senin', '2017-09-25', '2017-09-25', '17:15:23', '70dsc_0103.jpg', 385, '', 0, '<p style=\"text-align: justify;\"><strong>JAMBI &ndash;</strong>Pada peringatan Hari Perhubungan Nasional yang jatuh pada 17 September 2017, Wakil Gubernur Jambi, Fachrori Umar menjadi Inspektur Upacara Hari Perhubungan Nasional (Harhubnas) Provinsi Jambi Tahun 2017, Rabu (20/9). Dalam pidatonya Wagub mengatakan peringatan Harhubnas ini diharapkan menjadi momentum untuk perhubungan melihat kontribusi terhadap masyarakat.</p>\r\n<p style=\"text-align: justify;\">Transportasi harus kita majukan, oleh karena itu kita harus meresapi apa saja yang telah kita lakukan. Perhubungan ini memiliki peran yang sangat penting untuk memperlancar transportasi, kata Fachrori, Rabu (20/9).</p>\r\n<p style=\"text-align: justify;\">Sektor transportasi harus mampu menjadi konektivitas dan aksesibilitas ke seluruh wilayah di Indonesia dari Sabang sampai Merauke, dari Miangas hingga Pulau Rote. Sebagai wujud implementasi program Nawacita, Kementerian Perhubungan diharapkan mampu mewujudkan konektivitas antar pulau.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Presiden Joko Widodo menyatakan akan memberi prioritas pada program pembangunan infrastruktur dan konektivitas maritim&rdquo;, tambahnya.</p>\r\n<p style=\"text-align: justify;\">Tujuan pembangunan infrastruktur dan konektivitas maritim adalah untuk memperlancar distribusi logistik secara nasional. Selain itu, juga diperlukan deregulasi terhadap aturan-aturan yang menghambat distribusi logistik nasional.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Tantangan pembangunan disektor transportasi semakin kompleks seiring dengan pesatnya kemajuan teknologi. Untuk menjawab tantangan tersebut kita dituntut mampu beradaptasi dan terus berinovasi melalui perubahan pola kerja baru yang lebih efektif dan efisien dengan menciptakan sistem transportasi yang andal. Saya berharap Dinas Perhubungan dapat terus meningkatkan layanan transportasi kepada masyarakat&rdquo;, pinta Wagub.</p>\r\n<p style=\"text-align: justify;\">Pemprov Jambi, mendukung sepenuhnya kebijakan dari Pemerintah Pusat untuk memfokuskan pembangunan, salah satunya adalah Infrastruktur dan Transportasi, yang dikembangkan termasuk bagaimana memberikan pelayanan prima bagi masyarakat, Lanjutnya.</p>\r\n<p style=\"text-align: justify;\">Sementara itu, dalam kesempatan ini Dinas Perhubungan Provinsi Jambi juga menyerahkan Piala dan Piagam Penghargaan kepada para pemenang untuk Pemilihan Abdiyasa Teladan Tingkat Provinsi Jambi Tahun 2017 dan Pelajar Pelopor Keselamatan Lalu Lintas dan Angkutan Jalan Tahun 2017 Tingkat Provinsi Jambi, yang telah digelar beberapa waktu yang lalu di Hotel Royal Garden Resort Jambi.</p>\r\n<p style=\"text-align: justify;\">Upacara Harhubnas Provinsi Jambi digelar dihalaman Eks. Bandara Sultan Thaha Jambi. Upacara ini juga dihadiri oleh Perwakilan dari Kemenhub Balai LLAJSDP, Kepala Dinas Perhubungan Provinsi Jambi H. Adhi Varial Putra, ST, MM, Plt. Kepala Dinas PUPR Provinsi Jambi, Pihak Management PT. Angkasa Pura II, Kepala Dinas Perhubungan Kota Jambi serta para tamu undangan lainnya. <strong>(ATD)</strong></p>'),
(24, 2, 0, 0, 1, 'ngadmin', 'HARHUBNAS 2017 Dishub Provinsi Jambi Adakan Berbagai Rangkaian Kegiatan', '', '', '', 'harhubnas-2017-dishub-provinsi-jambi-adakan-berbagai-rangkaian-kegiatan', 'Y', '', 'Y', '', '', '', 'ATD', '', '', 'www.nuansajambi.com', 'Senin', '2017-09-25', '2017-09-25', '17:37:40', '15dsc_0109.jpg', 588, '', 0, '<p><strong>JAMBI</strong> &ndash; Dinas Perhubungan (Dishub) Provinsi Jambi menggelar rangkaian kegiatan Hari Perhubungan Nasional (Harhubnas) Tahun 2017 yang diikuti oleh seluruh Staf Dishub Provinsi dan juga diikuti oleh instansi terkait seperti Balai LLAJSDP Jambi, Dishub Kota, Air Nav, Jasa Raharja serta Angkasa Pura, yang digelar di Depan Halaman Kantor Dishub Provinsi Jambi, Jumat (22/09) pagi.&nbsp;</p>\r\n<p>Adapun rangkaian yang digelar tersebut yakni Senam Sehat, Donor Darah, Bazar, dan pembagian Doorprize diakhir acara. Dari pantauan NuansaJambi.com dilapangan, terlihat antusiasme Ratusan peserta yang mengikuti senam sehat dan pengundian hadiah untuk memperebutkan Hadiah Utama yaitu Sepeda dan Kulkas.&nbsp;</p>\r\n<p>Pada kesempatan tersebut, Kepala Dishub Provinsi Jambi, H. Varial Adhi Putra, ST, MM, &nbsp;mengatakan tujuan dari diselenggarakannya kegiatan ini yakni untuk menjalin Silaturahmi dengan instansi terkait dan juga untuk mewujudkan Transportasi yang andal, kinerja Dishub harus dapat memberikan pelayanan yang optimal bagi masyarakat.&nbsp;</p>\r\n<p>&ldquo;Dinas Perhubungan harus meningkatkan kinerja yang lebih baik, dimana kita harus mampu meningkatkan transportasi agar dapat bersaing. Hal ini juga berarti memberikan pelayanan optimal bagi masyarakat dan di Provinsi Jambi sendiri terus meningkatkan sarana dan prasarana transportasi,&rdquo; jelasnya, Jumat (22/09).</p>\r\n<p>Sebelumnya, dalam peringatan Hari Perhubungan Nasional Tingkat Provinsi Jambi Tahun 2017 telah dilaksanakan di Halaman Eks Bandara Sultan Thaha Jambi, Rabu (20/09) lalu dan selaku Inspektur Upacaranya adalah Wakil Gubernur (Wagub) Jambi Fachrori Umar.&nbsp;</p>\r\n<p>Wagub membacakan sambutan tertulis Menteri Perhubungan (Menhub) RI, Budi Karya Sumadi, yang menyatakan bahwa peringatan Hari Perhubungan Nasional merupakan momentum yang tepat bagi insan perhubungan untuk meresapi apa saja yang telah disumbangkan untuk memajukan sektor transportasi di Indonesia.</p>\r\n<p>Selain itu, Wagub juga menyatakan bahwa Pemerintah Provinsi (Pemprov) Jambi dalam Visi dan Misi Jambi Tuntas menempatkan infrastruktur sebagai salah satu Program Utama, dan pembangunan infrastruktur tersebut juga menunjang perhubungan.&nbsp;</p>\r\n<p>&ldquo;Pemprov Jambi mendukung sepenuhnya kebijakan dari Pemerintah Pusat untuk memfokuskan pembangunan, salah satunya adalah infrastruktur dan transportasi lain, yang terus kita kembangkan dan kita berharap kedepannya akan lebih baik lagi, termasuk bagaimana memberikan pelayanan prima bagi masyarakat, walau jalan yang kita bangun belum 100 persen, tetapi pemerintah berkomitmen untuk membangun infrastruktur secara bertahap,&rdquo; jelas Wagub. <strong>(ATD)</strong></p>'),
(25, 3, 0, 0, 0, 'ngadmin', 'Menhub: ASEM TMM Ajang Untuk Perkuat Konektivitas Kawasan Asia-Eropa', '', '', '', 'menhub-asem-tmm-ajang-untuk-perkuat-konektivitas-kawasan-asiaeropa', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id ', 'Rabu', '2017-09-27', '2017-09-27', '08:04:16', '44img20170926wa0025.jpg', 325, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">BALI &ndash; Menteri Perhubungan Budi Karya Sumadi mengatakan ajang The 4th Asia-Europe Transport Minister Meeting (ASEM TMM) harus digunakan sebagai ajang untuk memperkuat konektivitas Asia-Eropa. Hal ini disampaikan Menhub pada saat membuka Transport Ministerial Meeting, di Hotel Westin Nusa Dua Bali, Selasa (26/9).</span></p>\r\n<p style=\"text-align: justify;\">Menurut Menhub banyak upaya yang harus dikerjakan di dunia transportasi untuk mengatasi tantangan-tantangan peningkatan konektivitas. Karenanya Menhub berharap dan mendukung melalui pertemuan Ke-4 para Menteri Transportasi ASEM, para delegasi membahas dan diskusi secara penuh mengacu kepada tema Bridging Asia and Europe through Integrated Transport Connectivity and Synergized Regional Strategic Plans&rdquo;.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Melalui tema ini, saya yakin para Menteri Transportasi ASEM dapat mewujudkan komitmen untuk senantiasa memperkuat dan memperkaya program kerjasama peningkatan konektivitas transportasi kawasan Asia dan Eropa,&rdquo; ujar Menhub.</p>\r\n<p style=\"text-align: justify;\">Lebih lanjut Menhub berharap para delegasi memanfaatkan pertemuan Menteri Transportasi ASEM ini untuk melakukan dialog dan perundingan guna mewujudkan kerjasama skema Public Private Partnership (PPP), dalam pembangunan infrastruktur transportasi di negara masing-masing. Dalam pengembangan skema kerjasama PPP untuk beberapa proyek infrastruktur transportasi di Indonesia, delegasi Indonesia, yang terdiri dari Wakil Pemerintah, BUMN Operator Pelabuhan/Bandara/Kereta Api dan BUMN Usaha Sekuritas, akan siap bertemu dengan delegasi ASEM lainnya, untuk membicarakan paket-paket kerjasama dan investasi yang dapat dikerjasamakan.</p>\r\n<p style=\"text-align: justify;\">Menurut Menhub, Indonesia sebagai tuan rumah Pertemuan Ke-4 para Menteri Transportasi ASEM sekaligus sebagai negara kepulauan terbesar di dunia yang menyandang posisi sebagai Poros Maritim Dunia, tidak saja mengedepankan sinergi program konektivitas transportasi negara kepulauan. Untuk itu Indonesia juga harus menginisiasi berbagai kerjasama investasi dalam pembangunan infrastruktur pelabuhan, bandara dan kereta api yang tersedia di Indonesia. Selain itu juga, pada ajang ini turut pula diselenggarakan Business Forum dan Pameran Infrastruktur dan Logistik, guna mengembangkan kerja sama investasi infrastruktur melalui ASEM TMM 4 ini.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Lebih jauh, saya berharap kiranya Forum Bisnis dapat menjadi ajang yang tepat bagi sektor pemerintah dan swasta untuk dapat bertemu dan berbagi informasi dan pengalaman mengenai potensi investasi yang dapat dilakukan dengan mengedepankan pembangunan konektivitas Indonesia sebagai negara kepulauan dengan posisi sebagai Poros Maritim Dunia, dengan koridor-koridor konektivitas transportasi yang telah terbangun di kawasan ASEM. Untuk itu, guna memperkuat dan meningkatkan konektivitas transportasi di kawasan ASEM, saya berharap pertemuan Menteri Transportasi ASEM kita ini menyepakati untuk mengeluarkan Bali Deklarasi, yang selengkapnya berjudul &ldquo;Declaration of Bridging Asia and Europe through Integrated Transport Connectivity and Synergized Regional Strategic Plans&rdquo;.</p>\r\n<p style=\"text-align: justify;\">&rdquo; urai Menhub.</p>\r\n<p style=\"text-align: justify;\">Pada kesempatan ini juga, Menhub mengucapkan terima kasih kepada Delegasi Latvia yang telah menyelenggarakan Pertemuan Ke-3 para Menteri Transportasi ASEM di Riga, Latvia pada musim Semi tahun 2015. &ldquo;Di bawah kepemimpinan Latvia, program-program penguatan konektivitas transportasi di koridor Asia Timur dan Asia Tengah dengan Eropa, dapat dilaksanakan dengan baik,&rdquo; pungkas Menhub.</p>\r\n<p style=\"text-align: justify;\">Sementara itu Wakil Gubernur Bali I Ketut Sudikerta berharap ASEM TMM ke-4 dapat menjadi wadah strategis dalam meningkatkan kerjasama Asia dan Eropa dalam upaya menarik minat investor dalam berinvestasi di Indonesia. Ia juga mengharapkan acara ini dapat menjadi sarana mempromosikan sektor pariwisata kita di Bali sehingga memberikan kontribusi pada perekonomian masyarakat di Bali.</p>\r\n<p style=\"text-align: justify;\">Sudikerta menyampaikan bahwa saat ini investasi skala besar sedang dibangun di Bali. &ldquo;Investasi itu adalah untuk meningkatkan kesejahteraan masyarakat Bali dan juga untuk menyeimbangkan kehidupan masyarakat Bali,&rdquo; katanya.</p>\r\n<p style=\"text-align: justify;\">Pembangunan infrastruktur tersebut adalah pembangunan Bandara Bali utara yang menurut Sudikerta sudah ada investor atau pemodal yang memiliki inisiator. Lalu pembangunan infrastruktur jalan tol yang akan mengakses antar provinsi dan kabupaten kota di Bali yang memotong dari barat timur, dari selatan utara sehingga semua terakses jalan tol tersebut.</p>\r\n<p style=\"text-align: justify;\">Kemudian Investasi yang ketiga adalah pembangunan kereta api melintasi seluruh wilayah Bali. &ldquo;Itu pembangunan skala besar ketiga, yang harus kita bangun untuk mengantarkan Bali yang berkeadilan,&rdquo; jelas Sudikerta.</p>\r\n<p style=\"text-align: justify;\">Keempat adalah stadion, yang merupakan kebutuhan dalam menunjang olahraga dan juga sebagai pendukung kepariwisataan Bali.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Kita juga membangun 2 kawasan industri pariwisata skala besar diatas tanah Pemda Bali 600 hektar di Buleleng Barat dan satu kawasan industry pariwisata di Nusapenida. Sehingga turis yang datang ke Bali, sepenuhnya dapat menikmati waktu di Bali, serta juga dapat menjembatani konektivitas Asia-Eropa dan rencana sinergi serta berkaitan dengan investasi sektor transportasi.&rdquo; urainya. <strong>(HH/TH/BS/BI)</strong></p>');
INSERT INTO `berita---` (`id_berita`, `id_kategori`, `id_subkategori`, `id_subdomain`, `id_daerah`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `headline`, `headline_utama`, `aktif`, `utama`, `pilihan`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`, `rating`, `isi_berita`) VALUES
(26, 3, 0, 0, 1, 'ngadmin', 'Petugas Dishub Provinsi Jambi cek fisik Mobnas Mantan Penjabat Pemprov Jambi', '', '', '', 'petugas-dishub-provinsi-jambi-cek-fisik-mobnas-mantan-penjabat-pemprov-jambi', 'Y', '', 'Y', '', '', 'Petugas Dishub Provinsi Jambi mulai melakukan cek fisik kendaraan dinas yang barusan ditarik dari Pensiunan Pemprov Jambi dan Mantan Kepala Dinas .', '', '', '', '', 'Selasa', '2017-10-19', '2017-10-19', '15:09:42', '7256cek_fisik.jpg', 290, '', 0, '<p>JAMBI - Tim terpadu Penarikan Kendaraan Dinas Pemprov Jambi pagi ini (16/10) melakukan cek fisik kendaraan yang baru ditarik dari Pensiunan dan Mantan Kepala Dinas.</p>\r\n<p>Dikatakan oleh Asisten III Bidang Administrasi Umum Setda Provinsi Jambi mengatakan pemeriksaan dilakukan oleh Dinas Perhubungan Provinsi Jambi.</p>\r\n<p>\"Pengecekan dilakukan secara keseluruhan bagian mobil,\" katanya.</p>\r\n<p>Pantauan dilapangan satu persatu bagian mobil diperiksa oleh petugas dari Dinas Perhubungan Provinsi Jambi mulai dari mesin hingga bagian roda. <strong>(nur/ATD)</strong></p>'),
(27, 2, 0, 0, 0, 'ngadmin', 'Menhub : Kurangi Kecepatan, Maka Nyawa Akan Terselamatkan', '', '', '', 'menhub--kurangi-kecepatan-maka-nyawa-akan-terselamatkan', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Minggu', '2017-10-23', '2017-10-23', '11:29:24', '29img20171022wa0024.jpg', 284, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">JAKARTA &ndash; Kurangi kecepatan, maka nyawa akan terselamatkan. Pesan tersebut disampaikan Menteri Perhubungan Budi Karya Sumadi dalam Acara Puncak Pekan Nasional Keselamatan Jalan 2017 di Taman Mini Indonesia Indah, Jakarta pada Minggu (22/10).</span></p>\r\n<p style=\"text-align: justify;\">Menhub menjelaskan suatu riset yang dapat mengurangi angka kecelakaan.</p>\r\n<p style=\"text-align: justify;\">\"Ada suatu riset bahwasanya apabila pengendara dengan sadar mengurangi 5% dari kecepatan rata-rata kendaraan, bisa mengurangi 30% kecelakaan lalu lintas yang fatal,\" jelas Menhub.</p>\r\n<p style=\"text-align: justify;\">Menurut Menhub, semua pengendara harus memiliki pemikiran untuk dapat mengatur kecepatan kendaraan dengan kemampuan berkendaranya.</p>\r\n<p style=\"text-align: justify;\">\"Mereka (pengendara) harus mengingat bahwa kecepatan itu harus dikendalikan dengan kemampuan (berkendara)-nya\" ujar Menhub.</p>\r\n<p style=\"text-align: justify;\">Menhub juga menjelaskan peraturan tentang penetapan batas kecepatan kendaraan yang tertuang dalam PM 111 Tahun 2015.</p>\r\n<p style=\"text-align: justify;\">\"Kita punya peraturan tentang batas kecepatan kendaraan. Di kawasan pemukiman paling tinggi 30km/jam, di kawasan perkotaan 50km/jam, di jalan antar kota 80km/jam, di jalan bebas hambatan paling rendah 60km/jam dan paling tinggi 100km/jam,\" jelas Menhub.</p>\r\n<p style=\"text-align: justify;\">Lebih lanjut Menhub menjelaskan data kecelakaan Polri tahun 2016.</p>\r\n<p style=\"text-align: justify;\">\"Menurut data kecelakaan Polri tahun 2016, jumlah kejadian kecelakaan sebanyak 108.374 kejadian dengan korban meninggal dunia 25.859 jiwa. Jika dihitung dalam satu hari rata-rata sekitar 70 - 71 jiwa atau 2 - 3 orang tiap jamnya meninggal dunia akibat kecelakaan lalu lintas,\" jelas Menhub.</p>\r\n<p style=\"text-align: justify;\">Namun, dengan adanya kerjasama Kemenhub dengan para stakeholder transportasi, Menhub mengapresiasi turunnya angka kecelakaan tahun ini.</p>\r\n<p style=\"text-align: justify;\">\"Namun saya apresiasi stakeholder transportasi diantaranya Polri, Jasa Raharja dan stakeholder lainnya, tahun ini kita bisa tekan angka kecelakaan kira-kira 30%,\" lanjut Menhub.</p>\r\n<p style=\"text-align: justify;\">Adapun dalam Acara Puncak Pekan Nasional Keselamatan Jalan 2017, Kementerian perhubungan mengajak anak-anak untuk berpartisipasi melalui pawai keselamatan anak Sekolah Dasar (SD), penampilan dari perhubungan cilik, marching band Sekolah Tinggi Transportasi Darat (STTD), serta lomba melukis anak. Menurut Menhub, anak-anak dapat berperan untuk mengingatkan pentingnya keselamatan kepada orangtuanya.</p>\r\n<p style=\"text-align: justify;\">\"Kemenhub mengajak anak-anak, karena mereka adalah masa depan kita dan mereka bisa mengingatkan (pentingnya keselamatan) orgtuanya. Saya salut mereka mau berperan serta dalam kegiatan ini,\" ujar Menhub.</p>\r\n<p style=\"text-align: justify;\">Menhub juga menyempatkan diri untuk berdialog dengan anak-anak. Menhub salut akan konsep berpikir mereka tentang lalu lintas. Untuk itu, Menhub mengajak seluruh masyarakat untuk memperhatikan keselamatan dalam berlalu lintas.</p>\r\n<p style=\"text-align: justify;\">\"Coba bayangkan adik-adik kita yang umurnya masih ada yang 8 tahun, 9 tahun, belasan tahun, sudah punya konsep berpikir tentang lalu lintas. Oleh karenanya, marilah kita berpikir tentang keselamatan dalam berlalu lintas, karena keselamatan jalan adalah tanggung jawab kita bersama,\" tutup Menhub.</p>\r\n<p style=\"text-align: justify;\">Pekan Nasional Keselamatan Jalan Tahun 2017 dilaksanakan dengan beberapa kegiatan antara lain Launching Pekan Nasional Keselamatan Jalan diawali dengan Kompetisi Om Telolet Om, Sosialisasi keselamatan pada Hari Ulang Tahun Kemerdekaan Indonesia Ke-72 dengan Tema &ldquo;Dengan Semangat Proklamasi 17 Agustus 1945 Kita Tingkatkan Keselamatan Jalan Untuk Kemanusiaan&rdquo; Sayangi Nyawa, Stop Pelanggaran, Stop Kecelakaan, Sosialisasi keselamatan untuk pelajar di SMP Negeri 13 Bekasi dan SMK Bina Siswa Utama Bekasi dan Pelatihan Safety Driving kepada komunitas motor.</p>\r\n<p style=\"text-align: justify;\">Turut hadir dalam acara tersebut Plt. Dirjen Perhubungan Darat Hindro Surahmat, Kakorlantas Polri Irjen Pol Royke Lumowa, Direktur Lalu Lintas Polda Metro Jaya Kombes Pol Halim Pagarra, dan Direktur Utama PT Jasa Raharja (Persero) Budi Setyarso.<strong> (CRA/TH/BS/BI)</strong></p>'),
(28, 3, 0, 0, 1, 'ngadmin', 'Kurangi Kemacetan  & Penggunaan Kendaraan, Dishub Provinsi Jambi Hadirkan Trans Siginjai', '', '', '', 'kurangi-kemacetan---penggunaan-kendaraan-dishub-provinsi-jambi-hadirkan-trans-siginjai', 'Y', '', 'Y', '', '', 'Kunjungan Kadishub Provinsi Jambi dilokasi Halte Trans Siginjai  yang sudah selesai dibangun, Selasa (24/10). ', '', 'ATD', '', '', 'Rabu', '2017-10-31', '2017-10-31', '11:45:57', '90whatsappimage20171025at13.57.45696x585.jpeg', 489, '', 0, '<p style=\"text-align: justify;\"><strong>JAMBI</strong> - Kepala Dinas Perhubungan Provinsi Jambi Varial Adhi Putra, ST, MM mengatakan, Halte Trans Siginjai sudah dilakukan Pembangunannya. Trans Siginjai akan segera beroperasi di Kota Jambi tidak lama lagi. &ldquo;Kita juga nanti akan tambah Bus yang akan diajukan ke Kementrian Perhubungan,&rdquo; jelasnya.</p>\r\n<p style=\"text-align: justify;\">Dinas Perhubungan Provinsi Jambi mendapat bantuan 5 Unit bus BRT dari Pemerintah Pusat. Nantinya, 5 unit bus akan beroperasi pada 19 Halte Trans Siginjai yang berada disejumlah titik dari kawasan Telanaipura sampai ke Kampus Universitas Jambi (UNJA), Kampus IAIN Mendalo hingga SMA Titian Teras.</p>\r\n<p style=\"text-align: justify;\">Bapak Varial berharap dengan adanya pembangunan ini dilakukan, agar dapat mengurangi kemacetan di Kota Jambi. Sehingga dapat menurunkan peningkatan penggunaan kendaraan di Kota Jambi. Diharapkan moda Transportasi ini diterima oleh masyarakat Provinsi Jambi.</p>\r\n<p style=\"text-align: justify;\">Perihal tarif Trans Siginjai akan diberikan subsidi serta rencana operatornya akan bekerjasama dengan Damri.\"Jadi tarifnya murah dan menarik minat masyarakat Jambi. Kata Varial saat meninjau dilokasi Halte yang sudah selesai dibangun, Selasa (24/10).</p>\r\n<p style=\"text-align: justify;\">Akhir Tahun 2017 Trans Siginjai sudahg bisa difungsikan, kata Varial. Untuk pembangunan Halte Bapak Varial menargetkan bulan November sudah selasai pekerjaannya. Halte yang kita bangun sekarang sifatnya portable, jadi dapat dipindahkan kapan saja. Kata Kadishub Provinsi Jambi.</p>\r\n<p style=\"text-align: justify;\">Pada peluncuran Perdananya nanti &nbsp;direncanakan dibuka langsung oleh Gubernur Jambi Zumi Zola untuk melaunchingnya, setelah selesai nanti Pembangunannya. &ldquo;Kita menghimbau kepada masyarakat dan berharap dengan menggunakan bus ini tingkat kecelakaan bisa berkurang. Dan menjadikan Transportasi Trans Siginjai menjadi Moda Transportasi yang diminati oleh masyarakat Jambi, selain itu juga bisa dimanfaatkan oleh anak -anak sekolah,&rdquo; harapnya. <strong>(ATD)</strong></p>'),
(29, 3, 0, 0, 0, 'ngadmin', 'Menhub : Korea Berminat Kerjasama Investasi Infrastruktur Transportasi', '', '', '', 'menhub--korea-berminat-kerjasama-investasi-infrastruktur-transportasi', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Minggu', '2017-11-20', '2017-11-20', '10:58:25', '11whatsappimage20171110at13.30.511.jpeg', 243, '', 0, '<p style=\"text-align: justify;\"><span style=\"-webkit-text-size-adjust: 100%;\">JAKARTA. Menteri Perhubungan (Menhub) Budi Karya Sumadi menyebut pemerintah Korea berminat berinvestasi khususnya di sejumlah proyek infrastruktur transportasi di Indonesia. Hal ini disampaikan Menhub Budi usai gelar pertemuan bilateral dengan Menteri Pertanahan, Infrastruktur dan Transportasi Korea Mrs. Kim Hyun-mee, Jumat (10/11) di Jakarta.</span></p>\r\n<p style=\"text-align: justify;\">&ldquo;Ini adalah pertanda positif Korea ke Indonesia tidak saja sebagai konsultan atau sebagai kontraktor tetapi sudah diindikasikan Korea berminat berinvestasi di Indonesia,&rdquo; kata Menhub Budi.</p>\r\n<p style=\"text-align: justify;\">Menhub berharap dari pertemuan ini nantinya akan ada kesepakatan kerjasama antar kedua negara khususnya kerjasama terkait pembiayaan sejumlah proyek infrastruktur transportasi dengan skema Kemitraan Pemerintah dan Badan Usaha (KPBU). Sehingga dengan begitu ke depan pembangunan proyek infrastruktur transportasi dapat melibatkan investor baik dalam maupun luar negeri dan tidak lagi selalu mengandalkan APBN.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Harapannya ini adalah PPP project KPBU, dimana antara Indonesia dan Korea mengerjakan secara bersama-sama jadi kita tidak menjual project tetapi kerjasama dalam pembiayaan pembangunan dan pengoperasian infrastruktur dalam jangka waktu tertentu. Dengan adanya ini maka yang semula kita hanya mengandalkan APBN maka investor dalam dan luar negeri bisa turut serta dalam membangun project-project ini,&rdquo; jelasnya.</p>\r\n<p style=\"text-align: justify;\">Lebih lanjut diakui Menhub sejumlah project infrastruktur transportasi Indonesia coba ditawarkan kepada pemerintah Korea seperti pembangunan jalur kereta api Makassar &ndash; Pare-Pare, pengembangan Bandara Kualanamu dan pembangunan Pelabuhan Kuala Tanjung di Sumatera Utara.</p>\r\n<p style=\"text-align: justify;\">Ditambahkan Menhub pertemuan dengan Menteri Mrs. Kim Hyun-mee merupakan tindak lanjut pertemuan sebelumnya di Bali dan Singapura. Terkait hal tersebut Menhub menyebut tim teknis dari Korea telah meninjau langsung ke beberapa lokasi proyek infrastruktur transportasi.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Tim korea telah melakukan sejumlah kunjungan di beberapa tempat di Indonesia terutama di Makassar dan Kualanamu,&rdquo; sebutnya.</p>\r\n<p style=\"text-align: justify;\">Pada kesempatan yang sama Sekretaris Jenderal Kemenhub Sugihardjo menjelaskan saat ini banyak pihak yang berminat untuk berinvestasi pada proyek pembangunan jalur kereta api lintas Makassar &ndash; Pare-Pare .</p>\r\n<p style=\"text-align: justify;\">&ldquo;Setelah ada Korea berminat (membangun kereta api Makassar &ndash; Pare-Pare) saya dengar ada BUMN lagi yang berminat bahkan ada swasta yang berminat, ya tidak apa-apa kita beauty contest mana yang memberikan pilihan terbaik buat negara,&rdquo; ungkap Sugihardjo.</p>\r\n<p style=\"text-align: justify;\">Dikatakan Sugihardjo untuk membangun jalur kereta api Makassar &ndash; Pare-Pare hingga 100 kilometer, anggaran pemerintah baru bisa 5 triliun rupiah untuk itu sisanya sebesar 8 triliun rupiah akan dikerjasamakan dengan swasta. <strong>(GD/TH/AL/BI)</strong></p>'),
(30, 2, 0, 0, 1, 'ngadmin', 'Guna Tingkatkan Pelayanan Angkutan Umum, Dishub Provinsi Jambi Gelar Rapat Koordinasi Forum LLAJ', '', '', '', 'guna-tingkatkan-pelayanan-angkutan-umum-dishub-provinsi-jambi-gelar-rapat-koordinasi-forum-llaj', 'Y', '', 'Y', '', '', 'Kadishub Provinsi Jambi, Varial Adhi Putra Saat Memberikan Pemaparan, Rabu (15/11/2017).', '', '', '', 'Nuansajambi.com', 'Selasa', '2017-11-22', '2017-11-22', '12:40:42', '56img20171115wa0005533585835.jpg', 409, '', 0, '<p><strong>JAMBI &ndash; </strong>Bertempat di Swiss-Belhotel, Rabu pagi (15/11/2017) , Dinas Perhubungan Provinsi Jambi menggelar rapat koordinasi Forum LLAJ Tingkat Provinsi Jambi Tahun 2017 yang bertemakan<em> &ldquo;Perkuatkan dan Sinergitas Potensi Pemangku Kepentingan Untuk Peningkatan Pelayanan Angkutan Umum &ldquo;.</em></p>\r\n<p>Rapat Koordinasi ini juga dihadiri perwakilan Dishub se-Kabupaten /Kota dalam Provinsi Jambi, Dinas SDM, Komisi III DPRD Provinsi Jambi, Organda Kota Jambi dan Jajaran Kepolisia Polda Jambi.</p>\r\n<p>Dari hasil pantauan NuansaJambi.com dilokasi, hingga saat ini rapat koordinasi yang dipimpin langsung oleh Kepala Dinas Perhubungan Provinsi Jambi, Varial Adhi Putra, masih berlangsung. <strong>(NJ/ATD)</strong></p>'),
(31, 2, 0, 0, 1, 'ngadmin', 'Pemprov Jambi Akan Tertibkan Angkutan Batubara, Kadishub Varial: Jika Tak Mau Ikuti Aturan Akan Diti', '', '', '', 'pemprov-jambi-akan-tertibkan-angkutan-batubara-kadishub-varial-jika-tak-mau-ikuti-aturan-akan-ditind', 'Y', '', 'Y', '', '', '', '', '', '', 'nuansajambi.com', 'Selasa', '2017-11-22', '2017-11-22', '12:56:52', '59img20171115wa0004862300441696x392.jpg', 335, '', 0, '<p><strong>JAMBI &ndash; </strong>Guna meningkatkan pelayanan khususnya angkutan umum, Dinas Perhubungan Provinsi Jambi menggelar rapat koordinasi Forum LLAJ Tingkat Provinsi Jambi Tahun 2017 yang bertempat di Swiss-Belhotel, Rabu pagi (15/11/2017).</p>\r\n<p>Rapat Koordinasi yang bertemakan &ldquo;Perkuatkan dan Sinergitas Potensi Pemangku Kepentingan Untuk Peningkatan Pelayanan Angkutan Umum &ldquo;, turut juga dihadiri sejumlah OPD terkait Pemprov Jambi, Organda Kota Jambi, Komisi III DPRD Provinsi Jambi dan Satlantas Polda Jambi.</p>\r\n<p>Dalam kesempatan ini, Kepala Dinas Perhubungan Provinsi Jambi, Varial Adhi Putra menyampaikan sejumlah permasalahan yang kerap terjadi pada angkutan batu bara hingga saat ini yakni rute atau jalan yang dilalui tidak sesuai dengan aturan dalam Peraturan Daerah (Perda) yang berlaku.</p>\r\n<p>Varial juga menyebutkan para pengusaha tambang batubara telah melanggar aturan yang telah ditetapkan tentang angkutan bataubara yaitu harus membangun jalan khusus sendiri.</p>\r\n<p>Tetapi, dari terbitnya Pergub tersebut (2013 lalu, red) hingga saat ini jalan tersebut tak kunjung dibangun. Tak hanya itu, lanjut Varial, muatan atau tonase yang diangkut juga melebihi kapasitas.</p>\r\n<p>&rdquo; kita berharap semoga dengan adanya rapat forum bersama ini nantinya ada kewenangan kita (Dishub,red) yang kuat dan permasalahan yang kita hadapi bisa kita atasi bersama,&rdquo; kata Varial.</p>\r\n<p>Varial menambahkan, usai tim terpadu terbentuk maka pengusaha batubara yang masih melanggar atau tidak mentaati aturan akan ditindak tegas.</p>\r\n<p>Selain permasalahan angkutan batubara, dalam forum LLAJ ini juga terkait Peraturan Menteri Perhubungan Nomor 108 Tahun 2017 Tentang Penyelenggaraan Angkutan Orang Dengan Kendaraan Bermotor Umum Tidak Dalam Trayek.</p>\r\n<p>&rdquo; Kerap masih terjadi permasalahan dilapangan diantaranya penolakan dari kalangan pengusaha dan supir angkutan umum non online, penolakan dari masyarakat yang berprofesi sebagai ojek konvensional, pembinaan oleh instansi pemangku kepentingan dimungkinkan tidak akan maksimal, perlindungan bagi penumpang onliene berupa asuransi Jasa Raharja dimungkinkan tidak akan maksimal,&rdquo; papar Varial.</p>\r\n<p>Sementara itu, Anggota Dewan Komisi III DPRD Provinsi Jambi, Helmi mengatakan melalui forum ini dari permasalahan &ndash; permasalahan yang dibahas baik dari pengusaha tambang batubara serta angkutan online dapat segera duduk bersama.Menurutnya, hal ini dilakukan agar permasalahan yang dihadapi dapat diselesaikan bersama.</p>\r\n<p>&rdquo; Pihak perusahaan kalau belum bisa mengikuti rapat tolong disurati, dan kami juga turut mendukung kegiatan ini, begitu juga dengan angkutan online jangan sampai timbul keresahan seperti demo tuntutan dan ini kita harus antisipasi hal tersebut,&rdquo; Ungkap Helmi.</p>\r\n<p>Sementara itu, Kepala Dinas Perhubungan Kota Jambi, Shaleh Ridha dalam kesempatan ini juga menyebutkan bahwa berdasarkan temuan dilapangan kendaraan angkutan batubara masih banyak yang terdeteksi melanggar aturan.</p>\r\n<p>&rdquo; Pengawasan kita masih kurang dan terkait masalah angkutan online yang sering terjadi keributan seperti gojek kita harap nantinya dapat disegera diselesaikan melalui forum ini,&rdquo; ujarnya.</p>\r\n<p>Ditempat yang sama, Kepala Satuan PJR Polda Jambi, AKBP Switanto mengatakan pihaknya akan bersinergi dengan Dinas Perhubungan sesuai dengan untuk melakukan penertiban kendaraan khususnya angkutan batubara yang langgar peraturan.</p>\r\n<p>&rdquo; Kami pihak Satlantas akan bekerja sama tertibkan mobil batubara yakni dengan tim terpadu yang akan dibentuk nanti. Kami akan bekerja sesuai poksi kami yakni dengan menertibkan pelanggaran lalu lintas,&rdquo; ujar AKBP Switanto kepada awak media usai rapat.</p>\r\n<p>Lebih lanjut, Pemprov Jambi akan meminta kepada seluruh pengusaha tambang batubara untuk mengikuti semua aturan yang berlaku salah satunya dengan membangun jalur khusus angkutan batubara.</p>\r\n<p>&rdquo; Pemprov melalui Dishub akan menegaskan kembali kepada para pengusaha batubara untuk segera membuat jalur khusus. Nanti kita juga akan memberikan tenggang waktu untuk pembangunan jalur, tapi apabila kali ini tidak digubris juga maka ijin perusahaan akan dicabut, &rdquo; tegas Kadishub Varial Adhi. <strong>(Wandi/ATD )</strong></p>'),
(32, 3, 0, 0, 1, 'ngadmin', 'Wujudkan Jambi Tuntas, Berbagai Program Dinas Perhubungan Dipercepat', '', '', '', 'wujudkan-jambi-tuntas-berbagai-program-dinas-perhubungan-dipercepat', 'Y', '', 'Y', '', '', '', '', '', '', 'metrojambi.com', 'Rabu', '2017-12-04', '2017-12-04', '14:37:27', '5658941zumi_dasi.jpg', 358, '', 0, '<p style=\"text-align: justify;\"><strong>JAMBI</strong> - Pemerintah Provinsi (Pemprov) Jambi telah melaksanakan berbagai program pembangunan dan pelayanan publik untuk mewujudkan visi Jambi Tuntas di bawah kepemimpinan Gubernur dan Wakil Gubernur Jambi, H. Zumi Zola, S.TP, MA - Dr. Drs. H. Fachrori Umar, M.Hum. <br /><br />Seperti di Dinas Perhubungan Provinsi Jambi, telah dilaksanakan berbagai program dan kegiatan priotitas. Program dan kegiatan tersebut seperti rapat koordinasi tim pembebasan lahan jalur kereta api Trans Sumatera, mulai dari batas Sumatera Selatan-Jambi-batas Riau. <br /><br />Pembangunan jalur kereta api Trans Sumatera sepanjang lebih kurang 1.400 km tersebut dibiayai oleh Kementerian Perhubungan RI. Untuk mendukung pelaksanaan pembangunan rel kereta api ini, Pemerintah Provinsi telah membantu memfasilitasi pembebasan lahan. <br /><br />Kemudian pembangunan halte Bis Trans Siginjai. Terkait program ini, Dinas Perhubungan Provinsi Jambi tahun ini mendapatkan bantuan 5 unit Bus Rapid Transit (BRT) dari Kementerian Perhubungan RI. Dinas Perhubungan Provinsi Jambi telah membangun Halte BRT sebanyak 19 unit, dengan rincian 12 unit permanen dan 7 unit tidak permanen. <br /><br />Halte BRT tersebut tersebar dari kawasan Telanaipura sampai ke kampus Universitas Jambi (Unja) Mendalo, kampus IAIN Mendalo, hingga ke SMA Titian Teras. Kehadiran BRT Trans Siginjai diharapkan dapat mengurangi kemacetan di Kota Jambi sejalan dengan semakin pesatnya pertumbuhan kendaraan pribadi.<br /><br />Pada tahun 2017 ini Dinas Perhubungan juga telah melaksanakan seleksi terhadap para juru mudi (Abdi Yasa) yang mewakili di 11 kabupaten/kota se Provinsi Jambi. Dari kegiatan ini diharapkan akan menghasilkan juru mudi yang taat dan tertib dalam berlalu lintas, karena keselamatan pengguna jasa berada di tangan juru mudi. Dari hasil seleksi di Tingkat Provinsi ini nantinya 2 orang perwakilan Provinsi Jambi akan mewakili provinsi Jambi untuk mengikuti seleksi di tingkat nasional. <br /><br />Selain itu, Dinas Perhubungan juga telah melaksanakan pemilihan pelajar pelopor keselamatan berlalu lintas dan angkutan jalan tingkat Provinsi Jambi tahun 2017. Kegiatan ini dilakukan karena pelanggaran lalu lintas paling banyak terjadi di kalangan pelajar yang disebabkan kurangnya pemahaman dalam tertib berlalu lintas. <br /><br />Dua orang pemenang tingkat Provinsi Jambi akan mengikuti seleksi di tingkat nasional. Melalui kegiatan ini para pelajar diharapkan akan menjadi pelopor keselamatan dan dapat menyampaikan ke teman-teman sejawat tentang pentingnya tertib berlalu lintas di jalan. <br /><br />Tahun ini, Dinas Perhubungan Provinsi Jambi juga telah melaksanakan kegiatan pengadaan rambu jalan, dengan rincian 140 unit di Kabupaten Tanjung Jabung Timur, 140 unit di Kabupaten Muarojambi, 140 unit di Kabupaten Tebo, dan 140 unit di Kota Sungaipenuh. Kegiatan ini telah terlaksana dengan tuntas, dengan persentase 100 persen. <br /><br />Kegiatan lainnya yang dilakukan Dinas Perhubungan Provinsi Jambi adalah pengadaan marka jalan. Rinciannya, 10.000 meter di Kota Jambi, 6.000 meter di Kabupaten Muarojambi, 10.000 meter di Kabupaten Tanjung Jabung Timur, 10.000 meter di Kabupaten Tanjung Jabung Barat, dan 12.000 meter di Kota Sungaipenuh. <br /><br />Selain itu, juga ada pemasangan 20 unit lampu penerangan di Kabupaten Tebo, pengadaan 3 unit warning light di Kabupaten Kerinci, serta pemasangan paku jalan dengan rincian 500 unit di Kabupaten Batanghari dan 500 unit di Kabupaten Bungo. <br /><br />Selanjutnya pemasangan delineator (pancang beton di pinggir jalan) di Kabupaten Tanjung Jabung Timur 250 unit, Kabupaten Merangin 250 unit, dan Kota Jambi 250 unit. Kemudian pemasangan pagar pengaman jalan sepanjang 440 meter di Kota Sungaipenuh, pemasangan 30 unit cermin tikungan di Kota Sungaipenuh, dan pemasangan 15 unit RPPJ (Rambu Pelaksana Petunjuk Jalan) di jalan provinsi.</p>'),
(33, 2, 0, 0, 1, 'ngadmin', 'Dishub Provinsi Jambi Gelar Razia Gabungan, Tertibkan Angkutan Batubara dan Barang Melebihi Tonase', '', '', '', 'dishub-provinsi-jambi-gelar-razia-gabungan-tertibkan-angkutan-batubara-dan-barang-melebihi-tonase', 'Y', '', 'Y', '', '', 'Kepala Dinas Perhubungan Provinsi Jambi, H Varial Adhi Putra ST, MM, mencoba langsung menanyakan kelengkapan surat-surat dokumen kendaraan kepada supir Batubara yang mobilnya melebihi tonase.', '', '', '', 'https://nuansajambi.com', 'Rabu', '2017-12-10', '2017-12-10', '20:31:41', '43img20171208wa0021322723287.jpg', 359, '', 0, '<p style=\"text-align: justify;\"><strong>JAMBI</strong> &ndash; Dalam pengawasan penertiban dan pembinaan angkutan umum dan angkutan barang serta batubara dengan tujuan terpenuhinya aspek keselamatan dan untuk mengurangi kemacetan, Sesuai intruksi Gubernur Jambi terhadap maraknya Angkutan melebihi tonase, Pemerintah Provinsi Jambi melalui Dinas Perhubungan (Dishub) Provinsi Jambi menggelar Razia Gabungan, Jum&rsquo;at (8/12).</p>\r\n<p style=\"text-align: justify;\">Dishub Provinsi Jambi bekerjasama dengan Ditlantas Polda Jambi, Detasemen Polisi Militer dan Satlantas Kabupaten masing-masing melakukan razia gabungan di 4 (Empat) Kabupaten Provinsi Jambi antara lain, Kabupaten Batanghari, Tebo, Merangin, dan Bungo.</p>\r\n<p style=\"text-align: justify;\">Kepala Dinas Perhubungan Provinsi Jambi, H Varial Adhi Putra ST, MM, mengatakan, kegiatan ini dilakukan untuk mengurangi kecelakaan, mengantisipasi angkutan batubara yang mana sebentar lagi akan ada perayaan Natal dan Tahun Baru.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Untuk mobil yang kapasitasnya besar belum ada keluar dari Kementerian. Namun, masih bisa terjangkau seperti biasa. Karena mengingat juga Natal ini tidak sebanyak angkutan lebaran. Jadi masih bisa diantisipasi dengan pos-pos pengamanan yang ada,&rdquo; jelasnya.</p>\r\n<p style=\"text-align: justify;\">Selain itu, lebih lanjut dikatakannya untuk mobil batubara tetap berjalan cuma diatur waktunya. &ldquo;Mereka tetap berjalan karena sudah ada jalur khusus, jalan Nasional dan Jalan Lintas,&rdquo; sebut Varial Adhi Putra, ST, MM Jumat (08/12).</p>\r\n<p style=\"text-align: justify;\">Dari hasil razia kali ini, ada beberapa kendaraan yang ditilang pada surat-surat dokumennya, kendaraan bermuatan 20 Ton, tapi batubara yang dimuatnya 30 Ton. &ldquo;Maka dari itu kami tilang, penindakannya langsung pihak kepolisian,&rdquo; tambahnya.</p>\r\n<p style=\"text-align: justify;\">Dan ini juga sebagai jawaban bahwa Pemerintah Provinsi Jambi, peduli dengan penertiban muatan batubara seperti yang disampaikan oleh Gubernur Jambi Zumi Zola. &ldquo;Kita mulai dari Senin sampai Sabtu,&rdquo; ungkapnya. (<em><strong>Bahara Jati/ATD</strong></em>)</p>'),
(34, 2, 0, 0, 4, 'ngadmin', 'Pemkab Tanjabbar Suport Penuh Putra-Putri Tanjabbar Masuk STTD.', '', '', '', 'pemkab-tanjabbar-suport-penuh-putraputri-tanjabbar-masuk-sttd', 'Y', '', 'Y', '', '', 'Penandatanganan Memorandum Of Understanding (MoU) oleh Bupati Tanjab Barat Dr. Ir. H. Safrial, MS bersama Ketua Sekolah Tinggi Transportasi Darat (STTD) Bekasi Sigit Irfansyah, ATD, M.Sc beberapa bulan yang lalu di Aula Rapat Rektorat Herjan Kanasin STTD Bekasi, Rabu (6/12).', '', '', '', 'https://nuansajambi.com', 'Rabu', '2017-12-10', '2017-12-10', '20:42:39', '51img20171206wa00172143505456.jpg', 459, '', 0, '<p style=\"text-align: justify;\"><strong>KUALATUNGKAL</strong>&ndash; Dengan ditandatanganinya Memorandum Of Understanding (MoU) oleh Bupati Tanjab Barat Dr. Ir. H. Safrial, MS bersama Ketua Sekolah Tinggi Transportasi Darat (STTD) Bekasi Sigit Irfansyah, ATD, M.Sc beberapa bulan yang lalu di Aula Rapat Rektorat Herjan Kanasin STTD Bekasi, pemerintah langsung mengambil langkah cepat dalam mempersiapkan segala sesuatu yang diperlukan terkait kerjasama tersebut. Rabu (6/12).</p>\r\n<p style=\"text-align: justify;\">Sebagaimana di ketahui, MoU antara pemkab dan STTD memuat poin-poin kerjasama yang bertujuan untuk menjembatani pembibitan sumber daya manusia (SDM) Putra Putri Daerah Tanjab Barat dalam menimba ilmu perhubungan khususnya transportasi darat.</p>\r\n<p style=\"text-align: justify;\">Kepala Badan Kepegawaian dan Pengembangan Sumber daya Manusia (BKPSDM), Encep Zakarsih, mengatakan bahwa ada beberapa persyaratan yang bersifat umum yang harus di penuhi oleh para putra putri daerah Tanjabbar yang berminat. Diantaranya yang pertama tinggi badan minimal bagi yang calon siswa putri 160 cm dan yang Putra 165 Cm. Yang kedua nilai rata rata waktu sekolah minimal 7 (Tujuh) untuk tiap mata pelajaran.</p>\r\n<p style=\"text-align: justify;\">Dikatakannya, pemkab tanjabbar akan memberikan pendampingan dalam bentuk fasilitas tryout bagi para calon Taruna STTD untuk bisa masuk ke sekolah ikatan dinas tersebut. &ldquo;Try out ini akan diadakan 2 kali dan&nbsp; materi yang akan di uji diantaranya Bahasa inggris, Matematika dan IPA&rdquo;, ungkapnya.</p>\r\n<p style=\"text-align: justify;\">Selain fasilitas tryout tersebut, di tambahkan encep, ada juga pendampingan berupa pembinaan fisik, psikotes, kesehatan, dan tes akademik yang rencananya akan dimulai bulan januari tahun 2018 mendatang. &ldquo; Sekarang ini kita sedang melakukan sosialisasi ke sekolah SMA, MAN, SMK dan masyarakat. Dan khusus tes fisik, kita juga sudah sosialisasi dengan pihak kodim 0419 Tanjab untuk pendampingannya, &rdquo; tukasnya.&nbsp;</p>\r\n<p style=\"text-align: justify;\">Terpisah Asisten Administrasi Pemerintahan Setda Tanjabbar, Hidayat menyebutkan, untuk STTD pemkab tanjabbar menyuport penuh. Yang mana lulusan STTD yang sudah MOU dengan pemkab tanjabbar sudah dipastikan jadi CPNS. &rdquo; Beda jalur umum dengan lewat pemkab kalau jalur umum itu sarjana biasa, namun jika jalur pemkab akan langsung jadi CPNS, &rdquo; Ujarnya</p>\r\n<p style=\"text-align: justify;\">Untuk alokasi kebutuhan yang sudah disetujui dalam MoU dengan pemkab dengan STTD sebanyak 28 orang selama 5 tahun. &rdquo; Semua nya bisa ditampung di pemkab tanjabbar karena kita sangat membutuhkan lulusan STTD tersebut, &rdquo; tandasnya. (<em><strong>Kentra/ATD</strong></em>)</p>'),
(35, 3, 0, 0, 0, 'ngadmin', 'Sukses Selenggarakan Angkutan Lebaran Tahun 2017, Menhub Budi Karya Sumadi Terima Penghargaan Bintan', '', '', '', 'sukses-selenggarakan-angkutan-lebaran-tahun-2017-menhub-budi-karya-sumadi-terima-penghargaan-bintang', 'Y', '', 'Y', '', '', 'Menhub Budi Karya Sumadi, mengucapkan terima kasih kepada Bapak Kapolri dan Pak Presiden Joko Widodo yang telah memberikan apresiasi atas penghargaan tertinggi. Saya nyatakan bahwasanya ini adalah hasil kerja seluruh jajaran Kemenhub semuanya, bukan saya sendiri,\" ujar Menhub Budi ', '', '', '', 'http://www.dephub.go.id', 'Senin', '2017-12-14', '2017-12-14', '07:59:32', '63whatsappimage20171213at09.57.18.jpeg', 469, '', 0, '<div class=\"konten container\">\r\n<div class=\"col-md-8\">\r\n<div class=\"isi\">\r\n<div class=\"isi\">\r\n<div class=\"isi-konten\">\r\n<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">JAKARTA - Menteri Perhubungan Budi Karya Sumadi menerima penghargaan Bintang Bhayangkara Utama atas keberhasilan menyelenggarakan Angkutan Lebaran 2017. Penghargaan diserahkan langsung oleh Kepala Kepolisian Republik Indonesia bertempat di Sekolah Tinggi Ilmu Kepolisian di Jakarta, Rabu (13/12).</span></p>\r\n<p style=\"text-align: justify;\">\"Saya mengucapkan terima kasih kepada Bapak Kapolri dan Pak Presiden Joko Widodo yang telah memberikan apresiasi atas penghargaan tertinggi. Saya nyatakan bahwasanya ini adalah hasil kerja seluruh jajaran Kemenhub semuanya, bukan saya sendiri,\" ujar Menhub Budi</p>\r\n<p style=\"text-align: justify;\">Keberhasilan Kementerian Perhubungan menyelenggarakan angkutan umum khususnya Mudik Lebaran 2017 yang lancar serta menekan angka kecelakaan dan korban jiwa mendapatkan apresiasi dari Pemerintah. Atas usulan Kapolri, Presiden Jokowi memberikan penghargaan Bintang Bhayangkara Utama kepada Menhub Budi Karya Sumadi.</p>\r\n<p style=\"text-align: justify;\">\"Menhub mengungkapkan ini adalah suatu amanah bagi Kemenhub, tapi sekaligus sebagai tantangan untuk kita berbuat lebih baik dan saya bersama seluruh jajaran kemenhub di sini berniat untuk membuat suatu lompatan baru,\" tambahnya</p>\r\n<p style=\"text-align: justify;\">Lebih lanjut menurut Menhub penghargaan ini menjadi titik awal bagi Kemenhub yang ingin terus berbuat lebih baik untuk bangsa. Kemenhub memang banyak amanah dan secara tidak langsung banyak bersentuhan dengan kepolisian.</p>\r\n<p style=\"text-align: justify;\">\"Oleh karenanya, saya merasa bahwasanya seperti yang disampaikan oleh Kapolri, ini suatu koordinasi yang smooth, chemistry-nya yang nyambung sekali, tapi kita juga ingin selain memang chemistry nyambung, kita semua insan perhubungan harus memberikan suatu layananan yang terbaik bagi masyarakat,&rdquo; jelas Menhub.</p>\r\n<p style=\"text-align: justify;\">\"Tantangan ke depan bagaimana kerjasama Kemenhub dan Polri makin baik dan mampu memberikan pelayanan terbaik ke masyarakat,&rdquo; tutup Menhub.</p>\r\n<p style=\"text-align: justify;\">Kapolri Jenderal Tito Karnavian dalam sambutannya mengatakan salah satu indikator keberhasilan Menhub Budi Karya adalah tidak adanya kemacetan panjang saat arus mudik Lebaran 2017 dan jumlah korban kecelakaan menurun.</p>\r\n<p style=\"text-align: justify;\">Kerjasama Kemenhub dan Polri khususnya Korlantas Polri, menurut Jenderal Tito akan terus ditingkat. &ldquo;Polri dan Kemenhub berkomitmen memberikan pelayanan terbaik ke masyarakat,&rdquo; jelas Kapolri.</p>\r\n<p style=\"text-align: justify;\">Bintang Bhayangkara Utama merupakan penghargaan yang diberikan oleh institusi Polri sebagai tanda penghormatan kepada mereka yang berjasa besar terhadap kemajuan dan pengembangan Polri.</p>\r\n<p style=\"text-align: justify;\">Tujuh menteri yang mendapatkan penghargaan adalah Menteri Keuangan Sri Mulyani, Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Asman Abnur, Menteri Sekretaris Negara Pratikno, Menteri Sekretaris Kabinet Pramono Anung, Menteri Perhubungan Budi Karya Sumadi, Menteri Pekerjaan Umum dan Pekerjaan Rakyat Basuki Hadimulyono serta Menteri Kesehatan Nila Djoewita Moeloek. Penghargaan langsung diberikan Kapolri Jenderal Tito Karnavian. <strong>(YP/TH/AL/BI)</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<div class=\"margin-bot\">&nbsp;</div>\r\n</div>\r\n</div>'),
(36, 3, 0, 0, 1, 'ngadmin', 'Dinas Perhubungan Uji Coba BRT Trans Siginjai Jambi', '', '', '', 'dinas-perhubungan-uji-coba-brt-trans-siginjai-jambi', 'Y', '', 'Y', '', '', '', '', 'Drs. Anwar Harminto, ME', '', '', 'Selasa', '2017-12-15', '2017-12-15', '14:28:41', '38tempojambi_com_8_img20171213wa0010.jpg', 780, '', 0, '<p>Dinas Perhubungan Provinsi Jambi bersama- sama Tim forum LLAJ Tingkat Provinsi Jambi (Polda, Polresta&nbsp; Jambi, Polres Muaro Jambi, DPD Organda Provinsi Jambi, DPC Organda Kota Jambi beserta stakeholder pemangku kepentingan lainnya. Hari ini (13/12/17) melaksanakan peluncuran perdana BRT Trans Siginjai Jambi.</p>\r\n<p>Trans Siginjai melayani koridor 1 dari 4 koridor yang tersedia di Provinsi. Dengan rute Unja Telanai sampai Bepelkes Pijoan PP.</p>\r\n<p>Ada 5 unit Bis BRT bantuan pemerintah pusat yang dimanfaatkan untuk meningkatkan pelayanan kepada masyarakat. Peluncuran perdana ini sebagai uji coba sekaligus mengenalkan kepada masyarakat terhadap angkutan massal, oleh karenanya masyarakat tidak di pungut biaya.</p>\r\n<p>Untuk mendukung operasional BRT Trans Siginjai ini, Dinas Perhubungan telah menunjuk Perum Damri Cabang Jambi dengan pertimbangan Damri sebagai operator relatif siap dan berpengalaman.</p>\r\n<p>Dari aspek pembiayaan operasional Dinas Perhubungan Provinsi Jambi telah mengalokasikan anggaran sebesar Rp. 180 Juta melalui APBD Perubahan Tahun 2017.</p>\r\n<p>Dinas Perhubungan Provinsi Jambi bersama - sama pemangku kepentingan berharap kiranya masyarakat khususnya para pelajar dan mahasiswa dapat memanfaatkan Bus Trans Siginjai dengan baik dan empati yang tinggi, sehingga kita harapkan kehadiran Bus Trans Siginjai Jambi dapat mengurangi kepadatan lalu lintas dan dapat menekan laka lantas pada rute tersebut. &ldquo;Tutur Kabid Perhubungan Darat.</p>\r\n<p>Dinas Perhubugan Provinsi Jambi berharap kepada Pemerintah Pusat, Pemerintah Jambi mendapat prioritas penambahan bantuan sehingga 4 koridor yang telah tersedia dapat terisi oleh BRT Trans Siginjai Jambi. Kepada masyarakat pengguna, Dinas Perhubungan berharap dapat memanfatkan BRT Trans Siginjai dengan baik dan dapat memelihara fasilitas pendukung (halte) yang telah dibangun pemerintah.</p>\r\n<p>Kepala Bidang Perhubungan Darat dan Perkertaapian H. Gushendra, SH mengucapkan, terima kasih kepada semua pihak yang telah mendukung beroperasinya BRT Trans Siginjai Jambi.<strong>(ATD)</strong></p>\r\n<p>&nbsp;</p>'),
(37, 2, 0, 0, 4, 'ngadmin', ' Kadishub: Tinjau Pelabuhan Roro KualaTungkal, Jumlah Penumpang Maupun Barang Meningkat 10 Persen', '', '', '', '-kadishub-tinjau-pelabuhan-roro-kualatungkal-jumlah-penumpang-maupun-barang-meningkat-10-persen', 'Y', '', 'Y', '', '', '', '', '', '', 'nuansajambi.com', 'Sabtu', '2017-12-29', '2017-12-29', '10:01:48', '53img20171226wa0001751641581.jpg', 484, '', 0, '<p dir=\"ltr\" style=\"text-align: justify;\"><strong>KualaTungkal&nbsp;</strong>&ndash; Pemerintah Provinsi Jambi melalui Dinas Perhubungan Provinsi Jambi melakukan pengecekan di pelabuhan Roro KualaTungkal, Kabupaten Tanjung Jabung Barat, Provinsi Jambi, Selasa (26/12) pagi.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Pengecekan pelabuhan dan Kapal tersebut dalam rangka operasi Lilin 2017 pada Natal dan Tahun Baru 2018.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Kepala Dinas Perhubungan Provinsi&nbsp; Jambi, H Varial Adhi Putra, ST. MM mengatakan pengecekan pelabuhan di lapangan pada Natal 2017 dan jelang Tahun Baru 2018, terjadi peningkatan jumlah penumpang maupun barang sebesar 10 persen dari hari biasanya.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">&ldquo;Terjadi peningkatan jumlah penumpang maupun barang sebesar 10% dari hari biasa,&rdquo; ujarnya usai pengecekan, Selasa (26/12).</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Selain itu, penyeberangan dari Pelabuhan Roro Kuala Tungkal menuju Kabupaten Dabo Singkep Kepulauan Riau alur lalin berjalan aman dan lancar.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">&ldquo;Penyeberangan dari kuala tungkal menuju dabo singkep arus lalin berjalan aman lancar dan baik begitupun cuaca perjalanan,&rdquo; ujarnya</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Ditambahkannya, jumlah penumpang maupun barang akan terus meningkat menjelang tahun baru 2018, ini terlihat dari peningkatan arus kedatangan penumpang.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Dishub Provinsi Jambi bersama TNI, Polri dan Dishub Kabupaten Tanjung Barat juga telah menurunkan sejumlah petugas di pos pos Ops Lilin 2017 guna Kenyamanan, Keamanan dan Kelancaran arus mudik Natal dan Tahun Baru 2018.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">(<em><strong>Sanca</strong></em>)</p>'),
(38, 3, 0, 0, 1, 'ngadmin', 'Kepengurusan Baru Asosiasi Driver Online Provinsi Jambi Dilantik', '', '', '', 'kepengurusan-baru-asosiasi-driver-online-provinsi-jambi-dilantik', 'Y', '', 'Y', '', '', '', '', '', '', 'nuansajambi', 'Selasa', '2018-01-29', '2018-01-29', '09:39:08', '38img20180123wa0033831669679.jpg', 451, '', 0, '<p style=\"text-align: justify;\"><strong>Jambi</strong> &ndash; Organisasi Asosiasi Driver Online (ADO) menggelar deklarasi dan pelantikan pengurus DPD ADO Provinsi Jambi Periode <a href=\"tel:20182021\">2018-2021</a>, bertempat di gedung BKOW Provinsi Jambi, Senin (22/01/2018) kemarin.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Gubernur Jambi Zumi Zola yang diwakili oleh Kepala Dinas Perhubungan (Dishub) Provinsi Jambi, H.Varial Adhi Putra ST, MM menghadiri pelantikan pengurus DPD ADO Provinsi Jambi yang beranggotakan kurang lebih 400 anggota terdiri dari driver online roda dua dan roda empat ini.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Kadishub Varial Adhi dalam sambutannya mengatakan pemerintah provinsi Jambi berterima kasih kepada ADO yang telah memfasilitasi driver online untuk bergabung dalam suatu wadah organisasi.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">&ldquo;Dalam wadah organisasi inilah para pengurus dapat mengedukasi anggotanya, untuk memahami berbagai peraturan yang dikeluarkan pemerintah, khususnya peraturan Menteri Perhubungan tentang transportasi berbasis online,&rdquo; ujar Kadishub Varial Adhi.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Lanjutnya, &ldquo;Saya mengucapkan selamat kepada pengurus DPD Asosiasi Driver Online Provinsi Jambi yang baru dilantik semoga saudara dapat mengembang amanah yg diberikan oleh lembaga ini dengan bijak dan benar, saudara harus dapat bertindak sebagai mediator dan penyambung lidah yang bijak para anggota.&rdquo; Ujarnya</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Dilantik sebagai pengurus DPD ADO Provinsi Jambi Periode 2018-2021, Ketua Noval dan Wakil ketua R Bayu Nugroho, serta belasan pengurus lainnya yang merupakan terdiri dari driver online di Jambi.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Sementara itu hadir pimpinan pusat, Ketua DPP ADO, Christiansen Ferary Wilmar dalam sambutannya menjelaskan perjalanan terbentuknya ADO di tahun 2016 berawal agar dapat bekerja dengan aman dan nyaman, &ldquo;Karna saat itu banyak sekali intimidasi dan penolakan dilapangan, berawal dari situlah bersama-sama kami menyamai persepsi akhirnya kami menjadi satu, kami ingin agar usaha ini menjadi sebuah profesi bukan hanya tambahan dan dapat menjadi pendukung ekonomi Indonesia.&rdquo; Jelas</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Christiansen Ferary juga berpesan kepada pengurus DPD ADO Provinsi Jambi untuk terus membuat pelayanan yang terbaik kepada masyarakat dan membuat anggota driver online menjadi pelaku usaha yang profesional, mandiri, dan sejahtera.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">&ldquo;Dengan tegas kami mendukung segala regulasi yang mengedepankan kepentingan masyarakat Indonesia, kami mendukung pemerintah yang mengedepankan kepentingan masyarakat dalam hal ini pelaku dari driver online. Kami ucapkan terimakasih kepada Pemerintah Provinsi Jambi secara khusus kepada Gubernur Jambi bapak Zumi Zola, kepada Kadishub Provinsi bapak Adhi Putra, Dinas Perhubungan Kota Jambi Ridho Saleh, Bapak Kapolda Jambi diwakili Kadirlantas.&rdquo; Pungkasnya. (<em><strong>Sanca/AD</strong></em>)</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Sumber : nuansajambi.com</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>'),
(39, 3, 0, 0, 0, 'ngadmin', 'Menhub Dorong Daya Saing Lulusan STPI Untuk Tingkatkan Kualitas dan Kompetensi Penerbang', '', '', '', 'menhub-dorong-daya-saing-lulusan-stpi-untuk-tingkatkan-kualitas-dan-kompetensi-penerbang', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Rabu', '2018-01-30', '2018-01-30', '08:22:51', '33whatsappimage20180128at07.33.437.jpeg', 437, '', 0, '<p style=\"text-align: justify;\"><span style=\"background-color: initial;\">TANGERANG - Sedikitnya 50 orang penerbang sayap tetap yang menempuh pendidikan di Sekolah Tinggi Penerbangan Indonesia (STPI) Curug baru diwisuda hari ini (27/1). Menteri Perhubungan Budi Karya Sumadi bersama Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Asman Abnur berkesempatan hadir dalam wisuda ke 50 penerbang tersebut.</span></p>\r\n<p style=\"text-align: justify;\">Dalam kesempatan tersebut Menhub Budi mengatakan untuk lebih meningkatkan daya saing para lulusan sekolah di bawah Kementerian Perhubungan, pihaknya nantinya akan memberikan pendidikan tambahan.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Untuk yang lulusan sekarang kita akan berikan pendidikan tambahan supaya mereka memiliki kualifikasi yang sama baiknya dengan harapan daripada airlines kalau yang lain seperti yang saya sampaikan kita memang minta kepada sekolah-sekolah itu punya kewajiban untuk meningkatkan kualitas dari masing-masing,&rdquo; kata Menhub.</p>\r\n<p style=\"text-align: justify;\">Selain peningkatan kualitas pendidikan para lulusan, attitude para lulusan juga menjadi salah satu perhatian Menhub.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Penerbangan itu adalah suatu profesi yang bertanggungjawab terhadap nyawa manusia kalau mereka itu dengan suatu karakter yang tidak baik itu juga memiliki masalah,&rdquo; ucap Menhub.</p>\r\n<p style=\"text-align: justify;\">Dalam kesempatan yang sama MenPANRB Asman Abnur menyebut saat ini banyak daerah memerlukan lulusan yang memiliki kompetensi bidang transportasi. Untuk itu ke depan pihaknya akan segera mengevaluasi sejumlah sekolah yang dimiliki Kementerian Perhubungan.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Saya dan kawan-kawan dari KemenPANRB tentu seijin dari bapak Menteri Perhubungan, akan mencoba mengevaluasi kembali jurusan mana yg kira-kira bisa kita jadikan sekolah kedinasan, nanti mana yang kita buka secara publik, dari berbagai jurusan yang ada mana yang menjadi sekolah kedinasan ke depan akan kita putuskan,&rdquo; jelas Asman.</p>\r\n<p style=\"text-align: justify;\">MenPANRB berharap usai evaluasi nantinya pembibitan di sekolah-sekolah tersebut dapat menjadi model perekrutan pegawai negeri sipil, &ldquo;fokus saya adalah untuk mengisi aparatur sipil negara kita ke depan baik di pusat, kementerian, lembaga, dan daerah. Sekarang banyak daerah membutuhkan tamatan dari pendidikan yang dilaksanakan oleh Kementerian Perhubungan,&rdquo; jelasnya.</p>\r\n<p style=\"text-align: justify;\">Ke 50 orang lulusan Diploma II Penerbang Sayap Tetap Angkatan ke 67 nantinya akan diberikan pelatihan Airline Transport Pilot License (ATPL) Ground dengan lama pendidikan 1 bulan.</p>\r\n<p style=\"text-align: justify;\">Begitu juga untuk lulusan sebelumnya, Program Diploma II Penerbang Sayap Tetap Angkatan 65 akan diberikan pelatihan Multi Engine Rating sebanyak 15 jam terbang. <strong>(GD/TH/AL/BI)</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Sumber : dephub.go.id</p>');
INSERT INTO `berita---` (`id_berita`, `id_kategori`, `id_subkategori`, `id_subdomain`, `id_daerah`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `headline`, `headline_utama`, `aktif`, `utama`, `pilihan`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`, `rating`, `isi_berita`) VALUES
(40, 3, 0, 0, 0, 'ngadmin', 'Pemerintah Usulkan Tarif Ojek Online Yang Menguntungkan Semua Pihak', '', '', '', 'pemerintah-usulkan-tarif-ojek-online-yang-menguntungkan-semua-pihak', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Jumat', '2018-03-29', '2018-03-29', '11:23:59', '82whatsappimage20180328at23.13.36.jpeg', 218, '', 0, '<p style=\"text-align: left;\"><strong>JAKARTA</strong> &ndash; Pemerintah memberikan usulan untuk tarif ojek online adalah Rp. 2.000 per kilometer. Harga ini sudah termasuk dari keuntungan dan biaya jasa. Karena berdasarkan perhitungan yang dilakukan Kementerian Perhubungan, harga tarif pokok yang pantas adalah di kisaran Rp. 1.400 &ndash; 1.500. Dengan besaran ini maka akan menguntungkan semua pihak, baik dari sisi aplikator maupun bagi pengendara ojek online.</p>\r\n<p style=\"text-align: left;\">Hal tersebut disampaikan Menteri Perhubungan Budi Karya Sumadi usai melakukan rapat Pembahasan Taksi Online dan Ojek Online bersama Kepala Kantor Staf Presiden (KSP) Moeldoko, Menteri Kominfo Rudiantara, Menteri Tenaga Kerja Hanif Dhakiri dan perwakilan Grab dan Gojek, di Kantor Staf Presiden, Rabu sore (28/3).</p>\r\n<p style=\"text-align: left;\">&ldquo;Kemenhub memiliki perhitungan harga tarif pokok ojek online sekitar Rp. 1.400-1.500. Dengan keuntungan dan jasanya sehingga tarifnya menjadi Rp. 2.000. Namun Rp. 2.000 itu harus bersih, jangan dipotong menjadi Rp. 1.600 atau berapa. Oleh karenanya ini yang menjadi modal kepada mereka untuk secara internal mereka menghitung. Senin (2/4) nanti harapan kita sudah ada keputusan dari pihak perusahaan,&rdquo; jelas Menhub.</p>\r\n<p style=\"text-align: left;\">Hasil dari pertemuan ini adalah untuk besaran tarif ojek online, penentuan tarifnya adalah hak perusahaan untuk menentukan. Pemerintah tidak boleh menekan dan mengintervensi. Karena perusahaan juga memiliki perhitungan tersendiri untuk mengeluarkan seberapa besar tarif per kilometernya.</p>\r\n<p style=\"text-align: left;\">&ldquo;Poinnya bukan naik atau tidaknya tarif, tapi yang diinginkan adalah pendapatan dari driver itu dinaikkan. Itu sudah kami sampaikan pesan pengendara ojek ini kepada aplikator. Prinsipnya mereka akan menyesuaikan, besarannya itu mau menjadi berapa, nanti mereka yang akan menghitung lagi. Intinya adalah mereka siap untuk menaikkan. Pastilah tarif yang akan disulkan akan proporsional. Karena dari aplikator itu ingin juga mensejahterakan pengendara ojeknya. Besarannya nanti manajemen akan rembukan,&rdquo; ujar Kepala KSP Moeldoko.</p>\r\n<p style=\"text-align: left;\">Moeldoko melanjutkan bahwa usaha antara perusahaan aplikator dan driver ojek online adalah bersifat kemitraan. Sehingga dalam kemitraan itu mesti ada keseimbangan antara kedua belah pihak. Kalau salah satu hanya memikirkan diri sendiri, maka berhak untuk memutuskan kerja sama.</p>\r\n<p style=\"text-align: left;\">&ldquo;Saya pikir ini sudah masuk ke dalam manajemen mereka. Karena namanya kemitraan, mesti ada kesepakatan antar mereka. Kita tidak bisa menentukan tarif per kilometernya harus berapa. Maka kesepakatan internal mereka itu harus ada, agar terjadi kepuasan antara sesama,&rdquo; tambah Moeldoko.</p>\r\n<p style=\"text-align: left;\">Sementara itu Menteri Tenaga Kerja Hanif Dhakiri mengatakan akan mencoba mendalami hal ini sesegera mungkin, karena ini terkait dengan penerapan hubungan kerjanya. Bagaimana skema yang diterapkan, sebab menurutnya hal ini masuk kategori non standart form employement.</p>\r\n<p style=\"text-align: left;\">&ldquo;Karena ini masuk jenis bisnis yang baru, jadi pada intinya kita ingin memastikan kedua belah pihak dalam posisi yang win-win. Jadi ada perlindungan terhadap tenaga kerjanya pada satu sisi, tetapi juga dari sisi industrinya tetap bisa tumbuh,&rdquo; kata Hanif.</p>\r\n<p style=\"text-align: left;\">Perusahaan Aplikator akan Menjadi Perusahaan Jasa Angkutan</p>\r\n<p style=\"text-align: left;\">Pada kesempatan yang sama Menteri Perhubungan Budi Karya Sumadi mengatakan akan berusaha untuk menampung aspirasi terkait PM 108 tahun 2017 tentang Penyelenggaraan Angkutan Orang Dengan Kendaraan Bermotor Umum Tidak Dalam Trayek. Salah satu yang dibahas yaitu bahwasanya keberadaan daripada koperasi dan badan usaha yang menjembatani anatara driver dan perusahaan aplikator sebaiknya tidak ada. Hasilnya adalah bahwa perusahaan aplikator itu nantinya dijadikan perusahaan jasa angkutan.</p>\r\n<p style=\"text-align: left;\">&ldquo;PM 108/2017 kita juga melihat, kita akan berusaha untuk menampung aspirasi bahwasanya keberadaan daripada koperasi atau badan usaha itu sebaiknya tidak ada. Dan aplikator itu juga sebagai perusahaan transportasi agar kontrol itu berjalan dengan baik. Ini kita akan diskusikan dengan para aplikator. Insya Allah kita ada suatu titik temu,&rdquo; sebut Menhub.</p>\r\n<p style=\"text-align: left;\">Lebih lanjut Kepala KSP Moeldoko mengatakan telah berdiskusi dengan Kementerian Perhubungan dan Kementerian Kominfo karena pada kedua Kementerian inilah terdapat wewenang.</p>\r\n<p style=\"text-align: left;\">&ldquo;Tadi kita sudah bersepakat bahwa aplikator itu nantinya dijadikan perusahaan jasa angkutan. Disamping dia aplikator. Jadi nanti garisnya adalah dari driver langsung kepada aplikator. Tadi beliau-beliau sudah menyepakati dan nanti tinggal kita tindaklanjuti. Selanjutnya untuk keberlangsungan PM 108/2017, sementara karena ada penyempurnaan disana-sini akan disesuaikan pemberlakuannya,&rdquo; pungkas Moeldoko. <strong>(HH/TH/LP/BI)</strong></p>'),
(41, 3, 0, 0, 1, 'ngadmin', 'Bersama Kadishub Provinsi Jambi, Zola Bahas Pelabuhan Ujung Jabung dengan Kemenhub dan Kementrian PU', '', '', '', 'bersama-kadishub-provinsi-jambi-zola-bahas-pelabuhan-ujung-jabung-dengan-kemenhub-dan-kementrian-pup', 'Y', '', 'Y', '', '', 'Gubernur Jambi, H.Zumi Zola Zulkifli,S.TP,MA Bersama Kepala Dinas Perhubungan Provinsi Jambi melakukan pertemuan dengan pihak Kementerian Perhubungan dan Kementerian Pekerjaan Umum dan Perumahan Rakyat (PUPR) RI ', '', '', '', 'https://nuansajambi.com', 'Jumat', '2018-03-29', '2018-03-29', '11:35:58', '28dsc09928478085205696x465.jpg', 278, '', 0, '<p><strong>Jakarta &ndash;</strong>&nbsp;Gubernur Jambi, H.Zumi Zola Zulkifli,S.TP,MA melakukan pertemuan dengan pihak Kementerian Perhubungan dan Kementerian Pekerjaan Umum dan Perumahan Rakyat (PUPR) RI membahas tindak lanjut pembangunan Pelabuhan Muara Sabak dan Ujung Jabung, bertempat di Gedung Badan Pemeriksaan Keuangan (BPK) RI, Jakarta Pusat, Kamis (22/03) sore.</p>\r\n<p>Rapat pembahasan tindak lanjut pembangunan Pelabuhan Muara Sabak dan Ujung Jabung ini difasilitasi oleh anggota IV BPK RI, Prof.Dr.H.Rizal Djalil, yang merupakan putra daerah Jambi, dengan mengundang Dirjen Hubungan Laut Kementerian Perhubungan RI dan Dirjen Bina Marga Kementerian Pekerjaan Umum dan Perumahan Rakyat RI.</p>\r\n<p>Usai pertemuan, dalam sesi wawancara, Gubernur Zola mengemukakan, pertemuan yang difasilitasi olen BPK RI ini membahas pembangunan Pelabuhan Ujung Jabung yang merupakan pelabuhan untuk masa depan Jambi, pembangunan pelabuhan ini membutuhkan waktu dan dilakukan secara bertahap hingga selesai tahap pengerjaannya.</p>\r\n<p>&ldquo;Sudah ada Peraturan Daerah (Perda) dari Kabupaten Tanjung Jabung Timur tentang pembangunan Pelabuhan Ujung Jabung yang menyediakan lahan seluas 4.200. Pemerintah Provinsi Jambi sendiri akan membangun fasilitas, misalnya jalan dan jembatan melalui dana dari APBN dan APBD, serta Pemerintah Provinsi Jambi terus memberikan support dalam melakukan pembangunan pelabuhan ini,&rdquo; ujarnya.</p>\r\n<p>Gubernur Zola menjelaskan, selain membahas Pelabuhan Ujung Jabung, pertemuan tadi juga membahas pembangunan Pelabuhan Muara Sabak yang akan dikembangkan karena jaraknya dari batas pantai luar berjarak 12 mil, lebih dekat dari pelabuhan Talang Duku yang jaraknya dari batas pantai luar berjarak lebih kurang 90 mil dari batas pantai luar.</p>\r\n<p>&ldquo;Saya tadi menyampaikan aspirasi dari asosiasi pelayar terkait biaya angkutan lebih besar ketika harus bongkar di Pelabuhan Talang Duku daripada Pelabuhan Muara Sabak yang jaraknya lebih dekat dan lebih ekonomis untuk biaya angkutan. Untuk itu mohon pertimbangan dalam rangka pengembangan pelabuhan Muara Sabak,&rdquo; terangnya.</p>\r\n<p>Gubernur Zola mengungkapkan, pembangunan Pelabuhan Muara Sabak sendiri sudah didukung oleh Kementerian Pekerjaan Umum dan Perumahan Rakyat RI dengan dibangunnya jalan dari Jembatan Aur Duri II menuju Pelabuhan Muara Sabak yang akan selesai pada tahun 2019.</p>\r\n<p>Pemerintah Provinsi Jambi siap mendukung secara penuh kebijakan-kebijakan Pemerintah Pusat, dengan membangun fasilitas-fasilitas yang dibutuhkan.</p>\r\n<p>&ldquo;Untuk pembangunan pelabuhan di Jambi sendiri sudah ada dukungan dari Pemerintah Pusat dan Pemerintah Provinsi Jambi, jadi tinggal mensinergikan pelaksanaannya,&rdquo; katanya.</p>\r\n<p>&ldquo;Pemerintah Provinsi Jambi sendiri terus mensupport melalui fasilitas-fasilitas yang akan kita bangun untuk pelabuhan-pelabuhan di Jambi. Saya berharap pelabuhan-pelabuhan di Jambi bisa menjadi kawasan perekonomian rakyat Jambi serta memberikan kontribusi lebih dan maksimal untuk masyarakat Jambi,&rdquo; pungkas Zola.<strong>(Hms/Wnd/AD)</strong></p>'),
(42, 3, 0, 0, 1, 'ngadmin', 'Dinas Perhubungan Provinsi Jambi Meraih Predikat Kepatuhan Tinggi dari Ombudsman RI', '', '', '', 'dinas-perhubungan-provinsi-jambi-meraih-predikat-kepatuhan-tinggi-dari-ombudsman-ri', 'Y', '', 'Y', '', '', '', '', '', '', 'nuansa jambi', 'Kamis', '2018-04-09', '2018-04-09', '09:23:47', '6dishub-raih-kepatutan.jpg', 253, '', 0, '<p><strong>Jambi</strong>&nbsp;&ndash; Gubernur Jambi Zumi Zola mengapresiasi acara Musyawarah Perencanaan Pembangunan (Musrenbang) RKPD Provinsi Jambi tahun 2019, dengan tema &ldquo;Mewujudkan Pembangunan Yang Merata dan Berdaya Saing. Bertempat di Abadi Convention Center (ACC) Kota Jambi. Kamis (5/4).</p>\r\n<p>Hadir dalam acara tersebut Gubernur Jambi Zumi Zola, Wakil Gubernur Jambi Fachrori Umar, Bupati/Wakil Bupati Kabupaten/Kota se-Provinsi Jambi, Para Pejabat, Kapolda Jambi, Danrem 042/Gapu, unsur forkopimda, dan para tamu undangan lainnya.</p>\r\n<p>Pada kesempatan tersebut Gubernur Zola memberikan penghargaan kepada 4 SKPD yang meraih penilaian predikat kepatuhan tinggi dan memasuki zona hijau diantaranya yaitu :</p>\r\n<p>1. Dinas Penanaman dan Pelayanan Terpadu Satu Pintu (DPM - PTSP) Provinsi Jambi dengan nilai rata-rata diatas 90.</p>\r\n<p>2. Dinas Perhubungan Provinsi Jambi dengan nilai rata-rata sebesar diatas 89.</p>\r\n<p>3. Dinas Pekerjaan Umum dan Perumahan Rakyat (PU - PR) Provinsi Jambi dengan penilaian diatas 87.</p>\r\n<p>4. Dinas Perindustrian dan Perdagangan (Disperindag) Provinsi Jambi dengan penilaian sebesar 85.</p>\r\n<p>Keempat SKPD Langsung mendapatkan penghargaan berupa piagam dari Gubernur Jambi Zumi Zola dan dinyatakan dalam zona hijau.</p>\r\n<p>Dalam sambutannya, Zumi Zola mengatakan musrenbang dilaksanakan untuk membahas dalam perencanaan kegiatan dan prioritas pembangunan yang sangat penting untuk mencapai target pembangunan di Provinsi Jambi. &rdquo; acara ini sangat penting sekali guna membahas pembangunan dan program untuk mensejahterakan perekonomian masyarakat,&rdquo; ujar Zola.</p>\r\n<p>Zola juga berharap pada tahun 2019 pembangunan infrastruktur jalan kondisi mantap bisa tercapai sebesar 80%. Selain itu juga salah satu pendukung ekonomi pembangunan daerah diantaranya pembangunan pelabuhan ujung jabung, peningkatan produktifitas pertanian, peningkatan ketahanan pangan untuk usaha para pertanian serta peternakan, dan meningkatkan pelayanan pendidikan dan kesehatan. &rdquo; Diharapkan pada tahun 2019 persentase kondisi jalan mantap sebesar 80 persen salah satubl pendukung ekonomi pembangunan daerah yakni pembangunan pelabuhan ujung jabung, mendukung peningkatan produksitifitas pertanian, peningkatan pelayanan pendidikan dan kesehatan,&rdquo; harap Zola. (AD)</p>'),
(43, 3, 0, 0, 0, 'ngadmin', 'Minati Proyek Transportasi di Indonesia, Korea Selatan Tawarkan Kerja Sama', '', '', '', 'minati-proyek-transportasi-di-indonesia-korea-selatan-tawarkan-kerja-sama', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Minggu', '2018-04-17', '2018-04-17', '09:18:02', '3whatsappimage20180412at17.11.59.jpeg', 216, '', 0, '<p>JAKARTA &ndash; Indonesia saat ini sedang gencar membangun infrastruktur, tak terkecuali infrastruktur di sektor transportasi. Gencarnya pembangunan proyek-proyek ini diharapkan dapat menarik minat negara lain untuk melakukan investasi dan kerja sama. Salah satu negara yang siap melakukan kerja sama adalah Korea Selatan, sebagai mana pertemuan antara Duta Besar Korea Selatan Kim Chang-Beom dengan Menteri Perhubungan Budi Karya Sumadi, di Kantor Pusat Kementerian Perhubungan Jakarta, Kamis (12/4).</p>\r\n<p>Hasil dari pertemuan ini Korea Selatan berminat ikut mengembangkan proyek transportasi antara lain proyek Intelligent Transportation System (ITS), bandara, perkeretaapian dan Transit Oriented Development (TOD).</p>\r\n<p>Untuk proyek ITS, Korea Selatan mengusulkan menjadikan Jabodetabek sebagai pilot project ITS. Di subsektor perhubungan udara, Korea Selatan tertarik dalam proyek pengembangan bandara yakni renovasi Bandara Internasional Hang Nadim di Batam. Nantinya proyek ini akan mengikutsertakan PT Angkasa Pura II dan Incheon International Co. Pada subsektor perkeretaapian, dibahas peluang partisipasi Korea Selatan dalam Proyek Kereta Api Bandara Internasional Soekarno-Hatta. Selain itu perusahaan asal Korea Selatan Hyundai-Rotem sangat tertarik memasok rolling stock untuk Light Rail Transit (LRT) Jabodetabek.</p>\r\n<p>&ldquo;Ini dilakukan skema berbasis BOT dan jika Hyundai masih tertarik dengan proyek ini, sebaiknya pertimbangkan untuk menyiapkan kepemilikan 51% Indonesia dan 49% Hyundai,&rdquo; ujar Menhub.</p>\r\n<p>Lebih lanjut di subsektor perekeretaapian juga dibahas partisipasi Korea Selatan pada proyek kereta api Makassar &ndash; Pare-Pare. Menhub mengatakan Makassar &ndash; Pare-Pare sangat potensial untuk dikembangkan karena di tempat tersebut banyak terdapat industri semen.</p>\r\n<p>&ldquo;Silahkan Korea Selatan untuk mengkajinya,&rdquo; sebutnya.</p>\r\n<p>Sedangkan untuk proyek TOD, perusahaan Korea Selatan sangat tertarik berpartisipasi dalam Proyek TOD di Jabodetabek dan ingin bergabung.</p>\r\n<p>&ldquo;Banyak proyek TOD siap diimplementasikan. Banyak perusahaan di Korea Selatan yang bersedia bergabung di proyek ini, untuk itu kami akan lanjutkan dengan diskusi lebih dalam,&rdquo; tutur Dubes Korea Selatan Kim Chang-Beom.</p>\r\n<p>&ldquo;Selain TOD kita juga punya proyek loopline di Jabodetabek, untuk menghubungkan semua stasiun kereta dan kita buat rel nya elevated,&rdquo; tawar Menhub kepada pihak Korea Selatan.</p>\r\n<p>Menutup pertemuan ini, Menhub menyampaikan apresiasi atas hubungan dan kerja sama yang baik antara kedua negara. Menhub juga berharap melalui pertemuan ini dapat membawa dampak yang baik bagi kedua negara, terutama untuk Indonesia karena dapat berbagi pengalaman, financing, keahlian, teknologi dan transfer ilmu dari pihak Korea Selatan.</p>\r\n<p>\"Pihak Korea Selatan, selain dapat membawa pengalaman, keahlian, teknologi dan financing, juga akan memastikan transfer knowledge dan teknologi, sehingga dalam jangka waktu tidak terlalu lama, pihak Indonesia dapat mengoperasikan dan mengembangkan sendiri,&rdquo; pungkas Menhub.</p>\r\n<p>Turut hadir dalam pertemuan ini Dubes RI untuk Korea Selatan Umar Hadi, Dirjen Perhubungan Darat Budi Setiyadi, Dirjen Perhubungan Laut Agus Purnomo dan sejumlah pejabat di lingkungan Kementerian Perhubungan. (HH/TH/LP/BI/AD)</p>'),
(44, 3, 0, 0, 1, 'ngadmin', 'Pemprov Jambi Akan Konfirmasi ke Pusat Terkait Pembatalan Pembangunan RKA Jambi - Palembang', '', '', '', 'pemprov-jambi-akan-konfirmasi-ke-pusat-terkait-pembatalan-pembangunan-rka-jambi--palembang', 'Y', '', 'Y', '', '', '', '', '', '', 'JAMBIUPDATE', 'Kamis', '2018-04-20', '2018-04-20', '10:22:04', '7843img_20180417_140316.jpg', 270, '', 0, '<p style=\"text-align: justify;\"><strong>JAMBI</strong> - Pemerintah Provinsi Jambi melalui Dinas Perhubungan akan mengkonfirmasi ke pemerintah pusat terkait pembatalan pembangunan jalur rel kereta api di Jambi yang menghubungkan Palembang - Sumatera Selatan, dan Pekanbaru - Riau.</p>\r\n<p style=\"text-align: justify;\">Kepala Dinas Perhubungan Provinsi Jambi H. Varial Adhi Putra, ST, MM mengatakan pihaknya akan ke Jakarta untuk menanyakan alasan pembatalan tersebut karena belum menerima pemberitahuan dari pemerintah pusat.</p>\r\n<p style=\"text-align: justify;\">\"Kami akan konfirmasi kebenarannya seperti apa, bagaimana hasil rapat terbatas di Jakarta tersebut. Intinya kami menyayangkan jika benar proyek tersebut harus dibatalkan , \"kata Kadis Dishub, selasa (17/4).</p>\r\n<p style=\"text-align: justify;\">Menurutnya, jika pembangunan itu dibatalkan tentu menjadi beban moral Pemprov Jambi karena selama ini publik sudah mengetahui bahwa di Jambi akan dibangun jalur Rel Kereta Api (KA) Trans Sumatera tersebut.</p>\r\n<p style=\"text-align: justify;\">\"Selama ini kami juga sudah mempublikasikan kepada masyarakat tentang rencana pembangunan tersebut. Tapi dibatalkan, tentu ini menjadi beban moral kami juga karena masyarakat Jambi sudah berharap pembangunan tersebut terealisasi,\" ujarnya.</p>\r\n<p style=\"text-align: justify;\">Hingga saat ini kata Varial, tahapan pembangunan tersebut sudah masuk pembebasan lahan dari Betung (Palembang) ke Jambi. Setelah itu baru pembebasan lahan yang melewati Jambi.</p>\r\n<p style=\"text-align: justify;\">\"Kami sudah siap untuk pembebasan lahan baik jalur Betung - Jambi dan Jambi - Pekanbaru,\" Katanya. <strong>(AD)</strong></p>'),
(45, 3, 0, 0, 0, 'ngadmin', 'Kemenhub Terus Membangun Fasilitas Transportasi Dari Sabang Hingga Merauke', '', '', '', 'kemenhub-terus-membangun-fasilitas-transportasi-dari-sabang-hingga-merauke', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Jumat', '2018-04-27', '2018-04-27', '09:31:41', '33f5b0740fda4845479974e577d678a562.jpg', 231, '', 0, '<p style=\"text-align: justify;\"><span style=\"-webkit-text-size-adjust: 100%;\">SLAWI &ndash; Kementerian Perhubungan terus melaksanakan pembangunan fasilitas transportasi untuk mendukung konektivitas di Indonesia. Hal ini diwujudkan melalui pembangunan bandara serta pelabuhan untuk mempersatukan Indonesia dari Sabang sampai Merauke, dari Miangas sampai Pulau Rote. Demikian disampaikan Menteri Perhubungan Budi Karya Sumadi saat menjadi narasumber dalam Dialog Nasional 10: Indonesia Maju di Gedung Korpri Slawi Kabupaten Tegal pada Rabu (25/4).</span></p>\r\n<p style=\"text-align: justify;\">\"Indonesia adalah Negara Kesatuan Republik Indonesia (NKRI) dari Sabang sampai Merauke dan kita ingin mempersatukan semua. Kita membangun fasilitas negara seperti bandara dan pelabuhan. Seperti di Sulawesi Utara di Pulau Rote dibangun bandara. Ini merupakan kebanggaan bagi kita,\" jelas Menhub.</p>\r\n<p style=\"text-align: justify;\">\"Kita juga membangun Bandara Soekarno Hatta yang sama baiknya dengan negara lain. Hal ini tentunya menjadi kebanggaan bagi Indonesia,\" tambah Menhub.</p>\r\n<p style=\"text-align: justify;\">Selain pembangunan bandara, Kemenhub juga mengembangkan tol laut yang efektif menurunkan harga sampai dengan 30% di Timur Indonesia.</p>\r\n<p style=\"text-align: justify;\">\"Atas instruksi Bapak Presiden RI untuk membawa barang-barang ke Papua, Sulawesi, Maluku menggunakan kapal melalui program tol laut supaya harga barang murah. Alhamdulillah dengan program tol laut dapat mengurangi disparitas harga sehingga harga barang lebih murah 30 persen,\" terang Menhub.</p>\r\n<p style=\"text-align: justify;\">Sementara itu Menteri Sosial Idrus Marham mengatakan masyarakat Indonesia harus berpikir maju dan positif terhadap program yang diberikan pemerintah.</p>\r\n<p style=\"text-align: justify;\">\"Berpikir maju adalah berpikir positif. Bahkan apa yg dilakukan oleh pemerintah harus disyukuri. Yang mendasar adalah kebijakan yang prinsip dan jangkauan jauh kedepan seperti yg disampaikan oleh Menhub yaitu pembangunan pelabuhan dan bandara. Ini jangkauannya kedepan tetapi juga mempermudah komunikasi rakyat. Dengan adanya pembangunan bandara hingga ke pelosok memudahkan masyarakat untuk mencapai suatu tempat,\" kata Idrus.</p>\r\n<p style=\"text-align: justify;\">Dalam kesempatan tersebut, Menhub juga memberikan sedikit penjelasan terkait mudik lebaran tahun 2018. Menhub mengingatkan masyarakat Slawi untuk tidak menggunakan sepeda motor untuk menempuh jarak jauh.</p>\r\n<p style=\"text-align: justify;\">\"Untuk masyarakat Slawi mudik jangan menggunakan motor, itu bahaya. Kita mengajak masyarakat untuk mendukung Kepolisian, Pemda, serta Dandim mensukseskan mudik tahun ini karena ini harus kita lakukan bersama,\" ujar Menhub.</p>\r\n<p style=\"text-align: justify;\">Turut hadir dalam Dialog diantaranya Kepala Badan BPSDM Perhubungan Djoko Sasono, Kapolres Tegal Dwi Agus Prianto, Dandim 0712 Tegal Letkol Infanteri Kaveleri Kristiyanto, PJS Bupati Tegal Sinung Nugroho, Dirjen Perlindungan dan Jaminan Sosial Kemensos Hari Hikmat, Kepala Dinas Sosial Kabupaten Tegal Nurhayati. <strong>(LFH/TH/LP/BI)</strong></p>'),
(46, 3, 0, 0, 0, 'ngadmin', 'Kunjungi STTD, Menhub Minta Taruna Dan Taruni Mendapatkan Pendidikan Yang Baik', '', '', '', 'kunjungi-sttd-menhub-minta-taruna-dan-taruni-mendapatkan-pendidikan-yang-baik', 'Y', '', 'Y', '', '', '', '', '', '', 'http://www.dephub.go.id', 'Minggu', '2018-05-04', '2018-05-04', '09:20:19', '316cc0b014bc624da48d5392d57400aba6.jpg', 231, '', 0, '<p>CIBITUNG &ndash; Usai menghadiri acara peresmian fasilitas uji emisi kendaraan bermotor di Balai Pengujian Laik Jalan dan Sertifikasi Kendaraan Bermotor (BPLJSKB), Menteri Perhubungan Budi Karya Sumadi menyempatkan berkunjung ke Sekolah Tinggi Transportasi Darat (STTD). Dalam kunjungannya Menhub meminta sekolah kedinasan di bawah naungan Badan Pengembangan Sumber Daya Manusia Perhubungan (BPSDMP) tersebut dapat memberikan pendidikan yang baik agar siswa didiknya memiliki kompetensi.</p>\r\n<p>&ldquo;Saya minta BPSDMP untuk memberikan suatu pendidikan dengan kompetensi yang baik karena nantinya mereka akan melayani suatu fungsi-fungsi konektivitas yang kompleks, jadi mereka harus siap,&rdquo; ujar Menhub di STTD pada Kamis (3/5).</p>\r\n<p>Menhub juga meminta taruna dan taruni untuk belajar dengan giat karena lulusannya akan direkrut sebagai operator transportasi.</p>\r\n<p>&ldquo;Kita lihat para taruna taruni belajar dengan giat karena praktis lulusan dari STTD ini banyak digunakan (direkrut) oleh operator Light Rail Transit (LRT), operator Mass Rapid Transit (MRT) dengan kompetensi khusus yang mereka miliki,&rdquo; kata Menhub.</p>\r\n<p>&ldquo;Beberapa teknisi kita dari Jakarta maupun Madiun sudah dipekerjakan di operator MRT dan operator LRT Palembang dan mereka secara simultan juga belajar di Malaysia untuk mengoperasikan LRT dan MRT,&rdquo; lanjut Menhub.</p>\r\n<p>Dalam kunjungannya, Menhub juga menyapa peserta yang sedang mengikuti Diklat Pemberdayaan Masyarakat (DPM) di STTD. Diklat tersebut merupakan diklat penjagaan pintu perlintasan kereta api yang diikuti oleh 30 orang dari masyarakat Tangerang selama 5 hari.</p>\r\n<p>&ldquo;Tadi ada 30 warga Tangerang yang kita didik untuk pengelolaan pintu perlintasan kereta api. Kita harapkan setelah dari sini bisa direkrut oleh PT.KAI,&rdquo; tutup Menhub.&nbsp;<strong>(LFH/TH/RK/BI/AD)</strong></p>'),
(47, 3, 0, 0, 0, 'ngadmin', ' Pembangunan RKA Jambi - Palembang Akan Tetap Dilanjutkan', '', '', '', '-pembangunan-rka-jambi--palembang-akan-tetap-dilanjutkan', 'Y', '', 'Y', '', '', '', '', '', '', 'JAMBIUPDATE.CO', 'Minggu', '2018-05-04', '2018-05-04', '09:53:33', '9723img20180420wa0009.jpg', 1298, '', 0, '<p style=\"text-align: justify;\"><strong>JAMBI &ndash; </strong>Proyek pembangunan Rel Kereta Api (RKA) Jambi &ndash; Palembang oleh pemerintah pusat akhirnya tetap akan dilaksanakan meski telah dicoret dari Proyek Strategis Nasional (PSN).</p>\r\n<p style=\"text-align: justify;\">Hal ini disampaikan oleh Kepala Dinas Perhubungan Provinsi Jambi, H. Varial Adhi Putra, ST, MM, setelah melakukan pertemuan dengan Kepala Biro Perencanaan Kemenhub RI, DR. Gede Pasek Suardika, Msc, Jum&rsquo;at (20/4).</p>\r\n<p style=\"text-align: justify;\">Dari penjelasan Gede Pasek Suardika, kata Varial Adhi, walaupun tidak masuk PSN (Perpers 58 Tahun 2017) bukan berarti pembangunan RKA Jambi-Palembang tidak dilaksanakan.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Namun ada fasilitas prioritas yang diberikan seperti dalam proses pembebasan lahan, kepastian pembiayaan, koordinasi lintas sektoral dan upaya-upaya percepatan sesuai jadwal yang ditetapkan dalam Perpers,&rdquo; kata Varial.</p>\r\n<p style=\"text-align: justify;\">Dengan demikian, lanjut Varial, walaupun telah telah didrop dari PSN, program pembangunan KA Trans Sumatera tetap berjalan sesuai program kegiatan yang telah ada di Kemenhub.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Disarankan seluruh kegiatan di daerah yang terkait dengan program KA terus berjalan dan Kemenhub akan menunggu tindak lanjutnya hasil resmi Pencabutan Perpers 58 Tahun 2017, untuk segera mengambil langkah lanjutnya,&rdquo;tukasnya.<strong>(WAN/AD)</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `daerah`
--

CREATE TABLE `daerah` (
  `id_daerah` int(3) NOT NULL,
  `nama_daerah` varchar(100) NOT NULL,
  `seo_daerah` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tgl_upload` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daerah`
--

INSERT INTO `daerah` (`id_daerah`, `nama_daerah`, `seo_daerah`, `username`, `tgl_upload`) VALUES
(1, 'Kota Jambi', 'kotajambi', 'ngadmin', '2013-09-05'),
(2, 'Muarojambi', 'muarojambi', 'ngadmin', '2013-09-05'),
(3, 'Batanghari', 'batanghari', 'ngadmin', '2013-09-05'),
(4, 'Tanjab Barat', 'tanjabbar', 'ngadmin', '2013-09-05'),
(5, 'Tanjab Timur', 'tanjabtim', 'ngadmin', '2013-09-05'),
(6, 'Sarolangun', 'sarolangun', 'ngadmin', '2013-09-05'),
(7, 'Merangin', 'merangin', 'ngadmin', '2013-09-05'),
(8, 'Bungo', 'bungo', 'ngadmin', '2013-09-05'),
(9, 'Tebo', 'tebo', 'ngadmin', '2013-09-05'),
(10, 'Sungaipenuh', 'sungaipenuh', 'ngadmin', '2013-09-05'),
(11, 'Kerinci', 'kerinci', 'ngadmin', '2013-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(3) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `tahun` year(4) NOT NULL,
  `keterangan` text NOT NULL,
  `metode_link` int(2) NOT NULL,
  `id_katdokumen` int(2) NOT NULL,
  `nama_file` varchar(300) NOT NULL,
  `link_file` varchar(300) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `tgl_upload` date NOT NULL,
  `sumber` varchar(100) NOT NULL,
  `dibaca` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `dl` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `judul`, `tahun`, `keterangan`, `metode_link`, `id_katdokumen`, `nama_file`, `link_file`, `gambar`, `tgl_upload`, `sumber`, `dibaca`, `username`, `aktif`, `dl`) VALUES
(29, 'LRA, Neraca dan LAK', 2013, '', 1, 7, 'LRA, Neraca dan LAK.pdf', '', '', '2014-06-30', '', '54', 'ngadmin', 'Y', ''),
(31, 'LAPORAN KETERANGAN PERTANGGUNGJAWABAN BUPATI ( L K P J ) KABUPATEN TANJUNG JABUNG TIMUR TAHUN 2012', 2012, '', 1, 9, 'LKPJ2012.rar', '', '', '2014-08-28', '', '307', 'ngadmin', 'Y', ''),
(32, 'LAPORAN AKUNTABILITAS KINERJA INSTANSI PEMERINTAH ( L A K I P ) KABUPATEN TANJUNG JABUNG TIMUR TAHUN 2012', 2012, '', 1, 4, 'LAKIP2012.rar', '', '', '2014-08-28', '', '259', 'ngadmin', 'Y', ''),
(33, 'RPJMD Kabupaten Tanjung Jabung Timur 2011-2016', 2012, '', 1, 1, 'RPJMD Tanjabtim 2011-2016.zip', '', '', '2014-09-30', '', '121', 'ngadmin', 'Y', ''),
(28, 'Catatan atas Laporan Keuangan', 2013, '', 1, 7, 'catatan atas laporan keuangan.rar', '', '', '2014-06-30', '', '80', 'ngadmin', 'Y', ''),
(35, 'RENCANA KERJA PEMBANGUNAN DAERAH TAHUN 2014 ', 2014, '', 1, 8, 'RKPD 2015 OK.pdf', '', '', '2014-10-01', '', '12', 'ngadmin', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(3) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `keterangan` text NOT NULL,
  `metode_link` int(2) NOT NULL,
  `nama_file` varchar(300) NOT NULL,
  `link_file` varchar(300) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `username` varchar(100) NOT NULL,
  `tgl_posting` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fotoberita`
--

CREATE TABLE `fotoberita` (
  `id_fotoberita` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `judul_fotoberita` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gambar_fotoberita` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(6) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `fotoberita`
--

INSERT INTO `fotoberita` (`id_fotoberita`, `judul_fotoberita`, `keterangan`, `gambar_fotoberita`, `dibaca`, `tanggal`, `aktif`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
('1105201942', 'Penandatanganan Kesepahaman Bersama (MoU) tentang Kerjasama Pengembangan Konektivitas Antar Daerah Perbatasan', '<p>Musrenbang Nasional Tahun 2019 dan Penandatanganan Kesepahaman Bersama (MoU) tentang Kerjasama Pengembangan Konektivitas Antar Daerah Perbatasan (Kabupaten Tanjung Jabung Timur-Kabupaten Tanjung Jabung Barat Provinsi Jambi - Kabupaten Indragiri Hilir Provinsi Riau)</p>', '', 94, '2019-05-09', 'Y', '2019-05-09', '21:06:11', 'Kamis', 'admin'),
('2147483647', 'Bupati Tanjung Jabung Timur Romi Hariyanto mengunjungi korban kebakaran di Parit 6 Desa Pangkal Duri Kecamatan Mendahara', '', '', 161, '2019-05-13', 'Y', '2019-05-13', '02:54:32', 'Senin', 'admin'),
('2105201982', 'Buka Puasa Bersama SKK Migas dan Petrochina', '', '', 114, '2019-05-21', 'Y', '2019-05-21', '05:25:42', 'Selasa', 'admin'),
('2105201997', 'Upacara Peringatan Hari Kebangkitan Nasional di Kabupaten Tanjung Jabung Timur', '', '', 108, '2019-05-21', 'Y', '2019-05-21', '05:37:43', 'Selasa', 'admin'),
('2006201958', 'Penilaian Tertib Administrasi PKK Tingkat Nasional Tahun 2019', '', '', 28, '2019-06-17', 'Y', '2019-06-17', '01:09:45', 'Senin', 'admin'),
('200620195', 'Bupati Tanjung Jabung Timur Romi Hariyanto menghadiri acara MoU dengan Kepala Pertanahan dan Kepala Kejaksaan Tinggi Provinsi Jambi', '', '', 25, '2019-06-20', 'Y', '2019-06-20', '07:26:38', 'Kamis', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `fotoberita---`
--

CREATE TABLE `fotoberita---` (
  `id_fotoberita` int(5) NOT NULL,
  `judul_fotoberita` text COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_fotoberita` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(6) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `fotoberita---`
--

INSERT INTO `fotoberita---` (`id_fotoberita`, `judul_fotoberita`, `keterangan`, `gbr_fotoberita`, `dibaca`, `tanggal`, `aktif`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(1, 'Pemilihan Akut Tingkat Provinsi Jambi Tahun 2015', '', '', 243, '2015-06-16', 'Y', '2017-06-20', '13:57:59', 'Selasa', 'ngadmin'),
(2, 'Pemilihan Pelajar Pelopor Keselamatan Lalu Lintas dan Angkutan Jalan Tahun 2016 Tingkat Nasional', '', '', 629, '2016-05-24', 'Y', '2017-06-20', '14:03:02', 'Selasa', 'ngadmin'),
(3, 'Pemilihan Awak Kendaraan Umum Teladan Tahun 2016', '', '', 402, '2016-09-15', 'Y', '2017-06-20', '14:05:31', 'Selasa', 'ngadmin'),
(4, 'Kunjungan Staf Ahli Menteri Perhubungan RI ke Provinsi Jambi', 'Kunjungan Staf ahli Menteri Perhubungan RI tentang Program kegiatan pembangunan infrastruktur  transportasi di rumah dinas Gubernur Jambi. ', '', 367, '2017-03-07', 'Y', '2017-06-20', '14:09:27', 'Selasa', 'ngadmin'),
(2147483647, 'SENAM SEHAT, DONOR DARAH DAN BAZAR MENYAMBUT HARHUBNAS TAHUN 2017', '', '', 805, '2017-09-26', 'Y', '2017-09-26', '12:57:46', 'Selasa', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_fotoberita` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `aktif` enum('N','Y') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_fotoberita`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`, `tanggal`, `tanggal_modif`, `aktif`) VALUES
(416, '1105201942', 'admin', '', '', 'Penandatanganan Kesepahaman Bersama (MoU) tentang Kerjasama Pengembangan Konektivitas Antar Daerah Perbatasan', '49-59617818_663332280793678_8143666577835017262_n.jpg', '2019-05-09', '2019-05-09', 'N'),
(417, '1105201942', 'admin', '', '', 'Penandatanganan Kesepahaman Bersama (MoU) tentang Kerjasama Pengembangan Konektivitas Antar Daerah Perbatasan', '6-58657631_1042609355950202_1917468586304418524_n.jpg', '2019-05-09', '2019-05-09', 'N'),
(418, '1105201942', 'admin', '', '', 'Penandatanganan Kesepahaman Bersama (MoU) tentang Kerjasama Pengembangan Konektivitas Antar Daerah Perbatasan', '32-57338925_619246545222617_5506071663315158173_n.jpg', '2019-05-09', '2019-05-09', 'N'),
(419, '1105201942', 'admin', '', '', 'Penandatanganan Kesepahaman Bersama (MoU) tentang Kerjasama Pengembangan Konektivitas Antar Daerah Perbatasan', '95-58468723_380130219266047_3343729563476963882_n.jpg', '2019-05-09', '2019-05-09', 'N'),
(420, '1105201942', 'admin', '', '', 'Penandatanganan Kesepahaman Bersama (MoU) tentang Kerjasama Pengembangan Konektivitas Antar Daerah Perbatasan', '24-59787485_624118231367615_4958186044790202022_n.jpg', '2019-05-09', '2019-05-09', 'N'),
(421, '2147483647', 'admin', '', '', '', '14-IMG-20190513-WA0002.jpg', '2019-05-13', '2019-05-13', 'N'),
(422, '2147483647', 'admin', '', '', '', '74-IMG-20190513-WA0002.jpg', '2019-05-13', '2019-05-13', 'N'),
(423, '2147483647', 'admin', '', '', '', '52-IMG-20190513-WA0003.jpg', '2019-05-13', '2019-05-13', 'N'),
(424, '2147483647', 'admin', '', '', '', '82-IMG-20190513-WA0004.jpg', '2019-05-13', '2019-05-13', 'N'),
(425, '2105201982', 'admin', '', '', '', '46-petro.jpg', '2019-05-21', '2019-05-21', 'N'),
(426, '2105201982', 'admin', '', '', '', '31-petro-1.jpg', '2019-05-21', '2019-05-21', 'N'),
(427, '2105201982', 'admin', '', '', '', '63-petro-2.jpg', '2019-05-21', '2019-05-21', 'N'),
(428, '2105201982', 'admin', '', '', '', '54-petro-3.jpg', '2019-05-21', '2019-05-21', 'N'),
(429, '2105201982', 'admin', '', '', '', '16-petro-4.jpg', '2019-05-21', '2019-05-21', 'N'),
(430, '2105201982', 'admin', '', '', '', '23-petro-5.jpg', '2019-05-21', '2019-05-21', 'N'),
(431, '2105201982', 'admin', '', '', '', '77-petro-6.jpg', '2019-05-21', '2019-05-21', 'N'),
(432, '2105201997', 'admin', '', '', '', '90-LIE_2062.jpg', '2019-05-21', '2019-05-21', 'N'),
(433, '2105201997', 'admin', '', '', '', '32-LIE_2050.jpg', '2019-05-21', '2019-05-21', 'N'),
(434, '2105201997', 'admin', '', '', '', '71-LIE_2048.jpg', '2019-05-21', '2019-05-21', 'N'),
(435, '2105201997', 'admin', '', '', '', '93-LIE_2033.jpg', '2019-05-21', '2019-05-21', 'N'),
(436, '2105201997', 'admin', '', '', '', '8-LIE_2044.JPG', '2019-05-21', '2019-05-21', 'N'),
(437, '2105201997', 'admin', '', '', '', '93-LIE_2041.JPG', '2019-05-21', '2019-05-21', 'N'),
(438, '2006201958', 'admin', '', '', '', '24-4.jpg', '2019-06-17', '2019-06-17', 'N'),
(439, '2006201958', 'admin', '', '', '', '42-1.jpg', '2019-06-17', '2019-06-17', 'N'),
(440, '2006201958', 'admin', '', '', '', '5-2.jpg', '2019-06-17', '2019-06-17', 'N'),
(441, '2006201958', 'admin', '', '', '', '44-3.jpg', '2019-06-17', '2019-06-17', 'N'),
(442, '2006201958', 'admin', '', '', '', '5-5.jpg', '2019-06-17', '2019-06-17', 'N'),
(443, '2006201958', 'admin', '', '', '', '75-6.jpg', '2019-06-17', '2019-06-20', 'N'),
(444, '2006201958', 'admin', '', '', '', '71-7.jpg', '2019-06-17', '2019-06-20', 'N'),
(445, '2006201958', 'admin', '', '', '', '67-8.jpg', '2019-06-17', '2019-06-20', 'N'),
(446, '2006201958', 'admin', '', '', '', '19-9.jpg', '2019-06-17', '2019-06-20', 'N'),
(447, '2006201958', 'admin', '', '', '', '56-10.jpg', '2019-06-17', '2019-06-20', 'N'),
(448, '2006201958', 'admin', '', '', '', '52-11.jpg', '2019-06-17', '2019-06-20', 'N'),
(449, '2006201958', 'admin', '', '', '', '88-12.jpg', '2019-06-17', '2019-06-20', 'N'),
(450, '2006201958', 'admin', '', '', '', '93-12.jpg', '2019-06-17', '2019-06-20', 'N'),
(451, '2006201958', 'admin', '', '', '', '56-13.jpg', '2019-06-17', '2019-06-20', 'N'),
(452, '2006201958', 'admin', '', '', '', '1-14.jpg', '2019-06-17', '2019-06-20', 'N'),
(453, '200620195', 'admin', '', '', '', '59-fb_img_1561013074051.jpg', '2019-06-20', '2019-06-20', 'N'),
(454, '200620195', 'admin', '', '', '', '52-fb_img_1561013124856.jpg', '2019-06-20', '2019-06-20', 'N'),
(455, '200620195', 'admin', '', '', '', '34-fb_img_1561013139735.jpg', '2019-06-20', '2019-06-20', 'N'),
(459, '200620195', 'admin', '', '', '', '21-fb_img_1561013144383-2.jpg', '2019-06-20', '2019-06-20', 'N'),
(460, '2147483647', 'ngadmin', '', '', '', '52-IMG-20190617-WA0023.jpg', '2019-06-24', '2019-06-24', 'N'),
(461, '2147483647', 'ngadmin', '', '', '', '39-IMG-20190624-WA0002.jpg', '2019-06-24', '2019-06-24', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `gallery---`
--

CREATE TABLE `gallery---` (
  `id_gallery` int(5) NOT NULL,
  `id_fotoberita` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery---`
--

INSERT INTO `gallery---` (`id_gallery`, `id_fotoberita`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`, `tanggal`, `tanggal_modif`, `aktif`) VALUES
(1, 1, 'ngadmin', '', '', '', '121303.jpg', '2017-06-20', '2017-06-20', 'Y'),
(2, 1, 'ngadmin', '', '', '', '38304.jpg', '2017-06-20', '2017-06-20', 'Y'),
(3, 1, 'ngadmin', '', '', '', '501205.jpg', '2017-06-20', '2017-06-20', 'Y'),
(4, 1, 'ngadmin', '', '', '', '772706.jpg', '2017-06-20', '2017-06-20', 'Y'),
(5, 1, 'ngadmin', '', '', '', '428307.jpg', '2017-06-20', '2017-06-20', 'Y'),
(6, 1, 'ngadmin', '', '', '', '963209.jpg', '2017-06-20', '2017-06-20', 'Y'),
(7, 1, 'ngadmin', '', '', '', '47308.jpg', '2017-06-20', '2017-06-20', 'Y'),
(8, 2, 'ngadmin', '', '', '', '309IMG_7219.JPG', '2017-06-20', '2017-06-20', 'Y'),
(9, 2, 'ngadmin', '', '', '', '4938IMG_7231.JPG', '2017-06-20', '2017-06-20', 'Y'),
(10, 2, 'ngadmin', '', '', '', '5282IMG_7265.JPG', '2017-06-20', '2017-06-20', 'Y'),
(11, 2, 'ngadmin', '', '', '', '9054IMG_7279.JPG', '2017-06-20', '2017-06-20', 'Y'),
(12, 2, 'ngadmin', '', '', '', '3889IMG_8677.JPG', '2017-06-20', '2017-06-20', 'Y'),
(13, 2, 'ngadmin', '', '', '', '1422IMG_8701.JPG', '2017-06-20', '2017-06-20', 'Y'),
(14, 2, 'ngadmin', '', '', '', '9926IMG_8705.JPG', '2017-06-20', '2017-06-20', 'Y'),
(15, 2, 'ngadmin', '', '', '', '3935IMG_8711.JPG', '2017-06-20', '2017-06-20', 'Y'),
(16, 2, 'ngadmin', '', '', '', '912IMG_8731.JPG', '2017-06-20', '2017-06-20', 'Y'),
(17, 2, 'ngadmin', '', '', '', '5663IMG_8732.JPG', '2017-06-20', '2017-06-20', 'Y'),
(18, 3, 'ngadmin', '', '', '', '712220160831_105301.jpg', '2017-06-20', '2017-06-20', 'Y'),
(19, 3, 'ngadmin', '', '', '', '53620160829_091340.jpg', '2017-06-20', '2017-06-20', 'Y'),
(20, 3, 'ngadmin', '', '', '', '27820160829_115003.jpg', '2017-06-20', '2017-06-20', 'Y'),
(21, 3, 'ngadmin', '', '', '', '464920160830_213314.jpg', '2017-06-20', '2017-06-20', 'Y'),
(22, 3, 'ngadmin', '', '', '', '13020160831_105005.jpg', '2017-06-20', '2017-06-20', 'Y'),
(23, 3, 'ngadmin', '', '', '', '371020160831_105048.jpg', '2017-06-20', '2017-06-20', 'Y'),
(24, 3, 'ngadmin', '', '', '', '274520160831_105100.jpg', '2017-06-20', '2017-06-20', 'Y'),
(25, 3, 'ngadmin', '', '', '', '7720160831_105136.jpg', '2017-06-20', '2017-06-20', 'Y'),
(26, 4, 'ngadmin', '', '', '', '7337IMG-20170418-WA0019.jpg', '2017-06-20', '2017-06-20', 'Y'),
(27, 4, 'ngadmin', '', '', '', '3185IMG-20170418-WA0024.jpg', '2017-06-20', '2017-06-20', 'Y'),
(28, 4, 'ngadmin', '', '', '', '4317IMG-20170418-WA0020.jpg', '2017-06-20', '2017-06-20', 'Y'),
(29, 4, 'ngadmin', '', '', '', '917IMG-20170418-WA0025.jpg', '2017-06-20', '2017-06-20', 'Y'),
(32, 2147483647, 'ngadmin', '', '', '', '56-DSC_0109.JPG', '2017-09-26', '2017-09-26', 'Y'),
(33, 2147483647, 'ngadmin', '', '', '', '75-DSC_0008.JPG', '2017-09-26', '2017-09-26', 'Y'),
(34, 2147483647, 'ngadmin', '', '', '', '29-DSC_0014.JPG', '2017-09-26', '2017-09-26', 'Y'),
(36, 2147483647, 'ngadmin', '', '', 'Pemberian Tumpeng Sebagai Tanda Kasih Kepada Staf Dinas Perhubungan Provinsi Jambi', '73-DSC_0123.JPG', '2017-09-26', '2017-09-26', 'Y'),
(37, 2147483647, 'ngadmin', '', '', 'Pemberian Tumpeng Sebagai Tanda Kasih Kepada Perwakilan PTT Dinas Perhubungan Provinsi Jambi', '25-DSC_0126.JPG', '2017-09-26', '2017-09-26', 'Y'),
(38, 2147483647, 'ngadmin', '', '', '', '91-DSC_0132.JPG', '2017-09-26', '2017-09-26', 'Y'),
(40, 2147483647, 'ngadmin', '', '', '', '28-DSC_0104.JPG', '2017-09-26', '2017-09-26', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `id_pangkat` int(2) NOT NULL,
  `pangkat` varchar(20) NOT NULL,
  `gol_ruang` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id_pangkat`, `pangkat`, `gol_ruang`) VALUES
(1, 'JURU MUDA ', 'I/a'),
(2, 'JURU MUDA TK.I', 'I/b'),
(3, 'JURU', 'I/c'),
(4, 'JURU TK.I', 'I/d'),
(5, 'PENGATUR MUDA', 'II/a'),
(6, 'PENGATUR MUDA TK.I', 'II/b'),
(7, 'PENGATUR', 'II/c'),
(8, 'PENGATUR TK.I', 'II/d'),
(9, 'PENATA MUDA', 'III/a'),
(10, 'PENATA MUDA TK.I', 'III/b'),
(11, 'PENATA', 'III/c'),
(12, 'PENATA TK.I ', 'III/d'),
(13, 'PEMBINA', 'IV/a'),
(14, 'PEMBINA TK.I', 'IV/b'),
(15, 'PEMBINA UTAMA MUDA', 'IV/c'),
(16, 'PEMBINA UTAMA MADYA', 'IV/d'),
(17, 'PEMBINA UTAMA', 'IV/e');

-- --------------------------------------------------------

--
-- Table structure for table `halamaniklan`
--

CREATE TABLE `halamaniklan` (
  `id_halamaniklan` int(2) NOT NULL,
  `nama_halamaniklan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `halamaniklan`
--

INSERT INTO `halamaniklan` (`id_halamaniklan`, `nama_halamaniklan`) VALUES
(1, 'Halaman Home');

-- --------------------------------------------------------

--
-- Table structure for table `halamanprofil`
--

CREATE TABLE `halamanprofil` (
  `id_halamanprofil` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `custom` text NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `text_foto` varchar(300) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanprofil`
--

INSERT INTO `halamanprofil` (`id_halamanprofil`, `judul`, `judul_seo`, `isi_halaman`, `custom`, `tanggal`, `tanggal_modif`, `gambar`, `text_foto`, `username`, `dibaca`, `jam`, `hari`, `aktif`) VALUES
(1, 'Sambutan Kepala Dinas', 'sambutan-kepala-dinas', '<p style=\"text-align: justify;\"><strong><em>Assalamu&rsquo;alaikum wa rahmatullahi wabarokatuh</em></strong></p>\r\n<p style=\"text-align: justify;\">Segala Puji Syukur kita panjatkan kehadirat Allah SWT, yang dengan rahmat-Nya telah mengantarkan Dinas Perhubungan&nbsp;Kab. Tanjung Jabung Timur&nbsp;semakin TUNTAS dalam menghadapi tantangan era globalisasi, terutama menghadapi penyelenggaraan pemerintahan yang transparan, efisien dan efektif melalui pemanfaatan Teknologi Informasi dan Komunikasi (TIK) berbasis Online / Website.</p>\r\n<p style=\"text-align: justify;\">Guna mengaju kepada Visi Dinas Perhubungan&nbsp;Kab. Tanjung Jabung Timur <strong>\"Terwujudnya Kab. Tanjung Jabung Timur Tuntas melalui penyelenggaraan sistem transportasi yang andal dalam rangka menunjang perekonomian daerah dan memiliki daya saing dalam satu kesatuan sistem transportasi nasional\" </strong>maka dengan itu untuk kesinambungan dan Pembangunan Dinas Perhubungan Kab. Tanjung Jabung Timur kedepannya.</p>\r\n<p style=\"text-align: justify;\">Semoga Teknologi Informasi dan Komunikasi ini dapat memberikan manfaat bagi masyarakat dalam pembangunan Kab. Tanjung Jabung Timur dan kami mengharapkan kritik dan saran yang membangun demi peningkatan pelayanan pada masyarakat.</p>\r\n<p style=\"text-align: justify;\"><em>Wassalamu&rsquo;alaikum wa rahmatullahi wabarokatuh</em></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">PLT. KEPALA DINAS PERHUBUNGAN</p>\r\n<p style=\"text-align: justify;\">Kab. Tanjung Jabung Timur</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong><u>Hadi Firdaus</u></strong></p>', '', '2015-06-02', '2019-06-23', '55defaultimagewide.jpg', '', 'ngadmin', 4682, '23:46:44', 'Selasa', 'Y'),
(2, 'Visi & Misi Dinas Perhubungan ', 'visi--misi-dinas-perhubungan-', '<p><strong>\"Terwujudnya Jambi Tuntas melalui penyelenggaraan sistem transportasi yang andal dalam rangka menunjang perekonomian daerah dan memiliki daya saing dalam satu kesatuan sistem transportasi nasional\"</strong></p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Meningkatkan penyediaan Infrastruktur Transportasi yang memiliki daya saing, terpadu didukung oleh sistem perencanaan yang berkelanjutan<br /><br /></li>\r\n<li>Meningkatkan kualitas pelayanan transportasi melalui pemeliharaan infrastruktur, pengembangan transportasi massal dan berwawasan lingkungan<br /><br /></li>\r\n<li>Meningkatkan penyelenggaraan Pelayanan Transportasi yang Efisien dan Efektif dalam rangka mewujudkan sistem transportasi yang terpadu, tertib, aman, lancar, nyaman, selamat dan terjangkau<br /><br /></li>\r\n<li>Memperluas jaringan pelayanan dan Penyediaan akses Transportasi untuk mendukung Distribusi Barang/Jasa melalui pengembangan transportasi multi moda<br /><br /></li>\r\n<li>Meningkatkan Akuntabilitas kinerja kelembagaan didukung oleh Sumber Daya Manusia yang kompeten, berkualitas, profesional dan menguasai teknologi</li>\r\n</ol>\r\n<p>&nbsp;</p>', '', '2015-06-03', '2017-05-09', '', '', 'ngadmin', 4429, '11:20:08', 'Rabu', 'Y'),
(5, 'Pelayanan', 'pelayanan', '<p><strong>BIDANG PERHUBUNGAN LAUT ANGKUTAN SUNGAI, DANAU DAN PENYEBERANGAN</strong></p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li><strong> PELAYANAN</strong></li>\r\n</ol>\r\n<p>DOKUMEN KAPAL DAN DOKUMEN PENGAWAKAN KAPAL SUNGAI DAN DANAU :</p>\r\n<ol>\r\n<li>SURAT UKUR</li>\r\n<li>SURAT PENDAFTARAN</li>\r\n<li>PAS SUNGAI DAN DANAU</li>\r\n<li>SERTIFIKAT KELAIKAN DAN KEBANGSAAN</li>\r\n<li>SURAT KETERANGAN KECAKAPAN</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li><strong> PERSYARATAN</strong></li>\r\n<li><strong>1</strong>.&nbsp;<strong>DOKUMEN KAPAL (BARU)</strong></li>\r\n</ol>\r\n<p>PERMOHONAN BERMETERAI 6000 DILAMPIRI :</p>\r\n<ol>\r\n<li>FOTOCOPY KARTU TANDA PENDUDUK (KTP) MASIH BERLAKU</li>\r\n<li>DESIGN KAPAL</li>\r\n<li>KWITANSI PEMBELIAN MESIN</li>\r\n<li>SURAT KETERANGAN TUKANG DIKETAHUI OLEH KADES/LURAH</li>\r\n<li>SURAT KETERANGAN DOMISILI PEMILIK KAPAL</li>\r\n<li>SURAT KUASA BERMETERAI 6000 APABILA PEMILIK KAPAL MEWAKILKAN</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"2\">\r\n<li><strong>2</strong>.&nbsp;<strong>DOKUMEN PENGAWAKAN BERMETERAI 6000 DILAMPIRI :</strong></li>\r\n<li>FOTOCOPY KARTU TANDA PENDUDUK</li>\r\n<li>SURAT KETERANGAN BERBADAN SEHAT OLEH DOKTER</li>\r\n<li>PASFOTO UKURAN 3 X 4 SEBANYAK 2 LEMBAR</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"3\">\r\n<li><strong>3</strong>.&nbsp;<strong>DOKUMEN KAPAL (PERPANJANGAN</strong>)</li>\r\n</ol>\r\n<p>PERMOHONAN BERMETERAI 6000 DILAMPIRI :</p>\r\n<ol>\r\n<li>FOTOCOPY KARTU TANDA PENDUDUK (KTP) YANG MASIH BERLAKU</li>\r\n<li>DOKUMEN KAPAL YANG AKAN/TELAH BERAKHIR MASA BERLAKU</li>\r\n<li>KWITANSI PEMBELIAN MESIN APABILA KAPAL GANTI MESIN</li>\r\n<li>BBNA 3 APABILA KAPAL DIBALIKNAMAKAN</li>\r\n<li>SURAT KUASA BERMETERAI 6000 APABILA PEMILIK KAPAL MEWAKILKAN KEPENGURUSAN</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"4\">\r\n<li><strong>4</strong>.&nbsp;<strong>DOKUMEN PENGAWASAN KAPAL SUNGAI DAN DANAU (PERPANJANGAN)</strong></li>\r\n</ol>\r\n<p>PERMOHONAN BERMETERAI 6000 DILAMPIRI</p>\r\n<ol>\r\n<li>SURAT KETERANGAN KECAKAPAN YANG TELAH HABIS MASA BERLAKU</li>\r\n<li>FOTOCOPY KARTU TANDA PENDUDUK (KTP)</li>\r\n<li>SURAT KETERANGAN BERBADAN SEHAT OLEH DOKTER</li>\r\n<li>PASFOTO UKURAN 3X 4 SEBANYAK 2 LEMBAR</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p><strong>III. PROSEDUR</strong></p>\r\n<p>DOKUMEN KAPAL DAN DOKUMEN PENGAWAKAN KAPAL SUNGAI DAN DANAU</p>\r\n<ol>\r\n<li>PERMOHONAN DIAJUKAN KEPADA&nbsp; KADIS PERHUBUNGAN PROVINSI JAMBI DAN MELAMPIRKAN PERSYARATAN</li>\r\n<li>TELITI, UJI DAN PERIKSA</li>\r\n<li>KONDISI KAPAL BAIK DAN LAIK DIOPERASIKAN</li>\r\n<li>DOKUMEN KAPAL DAN SURAT KETERANGAN KECAKAPAN DITERBITKAN</li>\r\n<li><strong> PENANDATANGANAN</strong></li>\r\n</ol>\r\n<p>DOKUMEN KAPAL DAN DOKUMEN PENGAWAKAN KAPAL SUNGAI DAN DANAU DITANDATANGANI OLEH KEPALA DINAS ATAS NAMA GUBERNUR</p>\r\n<p>&nbsp;</p>', '', '2017-07-19', '2017-07-19', '', '', 'ngadmin', 1351, '08:11:11', 'Senin', 'Y'),
(4, 'Sasaran & Tujuan', 'sasaran--tujuan', '<p><strong>Sasaran </strong></p>\r\n<ol>\r\n<li>Meningkatnya kuantitas dan kualitas sarana prasarana transportasi dan fasilitas keselamatan transportasi yang didukung oleh sistem perencanaan yang berkelanjutan.</li>\r\n<li>Meningkatnya kualitas pelayanan transportasi yang efektif, efisien dan taat aturan.</li>\r\n<li>Meningkatnya pelayanan jasa transportasi melalui pengembangan akses transportasi berbasis transportasi massal baik darat, SDP, Laut dan Udara.</li>\r\n<li>Meningkatnya akuntabilitas kinerja yang didukung oleh sumber daya manusia yang berkualitas,kompeten, menguasai teknologi dan memiliki daya saing.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p><strong>Tujuan </strong></p>\r\n<ol>\r\n<li>Meningkatnya kuantitas dan kualitas sarana prasarana, fasilitas keselamatan dan perencanaan transportasi.</li>\r\n<li>Meningkatnya penyelenggaraan pelayanan dan operasional transportasi yang aman, nyaman, lancar, tertib, teratur, andal, selamat, terjangkau, efektif dan efisien.</li>\r\n<li>Meningkatnya akuntabilitas kinerja dan kapabilitas sumber daya manusia menuju clean government dan good governance.</li>\r\n<li>Optimalisasi pemanfaatan sarana dan prasarana perhubungan.</li>\r\n</ol>\r\n<p>&nbsp;</p>', '', '2017-05-09', '2017-07-19', '7imagedefaultbig.jpg', 'sdfsfsdfsssss ', 'ngadmin', 10, '21:02:24', 'Jumat', 'Y'),
(6, 'Program Kegiatan', 'program-kegiatan', '<p><strong>I. PROGRAM PELAYANAN ADMINISTRASI PERKANTORAN</strong></p>\r\n<p>1. Kegiatan Penyediaan Jasa surat Menyurat<br />2. Kegiatan Jasa Komunikasi,Sumber Daya dan Air<br />3. Kegiatan Penyediaan Jasa Administrasi Keuangan<br />4. Kegiatan Penyediaan Jasa Kebersihan Kantor<br />5. Kegiatan Penyediaan Jasa Perbaikan Peralatan Kerja<br />6. Kegiatan Penyediaan Alat Tulis Kantor<br />7. Kegiatan Penyediaan Barang Cetak dan Penggandaan<br />8. Kegiatan Penyediaan Bahan Bacaan dan Peraturan Perundang - Undangan<br />9. Kegiatan Penyediaan Komponen Instalasi Listrik/ Penerangan Bangunan Kantor<br />10. Kegiatan Penyediaan Makanan dan Minuman<br />11. Kegiatan Rapat - rapat Koordinasi dan Konsultasi Keluar Daerah</p>\r\n<p>&nbsp;</p>\r\n<p><strong>II. PROGRAM PENINGKATAN SARANA DAN PRASARANA APARATUR</strong></p>\r\n<p>1. Pengadaan Kendaraan Dinas/ Operasional (Kendaraan Patroli roda 4, roda 2 dan mobil derek)<br />2. Pengadaan Peralatan Gedung Kantor<br />3. Kegiatan Pemeliharaan Rutin/ Berkala Gedung Kantor<br />4. Kegiatan Pemeliharaan Rutin/ Berkala Kendaraan Dinas Operasional&nbsp;<br />5.Kegiatan Rehabilitasi Sedang/ Berat Kantor</p>\r\n<p>&nbsp;</p>\r\n<p><strong>III. PROGRAM PENINGKATAN</strong>&nbsp;<strong>DISIPLIN APARATUR</strong></p>\r\n<p>1. Kegiatan Pengadaan Pakaian Dinas Beserta Perlengkapannya</p>\r\n<p>&nbsp;</p>\r\n<p><strong>IV. PROGRAM PENINGKATAN KAPASITAS SUMBER DAYA APARATUR</strong></p>\r\n<p>1. Pendidikan dan Pelatihan Formal</p>\r\n<p>&nbsp;</p>\r\n<p><strong>V.PROGRAM PEMBANGUNAN PRASARANA DAN FASILITAS PERHUBUNGAN</strong></p>\r\n<p>1. Kegiatan Perencanaan Pembangunan Prasarana dan Fasilitas Perhubungan<br />2. Penyusunan kebijakan, norma, standar dan prosedur Bidang Perhubungan<br />3. Koordinasi Dalam Pembangunan Prasarana dan Fasilitas Perhubungan<br />4. Kegiatan Sosialisasi Kebijakan di Bidang Perhubungan<br />5. Pembangunan Sarana dan Prasarana dan Pelayanan Perhubungan<br />6. Monitoring, Evaluasi dan Pelaporan</p>\r\n<p>&nbsp;</p>\r\n<p><strong>VI. PROGRAM REHABILITASI DAN PEMELIHARAAN PRASARANA DAN FASILITAS LLAJ</strong></p>\r\n<p>1. Kegiatan Rehabilitasi/Pemeliharaan Sarana dan Prasarana Perhubungan</p>\r\n<p>2. Kegiatan Rehabilitasi/Pemeliharaan Fasilitas Penunjang Keselamatan</p>\r\n<p>&nbsp;</p>\r\n<p><strong>VII. PROGRAM PENINGKATAN PELAYANAN ANGKUTAN</strong></p>\r\n<p>1. Kegiatan Peningkatan Disiplin Masyarakat Menggunakan Angkutan<br />2. Kegiatan Penciptaan Pelayanan Cepat, Tepat, Murah dan Mudah<br />3. Pengumpulan dan Analisis Data Base Pelayanan Angkutan<br />4. Pengembangan Sarana dan Prasarana Pelayanan Jasa Angkutan<br />5. Fasilitas Perijinan di Bidang Perhubungan<br />6. Pemilihan dan Pemberian Penghargaan Sopir/ Juru Mudik/ Awak Kendaraan Umum Teladan<br />7. Koordinasi Dalam Peningkatan Pelayanan Angkutan<br />8. Pengendalian Pengawasan Kegiatan Kelayakan Sertifikat Kapal Sungai<br />9. Kegiatan Monitoring, Evaluasi dan Pelaporan Bidang Perhubungan Laut dan SDP</p>\r\n<p>&nbsp;</p>\r\n<p><strong>VIII. PROGRAM PEMBANGUNAN SARANA DAN PRASARANA PERHUBUNGAN</strong></p>\r\n<p>1. Pembangunan Fasilitas Pelabuhan Laut Ujung Jabung<br />2. Peningkatan/ pengadaan/ pembangunan sarana dan prasarana transportasi udara/ koordinasi bandara perintis<br />3. Pembangun Gedung Kantor Dinas Perhubungan<br />4. Pembangunan Fasilitas dan Prasarana Transportasi Laut<br />5. Pembangunan Transportasi Multi Modal<br />6. Pembangunan Angkutan Umum Massal Aglomerasi<br />7. Pembangunan Fasilitas Penunjang Pelabuhan Muara Sabak</p>\r\n<p>&nbsp;</p>\r\n<p><strong>IX. PROGRAM PENGENDALIAN DAN PENGAMANAN LALU LINTAS</strong></p>\r\n<p>1. Pengadaan Rambu-Rambu Lalu Lintas<br />2. Pengadaan dan Pemasangan Marka Jalan<br />3. Pengadaan dan Pemasangan Pagar Pengaman Jalan<br />4. Kegiatan Keselamatan Transportasi Darat</p>\r\n<p>&nbsp;</p>\r\n<p><strong>X. PROGRAM PENINGKATAN KELAIKAN KENDARAAN BERMOTOR</strong></p>\r\n<p>1. Pengadaan Alat Pengujian Kendaraan Bermotor<br />2. Pelaksanaan Uji Petik Kendaraan Bermotor</p>\r\n<p>&nbsp;</p>', '', '2017-07-19', '2017-07-19', '', '', 'ngadmin', 2818, '08:11:40', 'Senin', 'Y'),
(7, 'Struktur Organisasi', 'struktur-organisasi', '', '', '2018-01-03', '2019-07-01', '53stuktur-o-2019.jpg', '', 'ngadmin', 3477, '08:12:04', 'Senin', 'Y'),
(8, 'Tugas Pokok & Fungsi', 'tugas-pokok--fungsi', '<ol>\r\n<li><strong> KEPALA DINAS</strong></li>\r\n</ol>\r\n<p>Kepala Dinas mempunyai tugas membantu Gubernur melaksanakan urusan Pemerintahan yang menjadi kewenangan daerah di bidang Perhubungan dan tugas pembantuan yang ditugaskan kepada daerah Provinsi sesuai dengan peraturan Perundang-undangan yang berlaku.</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud diatas, Kepala Dinas menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penyusunan rencana strategis dan rencana kerja dinas.</li>\r\n<li>Pelaksanaan rencana strategis dan dokumen pelaksanaan anggaran dinas.</li>\r\n<li>Penyusunan kebijakan, pedoman dan standar teknis pelaksanaan urusan di bidang Perhubungan.</li>\r\n<li>Pelaksanaan pembangunan, pengembangan, pembinaan, pemantauan, evaluasi dan pelaporan sistem Perhubungan.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan oleh Gubernur terkait dengan tugas dan fungsinya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"2\">\r\n<li><strong> SEKRETARIAT</strong></li>\r\n</ol>\r\n<p>Sekretariat mempunyai tugas membantu Kepala Dinas dalam rangka mengkoordinasikan penyiapan perumusan kebijakan, pelaksanaan kebijakan, evaluasi dan pelaporan pelaksanaan kebijakan, serta pembinaan dan pengembangan perencanaan program, keuangan dan aset serta administrasi umum dan kepegaiwan lingkup dinas dan sekretat.</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud diatas, Sekretariat menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penyusunan rencana strategis dan rencana kerja dan anggaran sekretariat.</li>\r\n<li>Pengoordinasian penyusunan kebijakan dan regulasi teknis bidang Perhubungan.</li>\r\n<li>Pengelolaan kepegawaian, keuangan dan barang dinas.</li>\r\n<li>Pembinaan dan pengembangan tenaga fungsional dan tenaga teknis di bidang Perhubungan.</li>\r\n<li>Pelaksanaan kegiatan kerumahtanggaan dan surat menyurat dinas.</li>\r\n<li>Pengelolaan kearsipan dinas.</li>\r\n<li>Pelaksanaan publikasi kegiatan dan pengaturan acara dinas.</li>\r\n<li>Pelaksanaan pemeliharaan dan perawatan prasarana dan sarana kantor dinas.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi sekretariat.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"3\">\r\n<li><strong> KEPALA SUBBAGIAN UMUM DAN KEPEGAWAIAN</strong></li>\r\n</ol>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud, Kasubbag Umum dan Kepegawaian menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penyusunan dan pelaksanaan bahan rencana strategis dan rencana kerja serta anggaran sekretariat sesuai dengan lingkup tugasnya.</li>\r\n<li>Pelaksanaan kegiatan pengelolaan surat menyurat dan kerumahtanggaan dinas.</li>\r\n<li>Pelaksanaan kegiatan penatausahaan kepegawaian dinas.</li>\r\n<li>Pelaksanaan kegiatan pengelolaan kearsipan dinas.</li>\r\n<li>Pelaksanaan kegiatan pemeliharaan kebersihan, keindahan, keamanan dan ketertiban dinas.</li>\r\n<li>Pelaksanaan pengelolaan ruang rapat atau ruang pertemuan dinas.</li>\r\n<li>Pelaksanaan penerimaan, penatausahaan, penyimpanan dan pendistribusikan prasarana dan sarana dinas.</li>\r\n<li>Pelaksanaan kegiatan pengembangan karir pegawai dinas.</li>\r\n<li>Penghimpunan, pengeolahan, penyajian dan pemeliharaan data, informasi dan dokumen kepegawai.</li>\r\n<li>Pelaksanaan perencanaan kebutuhan, penempatan, mutasi, pengembangan kompetensi pegawai.</li>\r\n<li>Pelaksanaan monitoring, pembinaan, pengendalian, pengembangan dan pelaporan kinerja dan disiplin pegawai.</li>\r\n<li>Pelaksanaan pengurusan hak, kesejahteraan, penghargaan, kenaikan pangkat, cuti dan pension pegawai.</li>\r\n<li>Penyiapan administrasi pengangkatan, pemindahan, dan pemberhentian pegawai dalam dan dari jabatan.</li>\r\n<li>Penyusunan analisis jabatan dan analisis beban kerja dinas.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelakasanaan tugas subbagian.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"4\">\r\n<li><strong> KEPALA SUBBAGIAN PROGRAM, KEUANGAN DAN ASET</strong></li>\r\n</ol>\r\n<p>&nbsp;Kasubbag Program, Keuangan dan Aset mempunyai tugas membantu sekretariat dalam rangka melaksanakan rencana dan program kesekretariatan, menghimpun dan menyusun standar operasional prosedur (SOP), standar pelayanan minimal (SPM), dan rencana kebutuhan barang milik daerah (RKBMD) / rencana kebutuhan pemeliharaan barang milik daerah (RKPBMD) serta menatausaha administrasi keuangan dan mengelola aset dinas.</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud diatas, Kasubbag program, Keuangan dan Aset menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penyusunan bahan rencana strategis dan rencana kerja dan anggaran sekretariat.</li>\r\n<li>Penghimpunan dan penyusunan SOP dan SPM dinas.</li>\r\n<li>Penyusunan RKBMD dan RKPBMD dinas.</li>\r\n<li>Pelaksanaan kegiatan pengelolaan keuangan dinas.</li>\r\n<li>Penghipunan dan penyusunan bahan pertanggungjawaban keuangan dinas.</li>\r\n<li>Penerimaan, penelitian dan pengujian kelengkapan serta pemprosesan surat permintaan pembayaran (SPP) yang diajukan oleh bendahara.</li>\r\n<li>Pelaksanaan proses penebitan SPM.</li>\r\n<li>Penghimpunan bahan dan penyusunan laporan keuangan dinas.</li>\r\n<li>Pelaksanaan analisis dan evaluasi nilai dan manfaat asset dinas.</li>\r\n<li>Pencatatan, pembukuab dan penyusunan akuntansi asset dinas.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas subbagian.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"5\">\r\n<li><strong> KEPALA BIDANG PENGEMBANGAN JARINGAN TRANSPORTASI</strong></li>\r\n</ol>\r\n<p>Kepala Bidang pengembangan Jaringan Transportasi mempunyai tugas membantu dinas dalam rangka melaksanakan, mengkoordinasikan, merumuskan pelaksanaan kegiatan dinas, musyawarah perencanaan pembangunan dan dokumen usulan pembangunan sarana dan prasarana serta penyusunan Rencana Strategis (RENSTRA), Laporan Kinerja Instansi Pemerintah (LAKIP), Laporan Kinerja Pemerintah Daerah (LKPD) dan Rencana Kerja (RENJA).</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud diatas, Kepala Bidang Pengembangan Jaringan Transpotasi menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Pengoordinasian, penyiapan rencana program kegiatan dan penyusunan dokumen pengadaan, perencanaan usulan pembangunan sarana dan prasarana transportasi dinas.</li>\r\n<li>Pengoordinasian, perumusan dan penyiapan rencana pemeliharaan dan pembangunan sarana dan prasarana transportasi serta pengembangan jaringan trasnportasi.</li>\r\n<li>Pengoordinasian, perumusan dan penyiapan bahan penelitian dan evaluasi pengembangan trasnportasi.</li>\r\n<li>Pengoordinasian dan penyusunan laporan tahunan, laporan pelenggaraan pemerintah daerah dan laporan keterangan pertanggungjawaban.</li>\r\n<li>Pengoordinasian dan penyusunan laporan pertanggungjawaban, serta penelaahan dan evaluasi dokumen teknis pembangunan infrastruktur transportasi.</li>\r\n<li>Pelaksanaan pengelolaan sistem informasi perhubungan.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi bidang.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"6\">\r\n<li><strong> KEPALA SEKSI PENDATAAN DAN INFORMASI</strong></li>\r\n</ol>\r\n<p>Kasi Pendataan dan Informasi mempunyai tugas membantu bidang dalam rangka menyiapkan, melaksanakan, mengolah data-data operasional di sektor perhubungan dan evaluasi terhadap penyelenggaraan pembangunan serta mengolah <em>Website</em> dan/atau <em>email</em> dinas.</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud diatas, Kepala Seksi Pendataan dan Informasi menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penghimpunan, Pengolahan dan penyusunan <em>Data Base </em>sector perhubungan.</li>\r\n<li>Pengembangan sistem informasi dinas.</li>\r\n<li>Pelaksanaan koordinasi penyusunan profil dinas.</li>\r\n<li>Penyiapan dan pengelolaan data dan informasi sector transportasi melalui</li>\r\n<li>Penyiapan, penyajian data informasi dan teknologi di sektor perhubungan.</li>\r\n<li>Pengelolaan dan pemeliaharaan operasional<em> website</em></li>\r\n<li>Penyusunan / penyiapan rencana dan penyampaian data dan informasi sarana dan prasarana transportasi.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi seksi pendataan dan pendataan dan informasi.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"7\">\r\n<li><strong> KEPALA SEKSI PERENCANAAN DAN PENGEMBANGAN JARINGAN</strong></li>\r\n</ol>\r\n<p>Kepala Seksi Perencanaan dan Pengembangan Jaringan mempunyai tugas membantu bidang dalam rangka melaksanakan koordinasi penyusunan perencanaan, dokumen pembangunan dan pengembangan sistem transportasi.</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud, kepala Seksi Perencanaan dan Pengembangan Jaringan menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penghimpunan dan penyiapan rencana program kegiatan dinas perhubungan.</li>\r\n<li>Penyiapan bahan penyusunan, penelitian dan penelaahan dokumen perencanaan pembangunan serta usulan pembangunan sarana dan prasarana transportasi.</li>\r\n<li>Penyiapan rencana pemeliharaan dan pembanguanan sarana dan prasarana transportasi</li>\r\n<li>Pelaksanan penyusunan bahan Rencana Strategis.</li>\r\n<li>Pelaksanaan penyususnan bahan telaahan staf sebagai bshsn pertimbangan pengambilan kebijakan.</li>\r\n<li>Pelaksanaan koordinasi dengan unit kerja lain.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi seksi</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"8\">\r\n<li><strong> KEPALA SEKSI EVALUASI, PELAPORAN DAN MONITORING</strong></li>\r\n</ol>\r\n<p>Kepala Seksi Evaluasi, Pelaporan dan Pengendalian mempunyai tugas menyiapkan, menghimpun dan menyusun laporan evaluasi dan monitoring kegiatan pembangunan serta penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah (LAKIP), LKPJ, LPPD, LPPK dan RKT/RENJA.</p>\r\n<p>Untuk melaksanakan tugas sebagaiamana dimaksud diatas, Seksi Evaluasi, Pelaporan dan Pengendalian meyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Pengumpulan dan pengolahan data dalam rangka penyususnan bahan evaluasi dan penyusunan pelaporan Dinas.</li>\r\n<li>Penganalisaan, pengkajian dan evaluasi data hasil pelaksanaan program kerja dinas.</li>\r\n<li>Penganalisaan dan penyusunan bahan Laporan Perkembangan Pelaksanaan Kegiatan (LPPK).</li>\r\n<li>Penganalisaan dan penyusunan bahan Laporan Akuntabilitas Kinerja Instansi Pemerintah (LAKIP) dan LPPD.</li>\r\n<li>Penyiapan dan penyusunan bahan laporan LKPJ, RENJA dan RKT Dinas Perhubungan.</li>\r\n<li>Penyiapan dan penyusunan bahan monitoring dan pelaporan program kerja Dinas serta program pembangunan secara periodik.</li>\r\n<li>Pelaksanaan koordinasi dengan unit kerja yang terkait dalam rangka pelaksanaan tugas.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi seksi evaluasi, Pelaporan dan Pengendalian.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<ol start=\"9\">\r\n<li><strong> KEPALA BIDANG PERHUBUNGAN DARAT DAN PERKERETAAPIAN</strong></li>\r\n</ol>\r\n<p>Kepala Bidang Perhubungan Darat dan Perkeretaapian mempunyai tugas menyelenggarakan pengkajian bahan kebijakan teknis dan fasilitas perhubungan darat dan perkeretaapian.</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud diatas, Bidang Perhubungan Darat dan Perkeretaapian menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penyelenggaraan pengkajian program kerja bidang</li>\r\n<li>Penyelenggaraan pengkajian bahan fasilitas angkutan darat dan perkeretaapian.</li>\r\n<li>Penyelenggaraan pengkajian bahan fasilitas teknis keselamatan.</li>\r\n<li>Penyelenggaraan pengkajian bahan koordinasi penyelenggaraan transportasi darat dan perkeretaapian.</li>\r\n<li>Pengoordinasian dan perumusan pengendalian dan pengawasan manajemen dan rekayasa lalu lintas.</li>\r\n<li>Perumusan dan pengkajian penetapan jaringan transportasi jalan dan perkeretaapian.</li>\r\n<li>Penyelenggaraan pelaksanaan pemberian rekomendasi perizinan, pelayanan dan pengendalian angkutan jalan.</li>\r\n<li>Peneyelenggaraan koordinasi dengan unit terkait.</li>\r\n<li>Penyelenggaraan telaahan staf sebagai bahan pertimbangan pengambilan kebijakan transportasi darat dan perkeretaapian.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi bidang.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"10\">\r\n<li><strong> KEPALA SEKSI LALU LINTAS DAN ANGKUATAN </strong></li>\r\n</ol>\r\n<p>Kepala Seksi Lalu Lintas dan Angkutan mempunyai tugas membantu bidang dalam rangka mengumpulkan dan mengelola data kecelakaan, menyelenggarakan operasional terminal penumpang dan angkutan jalan serta menyiapkan bahan kebijakan penetapan jaringan transportasi jalan dan perkeretaapian, rekomendasi perizinan serta pelayanan penyelenggaraan lalu lintas angkutan jalan dan perkeretaapian.</p>\r\n<p>Untuk melaksanakan tugas sebagimana dimaksud diatas, Seksi Lalu Lintas dan angkutan menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penyusunan bahan rencana strategis dan rencana kerja seksi lalu lintas dan angkutan.</li>\r\n<li>Penyusunan bahan kebijakan, pedoman dan standar teknis di bidang lau lintas dan angkutan jalan.</li>\r\n<li>Pelaksanaan pembinaan, pengembangan, pengendalian, monitoring dan evaluasi penyelenggaraan angkutan orang dalam trayek dan angkutan orang tidak dalam trayek.</li>\r\n<li>Penyusunan bahan rekomendasi kepada penyelenggara pelayanan terpadu dalam rangka penetapan dan pemberian sanksi atas pelanggaran / penyalahgunaan perizinan dan non perizinan angkutan orang.</li>\r\n<li>Penyiapan dan penyusunan bahan kebijakan penetapan tarif angkutan antar kota dalam provinsi jambi kelas ekonomi.</li>\r\n<li>Penyiapan, penyusunan rencana program penyelenggaraan operasional terminal tipe B.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi seksi lalu lintas dan angkutan.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"11\">\r\n<li><strong> KEPALA SEKSI PRASARANA</strong></li>\r\n</ol>\r\n<p>Kepala seksi Prasarana mempunyai tugas membantu bidang dalam rangka melaksanakan pemantauan, Penyusunan analisis unjuk kerja operasional prasarana dan pengawasan teknis prasarana lalu lintas jalan dan perkeretaapian.</p>\r\n<p>Untuk melaksanakan tugas sebagaimanan dimaksud diatas, Seksi Prasarana meneyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penyiapan penyususnan bahan rencana program pemantauan dan analisis kerja operasional prasarana jalan dan perkeretaapian.</li>\r\n<li>Penyususnan bahan rencana program usulan peningkatan kapasitas jalan, terminal dan kebutuhan lalu lintas.</li>\r\n<li>Perumusan bahan rencana program kebijakan pembangunan, pemeliharaan dan peningkatan prasarana lalu lintas dan angkutan jalan, manajemen dan rekayasa lalu lintas, terminal serta perkeretaapian.</li>\r\n<li>Penyiapan perumusan bahan rencana program perbaikan lokasi potensi kecelakan dan kemacetan lalu lintas di jalan provinsi.</li>\r\n<li>Penyiapan, penyususnan dan evaluasi bahan kebijakan pelaksanaan penyelenggaraan audit keselamatan jalan, inspeksi lalu lintas angkutan jalan (LLAJ) serta analisis dampak lalu lintas (Amdal Lalin).</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi seksi.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"12\">\r\n<li><strong> KEPALA SEKSI TEHNIK SARANA DAN KESELAMATAN</strong></li>\r\n</ol>\r\n<p>Kepala Seksi Tehnik Sarana dan Keselamatan mempunyai tugas membantu bidang dalam rangka melakukan pemantauan, evaluasoi dan analisis unjuk kerja sarana dan pengawasan teknis sarana serta keselamatan lalu lintas jalan dan perkeretaapian.</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud diatas, Seksi Tehnik Sarana dan Keselamatan menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penyusunan bahan kebijakan, pedoman dan standar teknis pelaksanaan tehnik sarana dan keselamatan.</li>\r\n<li>Penyiapan penyusunan bahan rencana program peningkatan sarana lalu lintas angkutan jalan dan perkeretaapian.</li>\r\n<li>Penyiapan perumusan bahan rencana program pengawasan teknis sarana dan keselamatan lalu lintas dan angkutan jalan di jalan provinsi dan perkeretaapian.</li>\r\n<li>Penyelenggaraan dan pengendalian kawasan daerah rawan kecelakaan (DRK) pada jalan provinsi.</li>\r\n<li>Perumusan dan penyusunan bahan-bahan pembinaan kebijakan standar teknis pelaksanaan penyelenggaraan pengujian berkala, industry karoseri.</li>\r\n<li>Penyiapan dan perumusan bahan rencana program evaluasi pelaksanaan penyelenggaraan pengujian kendaraan bermotor dan penyesuaian dimensi serta spesifikasi teknis kendaraan bermotor.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi seksi tehnik sarana dan keselamatan.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"13\">\r\n<li><strong> KEPALA BIDANG PERHUBUNGAN LAUT, SUNGAI DANAU DAN PENYEBERANGAN DAN UDARA</strong></li>\r\n</ol>\r\n<p>Kepala Bidang Perhubungan Laut, Sungai Danau dan Penyeberangan dan Udara mempunyai tugas membantu dinas dalam rangka melaksanakan koordinasi, perumusan dan pelaksanaan kebijakan teknis, pemberian bimbingan teknis dan evaluasi di bidang perhubungan laut, sungai danau dan penyeberangan dan udara.</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud diatas, Bidang Perhubungan Laut, Sungai Danau dan Penyeberangan dan Udara menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Perumusan kebijakan teknis penyelenggaraan jasa perhubungan laut, sungai danau dan penyeberangan dan udara.</li>\r\n<li>Penyelenggaraan pengkajian bahan fasilitas keselamatan pelayaran dan angkutan sungai danau dan penyeberangan.</li>\r\n<li>Pengoordinasian dan perumusan kebijakan teknis dan pemberian bimbingan terhadap penyelenggaraan angkutan laut, sungai danau dan penyeberangan dan udara.</li>\r\n<li>Pelaksanaan dan pemberian rekomendasi di bidang perhubungan laut, sungai danau dan penyeberanagan dan udara.</li>\r\n<li>Pelaksanaan pemantauan, pengawasan, pengendalian serta evaluasi penyelenggaraan angkutan laut, sungai danau dan penyeberangan dan udara.</li>\r\n<li>Penyiapan bahan telaahan staf sebagai bahan pertimbangan pengambilan kebijakan.</li>\r\n<li>Penyelenggaraan pelaporan dan evaluasi kegiatan bidang.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi bidang.</li>\r\n<li>Penyelenggaraan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"14\">\r\n<li><strong> KEPALA SEKSI ANGKUTAN SUNGAI DANAU DAN PENYEBERANGAN</strong></li>\r\n</ol>\r\n<p>Kepala Seksi Angkutan Sungai Danau dan&nbsp; Penyeberangan mempunyai tugas membantu bidang dalam rangka melaksanakan penyiapan dan perumusan bahan pembinaan dan pelayanan jasa angkutan sungai, danau dan penyeberangan.</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud diatas, Seksi Angkutan Sungai Danau dan Penyeberangan menyelenggarakan fungsi :</p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Penyiapan bahan perumusan kebijakan teknis angkutan sungai danau dan penyeberangan.</li>\r\n<li>Penyiapan bahan rekomendasi angkutan sungai danau dan penyeberangan.</li>\r\n<li>Penyelenggaraan dan penyiapan bahan bimbingan angkutan sungai danau dan penyeberangan.</li>\r\n<li>Penyiapan bahan pembinaan dan petunjuk teknis penyelenggaraan angkutan sungai danau dan penyeberangan.</li>\r\n<li>Penyiapan bahan penyusunan laporan dan evaluasi pelaksanaan kegiatan angkutan sungai danau dan penyeberangan.</li>\r\n<li>Penyiapan bahan rencana program kebutuhan rambu-rambu sungai.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi seksi angkutan sungai danau dan penyeberangan.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikann atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"15\">\r\n<li><strong> KEPALA SEKSI PERHUBUNGAN LAUT</strong></li>\r\n</ol>\r\n<p>Kepala Seksi Perhubungan laut mempunyai tugas membantu bidang dalam rangka melaksanakan membantu bidang dalam rangka penyiapan dan perumusan bahan pembinaan dan pelayanan jasa perhubungan laut.</p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud diatas, Seksi Perhubungan Laut menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>Penyiapan bahan perumusan kebijakn teknis penyelenggaraanperhubungan laut.</li>\r\n<li>Penyiapan bahan rekomendasi penyelenggaraan perhubungan laut.</li>\r\n<li>Penyiapan bahan bimbingan penyelenggaraan perhubungan laut.</li>\r\n<li>Penyiapan bahan pembinaan dan petunjuk teknis penyelenggaraan kegiatan perhubungan laut.</li>\r\n<li>Penyiapan bahan penyusunan laporan dan evaluasi pelaksanaan kegiatan perhubungan laut.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi seksi perhubungan laut.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol start=\"16\">\r\n<li><strong> KEPALA SEKSI PERHUBUNGAN UDARA</strong></li>\r\n</ol>\r\n<p>Kepala Seksi Perhubungan Udara mempunyai tugas membantu bidang dalam rangka melaksanakan penyelenggaraan dan perumusan kebijakan teknis bahan pembinaan dan pelayanan jasa perhubungan udara.</p>\r\n<p>Untuk menjalankan tugas sebagaimana dimaksud diatas, Seksi Perhubungan Udara menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penyiapan bahan perumusan kebijakan teknis penyelenggaraan perhubungan udara.</li>\r\n<li>Penyiapan bahan rekomendasi penyelenggaraan perhubungan udara.</li>\r\n<li>Penyiapan bahan bimbingan penyelenggaraan perhubungan udara.</li>\r\n<li>Penyiapan bahan pembinaan dan petunjuk teknis penyelenggaraan perhubungan udara.</li>\r\n<li>Penyiapan bahan penyusunan laporan dan evaluasi pelaksanaan kegiatan perhubungan udara.</li>\r\n<li>Pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi seksi perhubungan udara.</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan atasan sesuai dengan bidang tugasnya.</li>\r\n</ol>', '', '2017-07-19', '2017-08-07', '83image.jpg', '', 'ngadmin', 4078, '08:12:35', 'Senin', 'Y'),
(14, 'Sekretariat', 'sekretariat', '<div id=\"content\" class=\"site-content\">\r\n<div class=\"corp-container\">\r\n<div id=\"primary\" class=\"content-area\">\r\n<article id=\"post-260\" class=\"post-260 page type-page status-publish post\">\r\n<div class=\"entry-content\">\r\n<div id=\"pl-260\" class=\"panel-layout\">\r\n<div id=\"pg-260-1\" class=\"panel-grid panel-no-style\">\r\n<div id=\"pgc-260-1-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-260-1-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"2\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p><strong>TUGAS&nbsp;</strong></p>\r\n<p>Sekretariat melaksanakan tugas administrasi Dinas Perhubungan.</p>\r\n<p><strong>FUNGSI</strong></p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud pada ayat (1) Sekretariat menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>penyusunan rencana strategis dan rencana kerja dan anggaran Sekretariat;</li>\r\n<li>pelaksanaan rencana strategis dan dokumen pelaksanaan anggaran Sekretariat;</li>\r\n<li>pengkoordinasian penyusunan rencana strategis dan rencana kerja dan anggaran Dinas Perhubungan;</li>\r\n<li>pelaksanaan monitoring, pengendalian dan evaluasi rencana strategis, serta dokumen pelaksanaan anggaran Dinas Perhubungan oleh Unit Kerja Dinas Perhubungan;</li>\r\n<li>pengkoordinasian penyusunan kebijakan dan regulasi teknis bidang perhubungan;</li>\r\n<li>pemberian dukungan teknis kepada masyarakat dan perangkat daerah;</li>\r\n<li>pengelolaan kepegawaian, keuangan dan barang Dinas Perhubungan;</li>\r\n<li>pembinaan dan pengembangan tenaga fungsional dan tenaga teknis perhubungan;</li>\r\n<li>pelaksanaan kegiatan kerumahtanggaan dan surat menyurat Dinas Perhubungan;</li>\r\n<li>pengelolaan kearsipan Dinas Perhubungan;</li>\r\n<li>pelaksanaan publikasi kegiatan dan pengaturan acara Dinas Perhubungan;</li>\r\n<li>pelaksanaan pemeliharaan dan perawatan prasarana dan sarana kantor Dinas Perhubungan;</li>\r\n<li>pengelolaan teknologi informasi Dinas Perhubungan; dan</li>\r\n<li>pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi Sekretariat.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"pgc-260-1-1\" class=\"panel-grid-cell\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n</div>\r\n</div>\r\n</div>\r\n<footer id=\"colophon\" class=\"site-footer\">\r\n<div class=\"corp-container\">&nbsp;</div>\r\n</footer>', '', '2019-07-04', '2019-07-05', '11dsc_0319.jpg', 'Kegiatan harian BIDANG SEKRETARIAT Dinas Perhubungan Tanjabtim', 'ngadmin', 24, '13:33:36', 'Sabtu', 'Y'),
(12, 'Bidang Operasional', 'bidang-operasional', '<div id=\"pg-321-0\" class=\"panel-grid panel-no-style\">\r\n<div id=\"pgc-321-0-1\" class=\"panel-grid-cell\">\r\n<div id=\"panel-321-0-1-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"1\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"pg-321-1\" class=\"panel-grid panel-no-style\">\r\n<div id=\"pgc-321-1-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-321-1-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"2\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p><strong>TUGAS</strong></p>\r\n<p>Bidang Pengendalian dan Operasional mempunyai tugas melaksanakan kegiatan pengawasan, pengaturan dan pemanduan serta penegakan hukum.</p>\r\n<p><strong>FUNGSI&nbsp;</strong></p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud pada ayat (1) Bidang Pengendalian dan Operasional menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>penyusunan rencana strategis dan rencana kerja dan anggaran Bidang Pengendalian dan Operasional;</li>\r\n<li>pelaksanaan rencana strategis dan dokumen pelaksanaan anggaran Bidang Pengendalian dan Operasional;</li>\r\n<li>penyusunan kebijakan, pedoman dan standar teknis pengawasan, pengaturan dan pemanduan serta penegakan hukum;</li>\r\n<li>penegakan peraturan perundang-undangan di bidang perhubungan;</li>\r\n<li>pelaksanaan pengendalian lalu lintas angkutan jalan;</li>\r\n<li>pelaksanaan pengaturan dan pemanduan rute perjalanan pemerintah daerah dan tamu pemerintah daerah;</li>\r\n<li>pengkoordinasian lintas instasi yang berkaitan dengan pengawasan, pengaturan dan pemanduan serta penegakan hukum di bidang perhubungan; dan</li>\r\n<li>pelaporan dan pertanggungjawaban pelaksanaan tugas dan fungsi Bidang Pengendalian dan Operasional.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"pgc-321-1-1\" class=\"panel-grid-cell\">&nbsp;</div>\r\n</div>', '', '2019-06-27', '2019-07-04', '32img20190624wa0024.jpg', 'Rutinitas Apel Pagi Bidang Operasional Dinas Perhubungan Tanjabtim', 'ngadmin', 64, '10:22:59', 'Kamis', 'Y'),
(13, 'Bidang Lalu Lintas dan Angkutan', 'bidang-lalu-lintas-dan-angkutan', '<div id=\"pgc-273-1-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-273-1-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"2\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p><strong>TUGAS :</strong></p>\r\n<p>Bidang Lalu Lintas mempunyai tugas melaksanakan kegiatan manajemen rekayasa lalu lintas pada ruas jalan, simpang dan kawasan di dalam koridor angkutan massal, Mass Rapid Transit (MRT), Bus Rapid Transit (BRT) dan Perkeretaapian perkotaan, serta keselamatan dan teknik sarana.</p>\r\n<p><strong>FUNGSI :</strong></p>\r\n<p>Untuk melaksanakan tugas sebagaimana dimaksud pada ayat (1), Bidang Lalu Lintas menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>penyusunan rencana strategis dan rencana kerja serta anggaran Bidang Lalu Lintas;</li>\r\n<li>pelaksanaan rencana strategis dan dokumen pelaksanaan anggaran Bidang Lalu Lintas;</li>\r\n<li>penyusunan kebijakan, pedoman dan standar teknis pelaksanaan lalu lintas;</li>\r\n<li>penyusunan, pengkoordinasian dan pengembangan sistem transportasi perkotaan;</li>\r\n<li>pengaturan lalu lintas melalui penetapan rambu lalu lintas, marka jalan, road hump, deliniator, pita penggaduh, cermin lalu lintas, pulau lalu lintas, pembatas ketinggian kendaraan, pagar pengaman lalu lintas, guard rail dan pengarah pejalan kaki, jalur sepeda;</li>\r\n<li>pelaksanaan penyediaan, pembangunan, perawatan, pemeliharaan dan pembongkaran rambu lalu lintas, marka jalan, alat pengendali, pengaman pemakai jalan dan fasilitas pendukung lalu lintas;</li>\r\n<li>pelaksanaan pengawasan, pengendalian, monitoring dan evaluasi penetapan rambu lalu lintas, marka jalan, road hump, deliniator, pita penggaduh, cermin lalu lintas, pulau lalu lintas, pembatas ketinggian kendaraan, pagar pengaman lalu lintas, guard rail dan pengarah pejalan kaki, jalur sepeda;</li>\r\n<li>pelaksanakan perencanaan, pengaturan rekayasa lalu lintas pada ruas jalan, simpang dan kawasan di dalam koridor angkutan massal, Mass Rapid Transit (MRT), Bus Rapid Transit (BRT) dan perkeretaapian perkotaan.</li>\r\n<li>pelaksanaan rekomendasi Manajemen dan Rekayasa Lalu Lintas Jalan terhadap kegiatan tertentu yang langsung dan tidak langsung berhubungan dengan lalu lintas;</li>\r\n<li>pelaksanaan penelitian dan pengembangan sistem lalu lintas;</li>\r\n<li>pelaksanaan upaya keselamatan dan teknik sarana;</li>\r\n<li>pelaksanaan monitoring dan evaluasi kegiatan manajemen rekayasa lalu lintas, keselamatan dan teknik sarana; dan</li>\r\n<li>pelaporan dan pertanggung jawaban pelaksanaan tugas dan fungsi Bidang Lalu Lintas.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"pgc-273-1-1\" class=\"panel-grid-cell\">&nbsp;</div>', '', '2019-06-27', '2019-07-05', '81dsc_0329.jpg', 'Kegiatan harian Bidang Lalu Lintas dan Angkutan Dinas Perhubungan Tanjabtim', 'ngadmin', 24, '10:23:37', 'Kamis', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `text_foto` varchar(300) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `text_foto`, `username`, `dibaca`, `jam`, `hari`) VALUES
(1, 'Sasaran dan Tujuan', 'sasaran-dan-tujuan', '<p><strong>Sasaran&nbsp;</strong></p>\r\n<ol>\r\n<li>Meningkatnya kuantitas dan kualitas sarana prasarana transportasi dan fasilitas keselamatan transportasi yang didukung oleh sistem perencanaan yang berkelanjutan.</li>\r\n<li>Meningkatnya kualitas pelayanan transportasi yang efektif, efisien dan taat aturan.</li>\r\n<li>Meningkatnya pelayanan jasa transportasi melalui pengembangan akses transportasi berbasis transportasi massal baik darat, SDP, Laut dan Udara.</li>\r\n<li>Meningkatnya akuntabilitas kinerja yang didukung oleh sumber daya manusia yang berkualitas,kompeten, menguasai teknologi dan memiliki daya saing.&nbsp;</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p><strong>Tujuan&nbsp;</strong></p>\r\n<ol>\r\n<li>Meningkatnya kuantitas dan kualitas sarana prasarana, fasilitas keselamatan dan perencanaan transportasi.</li>\r\n<li>Meningkatnya penyelenggaraan pelayanan dan operasional transportasi yang aman, nyaman, lancar, tertib, teratur, andal, selamat, terjangkau, efektif dan efisien.</li>\r\n<li>Meningkatnya akuntabilitas kinerja dan kapabilitas sumber daya manusia menuju clean government dan good governance.</li>\r\n<li>Optimalisasi pemanfaatan sarana dan prasarana perhubungan.&nbsp;</li>\r\n</ol>', '2015-06-02', '', '', 'admin', 2960, '23:46:44', 'Selasa'),
(5, 'Program Kegiatan', 'program-kegiatan', '<p><strong>I. PROGRAM PELAYANAN ADMINISTRASI PERKANTORAN</strong></p>\r\n<p>1. Kegiatan Penyediaan Jasa surat Menyurat<br />2. Kegiatan Jasa Komunikasi,Sumber Daya dan Air<br />3. Kegiatan Penyediaan Jasa Administrasi Keuangan<br />4. Kegiatan Penyediaan Jasa Kebersihan Kantor<br />5. Kegiatan Penyediaan Jasa Perbaikan Peralatan Kerja<br />6. Kegiatan Penyediaan Alat Tulis Kantor<br />7. Kegiatan Penyediaan Barang Cetak dan Penggandaan<br />8. Kegiatan Penyediaan Bahan Bacaan dan Peraturan Perundang - Undangan<br />9. Kegiatan Penyediaan Komponen Instalasi Listrik/ Penerangan Bangunan Kantor<br />10. Kegiatan Penyediaan Makanan dan Minuman<br />11. Kegiatan Rapat - rapat Koordinasi dan Konsultasi Keluar Daerah</p>\r\n<p>&nbsp;</p>\r\n<p><strong>II. PROGRAM PENINGKATAN SARANA DAN PRASARANA APARATUR</strong></p>\r\n<p>1. Pengadaan Kendaraan Dinas/ Operasional (Kendaraan Patroli roda 4, roda 2 dan mobil derek)<br />2. Pengadaan Peralatan Gedung Kantor<br />3. Kegiatan Pemeliharaan Rutin/ Berkala Gedung Kantor<br />4. Kegiatan Pemeliharaan Rutin/ Berkala Kendaraan Dinas Operasional&nbsp;<br />5.Kegiatan Rehabilitasi Sedang/ Berat Kantor</p>\r\n<p>&nbsp;</p>\r\n<p><strong>III. PROGRAM PENINGKATAN</strong>&nbsp;<strong>DISIPLIN APARATUR</strong></p>\r\n<p>1. Kegiatan Pengadaan Pakaian Dinas Beserta Perlengkapannya</p>\r\n<p>&nbsp;</p>\r\n<p><strong>IV. PROGRAM PENINGKATAN KAPASITAS SUMBER DAYA APARATUR</strong></p>\r\n<p>1. Pendidikan dan Pelatihan Formal</p>\r\n<p>&nbsp;</p>\r\n<p><strong>V.PROGRAM PEMBANGUNAN PRASARANA DAN FASILITAS PERHUBUNGAN</strong></p>\r\n<p>1. Kegiatan Perencanaan Pembangunan Prasarana dan Fasilitas Perhubungan<br />2. Penyusunan kebijakan, norma, standar dan prosedur Bidang Perhubungan<br />3. Koordinasi Dalam Pembangunan Prasarana dan Fasilitas Perhubungan<br />4. Kegiatan Sosialisasi Kebijakan di Bidang Perhubungan<br />5. Pembangunan Sarana dan Prasarana dan Pelayanan Perhubungan<br />6. Monitoring, Evaluasi dan Pelaporan</p>\r\n<p>&nbsp;</p>\r\n<p><strong>VI. PROGRAM REHABILITASI DAN PEMELIHARAAN PRASARANA DAN FASILITAS LLAJ</strong></p>\r\n<p>1. Kegiatan Rehabilitasi/Pemeliharaan Sarana dan Prasarana Perhubungan</p>\r\n<p>2. Kegiatan Rehabilitasi/Pemeliharaan Fasilitas Penunjang Keselamatan</p>\r\n<p>&nbsp;</p>\r\n<p><strong>VII. PROGRAM PENINGKATAN PELAYANAN ANGKUTAN</strong></p>\r\n<p>1. Kegiatan Peningkatan Disiplin Masyarakat Menggunakan Angkutan<br />2. Kegiatan Penciptaan Pelayanan Cepat, Tepat, Murah dan Mudah<br />3. Pengumpulan dan Analisis Data Base Pelayanan Angkutan<br />4. Pengembangan Sarana dan Prasarana Pelayanan Jasa Angkutan<br />5. Fasilitas Perijinan di Bidang Perhubungan<br />6. Pemilihan dan Pemberian Penghargaan Sopir/ Juru Mudik/ Awak Kendaraan Umum Teladan<br />7. Koordinasi Dalam Peningkatan Pelayanan Angkutan<br />8. Pengendalian Pengawasan Kegiatan Kelayakan Sertifikat Kapal Sungai<br />9. Kegiatan Monitoring, Evaluasi dan Pelaporan Bidang Perhubungan Laut dan SDP</p>\r\n<p>&nbsp;</p>\r\n<p><strong>VIII. PROGRAM PEMBANGUNAN SARANA DAN PRASARANA PERHUBUNGAN</strong></p>\r\n<p>1. Pembangunan Fasilitas Pelabuhan Laut Ujung Jabung<br />2. Peningkatan/ pengadaan/ pembangunan sarana dan prasarana transportasi udara/ koordinasi bandara perintis<br />3. Pembangun Gedung Kantor Dinas Perhubungan<br />4. Pembangunan Fasilitas dan Prasarana Transportasi Laut<br />5. Pembangunan Transportasi Multi Modal<br />6. Pembangunan Angkutan Umum Massal Aglomerasi<br />7. Pembangunan Fasilitas Penunjang Pelabuhan Muara Sabak</p>\r\n<p>&nbsp;</p>\r\n<p><strong>IX. PROGRAM PENGENDALIAN DAN PENGAMANAN LALU LINTAS</strong></p>\r\n<p>1. Pengadaan Rambu-Rambu Lalu Lintas<br />2. Pengadaan dan Pemasangan Marka Jalan<br />3. Pengadaan dan Pemasangan Pagar Pengaman Jalan<br />4. Kegiatan Keselamatan Transportasi Darat</p>\r\n<p>&nbsp;</p>\r\n<p><strong>X. PROGRAM PENINGKATAN KELAIKAN KENDARAAN BERMOTOR</strong></p>\r\n<p>1. Pengadaan Alat Pengujian Kendaraan Bermotor<br />2. Pelaksanaan Uji Petik Kendaraan Bermotor</p>\r\n<p>&nbsp;</p>', '2017-06-20', '', '', 'ngadmin', 0, '14:53:03', 'Selasa'),
(2, 'Visi & Misi ', 'visi--misi-', '<p>\"Terwujudnya Jambi Tuntas melalui penyelenggaraan sistem transportasi yang andal dalam rangka menunjang perekonomian daerah dan memiliki daya saing dalam satu kesatuan sistem transportasi nasional\"</p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Meningkatkan penyediaan Infrastruktur Transportasi yang memiliki daya saing, terpadu didukung oleh sistem perencanaan yang berkelanjutan<br /><br /></li>\r\n<li>Meningkatkan kualitas pelayanan transportasi melalui pemeliharaan infrastruktur, pengembangan transportasi massal dan berwawasan lingkungan<br /><br /></li>\r\n<li>Meningkatkan penyelenggaraan Pelayanan Transportasi yang Efisien dan Efektif dalam rangka mewujudkan sistem transportasi yang terpadu, tertib, aman, lancar, nyaman, selamat dan terjangkau<br /><br /></li>\r\n<li>Memperluas jaringan pelayanan dan Penyediaan akses Transportasi untuk mendukung Distribusi Barang/Jasa melalui pengembangan transportasi multi moda<br /><br /></li>\r\n<li>Meningkatkan Akuntabilitas kinerja kelembagaan didukung oleh Sumber Daya Manusia yang kompeten, berkualitas, profesional dan menguasai teknologi&nbsp;</li>\r\n</ol>', '2015-06-03', '', '', 'admin', 2452, '11:20:08', 'Rabu'),
(4, 'Struktur Organisasi', 'struktur-organisasi', '<p>Struktur Organisasi Dinas Perhubungan Provinsi Jambi</p>', '2017-06-20', '1666New Struktur Organisasi.jpg', '', 'ngadmin', 13, '14:50:51', 'Selasa'),
(6, 'Layanan', 'layanan', '<p><strong>BIDANG PERHUBUNGAN LAUT ANGKUTAN SUNGAI, DANAU DAN PENYEBERANGAN</strong></p>\r\n<p><strong>I. PELAYANAN</strong></p>\r\n<p>&nbsp; &nbsp;DOKUMEN KAPAL DAN DOKUMEN PENGAWAKAN KAPAL SUNGAI DAN DANAU :</p>\r\n<p>1. SURAT UKUR</p>\r\n<p>2. SURAT PENDAFTARAN</p>\r\n<p>3. PAS SUNGAI DAN DANAU</p>\r\n<p>4. SERTIFIKAT KELAIKAN DAN KEBANGSAAN</p>\r\n<p>5. SURAT KETERANGAN KECAKAPAN</p>\r\n<p>&nbsp;</p>\r\n<p><strong>II. PERSYARATAN</strong></p>\r\n<p><strong>1</strong>.&nbsp;<strong>DOKUMEN KAPAL (BARU)</strong></p>\r\n<p>&nbsp; &nbsp; PERMOHONAN BERMETERAI 6000 DILAMPIRI :</p>\r\n<p>1. FOTOCOPY KARTU TANDA PENDUDUK (KTP) MASIH BERLAKU</p>\r\n<p>2. DESIGN KAPAL</p>\r\n<p>3. KWITANSI PEMBELIAN MESIN</p>\r\n<p>4. SURAT KETERANGAN TUKANG DIKETAHUI OLEH KADES/LURAH</p>\r\n<p>5. SURAT KETERANGAN DOMISILI PEMILIK KAPAL</p>\r\n<p>6. SURAT KUASA BERMETERAI 6000 APABILA PEMILIK KAPAL MEWAKILKAN</p>\r\n<p>&nbsp;</p>\r\n<p><strong>2</strong>.&nbsp;<strong>DOKUMEN PENGAWAKAN BERMETERAI 6000 DILAMPIRI :</strong></p>\r\n<p>1. FOTOCOPY KARTU TANDA PENDUDUK</p>\r\n<p>2. SURAT KETERANGAN BERBADAN SEHAT OLEH DOKTER</p>\r\n<p>3. PASFOTO UKURAN 3 X 4 SEBANYAK 2 LEMBAR</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3</strong>.&nbsp;<strong>DOKUMEN KAPAL (PERPANJANGAN</strong>)</p>\r\n<p>&nbsp; &nbsp; PERMOHONAN BERMETERAI 6000 DILAMPIRI :</p>\r\n<p>1. FOTOCOPY KARTU TANDA PENDUDUK (KTP) YANG MASIH BERLAKU</p>\r\n<p>2. DOKUMEN KAPAL YANG AKAN/TELAH BERAKHIR MASA BERLAKU</p>\r\n<p>3. KWITANSI PEMBELIAN MESIN APABILA KAPAL GANTI MESIN</p>\r\n<p>4. BBNA 3 APABILA KAPAL DIBALIKNAMAKAN</p>\r\n<p>5. SURAT KUASA BERMETERAI 6000 APABILA PEMILIK KAPAL MEWAKILKAN KEPENGURUSAN</p>\r\n<p>&nbsp;</p>\r\n<p><strong>4</strong>.&nbsp;<strong>DOKUMEN PENGAWASAN KAPAL SUNGAI DAN DANAU (PERPANJANGAN)</strong></p>\r\n<p>&nbsp; &nbsp; PERMOHONAN BERMETERAI 6000 DILAMPIRI</p>\r\n<p>1. SURAT KETERANGAN KECAKAPAN YANG TELAH HABIS MASA BERLAKU</p>\r\n<p>2. FOTOCOPY KARTU TANDA PENDUDUK (KTP)</p>\r\n<p>3. SURAT KETERANGAN BERBADAN SEHAT OLEH DOKTER</p>\r\n<p>4. PASFOTO UKURAN 3X 4 SEBANYAK 2 LEMBAR</p>\r\n<p>&nbsp;</p>\r\n<p><strong>III. PROSEDUR</strong></p>\r\n<p>&nbsp; &nbsp; &nbsp;DOKUMEN KAPAL DAN DOKUMEN PENGAWAKAN KAPAL SUNGAI DAN DANAU</p>\r\n<p>1. PERMOHONAN DIAJUKAN KEPADA&nbsp; KADIS PERHUBUNGAN PROVINSI JAMBI DAN MELAMPIRKAN PERSYARATAN</p>\r\n<p>2. TELITI, UJI DAN PERIKSA</p>\r\n<p>3. KONDISI KAPAL BAIK DAN LAIK DIOPERASIKAN</p>\r\n<p>4. DOKUMEN KAPAL DAN SURAT KETERANGAN KECAKAPAN DITERBITKAN</p>\r\n<p><strong>IV. PENANDATANGANAN</strong></p>\r\n<p>&nbsp; &nbsp; &nbsp; DOKUMEN KAPAL DAN DOKUMEN PENGAWAKAN KAPAL SUNGAI DAN DANAU DITANDATANGANI OLEH KEPALA DINAS ATAS NAMA GUBERNUR</p>\r\n<p>&nbsp;</p>', '2017-06-20', '', '', 'ngadmin', 3, '14:53:46', 'Selasa');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `kantor` varchar(200) NOT NULL,
  `twiter` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `foursquare` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `googleplus` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `title_bottom` varchar(200) NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `fax` varchar(200) NOT NULL,
  `gmap` text NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `logo` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `kantor`, `twiter`, `youtube`, `foursquare`, `instagram`, `googleplus`, `email`, `alamat`, `title_bottom`, `copyright`, `url`, `facebook`, `no_telp`, `fax`, `gmap`, `meta_deskripsi`, `meta_keyword`, `favicon`, `logo`) VALUES
(1, 'Dinas Pekerjaan Umum dan Perumahan Rakyat Kab. Tanjung Jabung Timur| PUPR.TANJABTIMKAB.GO.ID', 'Komp. Perkantoran Bukit Menderang', 'dishubtanjabtim', 'dishubtanjabtim', 'dishubtanjabtim', 'dishubtanjabtim', 'dishubtanjabtim', 'pupr@tanjabtimkab.go.id', 'Komp. Perkantoran Bukit Menderang', '', '', 'http://pupr.tanjabtimkab.go.id/', 'https://www.facebook.com/dishubtanjabtim', '(0740) 7370002', '', '', 'PUPR.TANJABTIMKAB.GO.ID merupakan Website Resmi Dinas Pekerjaan Umum dan Perumahan Rakyat Kab. Tanjung Jabung Timur', 'berita, tanjabtim, pupr tanjabtim, kadis pu tanjabtim, jalur darat sabak, jambi perhubungan, jembatan jambi, muara sabak, tanjabtim', '', '13logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `ijazah`
--

CREATE TABLE `ijazah` (
  `id_ijazah` int(2) NOT NULL,
  `nama_ijazah` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ijazah`
--

INSERT INTO `ijazah` (`id_ijazah`, `nama_ijazah`) VALUES
(1, 'SD / MI / Sederajat'),
(2, 'SMP / MTs / Sederajat'),
(3, 'SMA / SMK / Sederajat'),
(4, 'D1'),
(5, 'D2'),
(6, 'D3'),
(7, 'S1'),
(8, 'S2'),
(9, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id_iklan` int(4) NOT NULL,
  `id_mode` int(2) NOT NULL,
  `mobile` enum('Y','N') NOT NULL,
  `urutan_mobile` int(3) NOT NULL,
  `id_halamaniklan` int(2) NOT NULL,
  `id_posisiiklan` int(2) NOT NULL,
  `urutan` int(2) NOT NULL,
  `nama_iklan` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `keterangan` varchar(300) NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `tanggal_modif` date NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id_iklan`, `id_mode`, `mobile`, `urutan_mobile`, `id_halamaniklan`, `id_posisiiklan`, `urutan`, `nama_iklan`, `link`, `gambar`, `aktif`, `keterangan`, `tgl_posting`, `jam`, `tanggal_modif`, `tgl_mulai`, `tgl_akhir`, `username`) VALUES
(3, 0, 'Y', 0, 1, 2, 0, 'Hut Bhayangkara', '', '4947hutbhayangkara.jpg', 'N', '', '2019-06-23', '22:06:19', '2019-06-23', '2019-06-23', '2019-06-23', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `imageslide`
--

CREATE TABLE `imageslide` (
  `id_imageslide` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `imageslide`
--

INSERT INTO `imageslide` (`id_imageslide`, `judul`, `aktif`, `keterangan`, `gambar`, `urutan`, `tgl_upload`, `tgl_modif`, `username`) VALUES
(1, 'Kantor Bupati', 'Y', ' Selamat Datang Di Dinas perhubungan Kab. Tanjung Jabung Timur', '22slide2.jpg', 0, '2017-07-19', '2019-06-23', 'ngadmin'),
(2, 'Dinas Perhubungan Kab. Tanjabtim', 'Y', '\"Ciptakan Lalulintas yang Tertib, Lancar, Aman dan Nyaman\"', '223771design.jpg', 0, '2017-07-19', '2019-06-23', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `jabatanpegawai`
--

CREATE TABLE `jabatanpegawai` (
  `id_jabatan` int(5) NOT NULL,
  `nama_jabatanpegawai` varchar(150) NOT NULL,
  `jabatan_seo` varchar(150) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'TEKNIK INFORMATIKA'),
(2, 'REKAMEDIS');

-- --------------------------------------------------------

--
-- Table structure for table `katdokumen`
--

CREATE TABLE `katdokumen` (
  `id_katdokumen` int(3) NOT NULL,
  `nama_katdokumen` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `katdokumen`
--

INSERT INTO `katdokumen` (`id_katdokumen`, `nama_katdokumen`, `keterangan`) VALUES
(1, 'RPJMD', 'Statistik'),
(2, 'RKPJ', 'Pekerjaan Umum'),
(4, 'LAKIP', ''),
(7, 'KEUANGAN', ''),
(8, 'RKPD', ''),
(9, 'LKPJ', ''),
(10, 'RPJPD', ''),
(11, 'RTRW', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`) VALUES
(1, 'Ekonomi', 'ngadmin', 'ekonomi', 'Y'),
(2, 'Perhubungan', 'ngadmin', 'perhubungan', 'Y'),
(3, 'Berita Umum', 'ngadmin', 'berita-umum', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `katlaporan`
--

CREATE TABLE `katlaporan` (
  `id_katlaporan` int(3) NOT NULL,
  `nama_katlaporan` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `katlaporan`
--

INSERT INTO `katlaporan` (`id_katlaporan`, `nama_katlaporan`) VALUES
(1, 'SP2HP RESKRIM'),
(2, ' SP2HP LANTAS');

-- --------------------------------------------------------

--
-- Table structure for table `katprodukhukum`
--

CREATE TABLE `katprodukhukum` (
  `id_katprodukhukum` int(3) NOT NULL,
  `nama_katprodukhukum` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `katprodukhukum`
--

INSERT INTO `katprodukhukum` (`id_katprodukhukum`, `nama_katprodukhukum`, `keterangan`, `aktif`, `username`) VALUES
(1, 'Undang Undang', 'undang-undang', 'Y', ''),
(2, 'Peraturan Daerah', 'peraturan-presiden', 'Y', ''),
(4, 'Peraturan Pemerintah', 'peraturan-pemerintah', 'Y', ''),
(9, 'Peraturan Presiden', '', 'Y', 'ngadmin'),
(10, 'Peraturan Menteri', '', 'Y', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(3) NOT NULL,
  `namakegiatan` varchar(200) NOT NULL,
  `tgl_kegiatan` date NOT NULL,
  `pengisi` varchar(200) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `tempat` varchar(150) NOT NULL,
  `perihal` text NOT NULL,
  `jadwalkegiatan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `username` varchar(100) NOT NULL,
  `tgl_upload` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `namakegiatan`, `tgl_kegiatan`, `pengisi`, `waktu`, `tempat`, `perihal`, `jadwalkegiatan`, `gambar`, `aktif`, `username`, `tgl_upload`) VALUES
(1, 'Rapat Kerja dengan Divisi Hukum KPU seluruh Indonesia', '2015-04-21', '', '08.30 s/d Selesai', 'Kantor Dishub Prov. Jambi', ' Rapat Kerja', '<p>Penyuluhan/Pembekalan dalam rangka penyusunan dokumen hukum untuk penyelenggara KPU dalam rangka Pilkada serentak 2015</p>', '', 'N', 'ngadmin', '2015-06-02'),
(2, 'Umum - RDP dengan Komisi II DPR RI', '2015-04-05', '', '14.00 - selesai', 'Kantor Dishub Prov. Jambi', 'Rapat Umum', '<p>RDP dengan Komisi II DPR RI membahas Peraturan KPU terkait Pilkada serentak 2015</p>', '', 'N', 'ngadmin', '2015-06-02'),
(3, 'Umum - KPU RDP dengan Komisi II DPR RI', '2015-04-07', '', '14.00 - Selesai', 'Kantor Dishub Prov. Jambi', 'Rapat Umum', '<p>Rapat Dengar Pendapat KPU - Komisi II DPR RI terkait rancangan PKPU.</p>', '', 'N', 'ngadmin', '2015-06-03'),
(4, 'Penyerahan DAK2 dari Kemendagri kepada KPU', '2015-04-17', '', ' 09.00 - Selesai', 'Kantor Dishub Prov. Jambi', 'Rapat Kerja', '<p>Ketua Komisi Pemilihan Umum (KPU) RI, Husni Kamil Manik melakukan penandatanganan berita acara penyerahan Data Agregat Kependudukan per-Kecamatan (DAK2) dengan Menteri Dalam Negeri, Tjahjo Kumolo disaksikan oleh Ketua Badan Pengawas Pemilu, Muhammad. DAK2 tersebut akan dijadikan acuan oleh KPU dalam menentukan syarat dukungan calon kepala daerah dan wakil kepala daerah untuk perseorangan pada Pemilihan Gubernur dan Wakil Gubernur, Bupati dan Wakil Bupati, dan/atau Walikota dan Wakil Walikota serentak Tahun 2015, Jumat (17/4)</p>', '9Penyerahan DAK2.jpg', 'N', 'ngadmin', '2015-06-04'),
(6, 'Doa Bersama Untuk Pemilihan Serentak 2015', '2015-06-06', '', '19.00 - 21.00 WIB', 'Kantor Dishub Prov. Jambi', 'Doa Bersama', '', '', 'N', 'ngadmin', '2015-06-04'),
(7, 'Launching Pemilihan Serentak Provinsi Jambi 2015', '2015-06-07', '', '07.00 - 12.00 WIB', 'Kantor Dishub Prov. Jambi', '', '<p>- Launching Pemilihan Serentak 2015</p>\r\n<p>- Pengumuman Pemenang Sayembara Maskot dan Jingle Pemilihan 2015</p>', '', 'N', 'ngadmin', '2015-06-06'),
(8, 'PENUTUPAN KEGIATAN PEMILIHAN ABDI YASA TELADAN TINGKAT PROVINSI JAMBI TAHUN 2017', '2017-08-31', '', '10.00 WIB s/d Selesai', 'Royal Garden Resort Jambi', 'Penutupan Kegiatan Pemilihan Abdi Yasa Teladan Tingkat Provinsi Jambi Tahun 2017', '', '', 'Y', 'ngadmin', '2015-08-20'),
(9, 'PEMBUKAAN KEGIATAN PEMILIHAN ABDI YASA TELADAN TINGKAT PROVINSI JAMBI TAHUN 2017', '2017-08-28', '', '09.00 WIB s/d Selesai', 'Royal Garden Resort Jambi', 'Pembukaan Kegiatan Pemilihan Abdi Yasa Teladan Tingkat Provinsi Jambi Tahun 2017', '', '', 'Y', 'ngadmin', '2015-08-20'),
(10, 'HARHUBNAS', '2017-09-17', '', '', 'Kantor Dishub Prov. Jambi', 'Hari Perhubungan Nasional', '', '', 'Y', 'ngadmin', '2016-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `idlevel` int(2) NOT NULL,
  `namalevel` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`idlevel`, `namalevel`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'view');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id_link` int(3) NOT NULL,
  `nama_link` varchar(150) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id_link`, `nama_link`, `aktif`) VALUES
(1, 'dari Kategori Berita', 'Y'),
(2, 'dari Item Berita', 'Y'),
(4, 'dari Kategori Produk Hukum/Peraturan', 'Y'),
(5, 'dari Album Photo', 'Y'),
(6, 'dari Pengumuman', 'Y'),
(9, 'dari Halaman Profil', 'Y'),
(12, 'Custom Link', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `link--`
--

CREATE TABLE `link--` (
  `id_link` int(3) NOT NULL,
  `sub_link` int(2) NOT NULL,
  `nama_link` varchar(150) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link--`
--

INSERT INTO `link--` (`id_link`, `sub_link`, `nama_link`, `aktif`) VALUES
(1, 0, 'dari Kategori Berita', 'Y'),
(2, 1, 'dari Item Berita', 'Y'),
(3, 0, 'dari Halaman Profil', 'Y'),
(12, 0, 'Custom Link', 'Y'),
(4, 0, 'Dari Kategori Produk Hukum', 'N'),
(5, 0, 'Dari Item Produk Hukum', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `link2`
--

CREATE TABLE `link2` (
  `id_link` int(3) NOT NULL,
  `nama_link` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link2`
--

INSERT INTO `link2` (`id_link`, `nama_link`) VALUES
(1, 'dari Kategori Berita'),
(2, 'dari Item Berita'),
(4, 'dari Kategori Produk Hukum/Peraturan'),
(5, 'dari Album Photo'),
(6, 'dari Pengumuman'),
(9, 'dari Halaman Profil'),
(12, 'Custom Link');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `id_jurusan`, `alamat`) VALUES
('TI102131', 'DESI HANDAYANI', 2, 'RANGKASBITUNG'),
('TI102132', 'NURIS AKBAR', 1, 'aceh'),
('TI102133', 'MUHAMMAD HAFIDZ MUZAKI', 1, 'CIMAHI'),
('TI102134', 'IRMA MAULIANA', 1, 'ACEH TAMIANG');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `id_position` int(3) NOT NULL,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `css` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `id_position`, `nama_menu`, `link`, `aktif`, `urutan`, `tgl_posting`, `username`, `keterangan`, `css`) VALUES
(3, 0, 2, 'PROFIL', '', 'Y', 1, '0000-00-00', 'ngadmin', '', ''),
(6, 0, 2, 'BERITA', 'berita', 'Y', 7, '0000-00-00', 'ngadmin', '', ''),
(7, 0, 2, 'BIDANG', 'profil/detail/14/sekretariat', 'Y', 2, '0000-00-00', 'ngadmin', '', ''),
(8, 0, 2, 'PRODUK HUKUM', 'http://jdih.tanjabtimkab.go.id', 'Y', 3, '0000-00-00', 'ngadmin', '', ''),
(9, 0, 2, 'UNIT PENGELOLA', '', 'N', 6, '0000-00-00', 'ngadmin', '', ''),
(11, 0, 2, 'ALAT KELENGKAPAN', '', 'N', 4, '0000-00-00', 'ngadmin', '', ''),
(12, 0, 2, 'GALERI', 'galeri', 'Y', 10, '0000-00-00', 'ngadmin', '', ''),
(15, 0, 4, 'Home', '', 'N', 15, '0000-00-00', 'ngadmin', '', ''),
(16, 0, 4, 'Tentang Dishub Prov. Jambi', '', 'N', 0, '0000-00-00', 'ngadmin', '', ''),
(17, 0, 4, 'Sitemap', '', 'N', 0, '0000-00-00', 'ngadmin', '', ''),
(18, 0, 2, 'INFORMASI', '', 'Y', 9, '0000-00-00', 'ngadmin', '', ''),
(19, 0, 2, 'PENGUMUMAN', 'pengumuman', 'Y', 11, '0000-00-00', 'ngadmin', '', ''),
(20, 0, 2, 'ANDALALIN', 'profil/detail/9/andalalin-dinas-perhubungan-provinsi-jambi', 'N', 12, '0000-00-00', 'ngadmin', '', ''),
(21, 0, 2, 'DOWNLOAD', '', 'N', 0, '2017-08-10', 'ngadmin', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `menuadmin`
--

CREATE TABLE `menuadmin` (
  `idmenu` int(5) NOT NULL,
  `namamenu` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `level` varchar(200) NOT NULL,
  `bagian` varchar(10) NOT NULL,
  `urutan` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuadmin`
--

INSERT INTO `menuadmin` (`idmenu`, `namamenu`, `link`, `aktif`, `level`, `bagian`, `urutan`) VALUES
(1, 'Home', 'media.php?module=home', 'N', 'admin,user,view', '', 1),
(2, 'Menu Backend', '#', 'Y', 'admin', '', 3),
(5, 'Manajemen', '#', 'Y', 'admin,user', '', 2),
(6, 'Report/Laporan', '#', 'N', 'admin,user,view', '', 14),
(30, 'Database Kepegawaian', '?module=pegawai', 'Y', 'admin,user,view', '', 6),
(36, 'Peraturan/Produk Hukum', '#', 'Y', 'admin,user', '', 10),
(37, 'Menu Frontend', '', 'Y', 'admin', '', 4),
(38, 'Content Frontend', '', 'Y', 'admin,user', '', 5),
(39, 'Database Umum', '', 'N', 'admin,user', '', 8),
(40, 'Peraturan/Produk Hukum', '', 'N', 'admin,user', '', 15),
(41, 'Anggota Dewan', '', 'Y', 'admin,user', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `menu_position`
--

CREATE TABLE `menu_position` (
  `id_posisi` int(4) NOT NULL,
  `nama_posisi` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `tgl_upload` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_position`
--

INSERT INTO `menu_position` (`id_posisi`, `nama_posisi`, `keterangan`, `username`, `tgl_upload`) VALUES
(2, 'Top Menu Main Menu', 'Top Menu warna biru', 'ngadmin', '2013-09-05'),
(4, 'Bottom Menu', 'Menu Bawah', 'ngadmin', '2013-09-05'),
(5, 'Left Menu (Menu Kiri)', 'Pilih Menu Kiri', 'admin', '2014-02-25'),
(6, 'Right Menu (Menu Kanan)', 'Pilih Menu Kanan', 'admin', '2014-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `tgl_posting` date NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `publish`, `status`, `aktif`, `urutan`, `tgl_posting`, `keterangan`, `username`) VALUES
(1, 'Modul Berita', 'berita', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(2, 'Modul Kategori Berita', 'kategori', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(3, 'Modul Tagging', 'tag', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(4, 'Modul Polling', 'polling', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(5, 'Modul Banner', 'iklan', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(6, 'Modul Filter Berita', 'filterberita', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(8, 'Modul Foto Kegiatan', 'fotoberita', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(9, 'Modul Users', 'users', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(10, 'Modul Identitas Website', 'identitas', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(11, 'Modul Menu Front-End', 'menu', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(12, 'Modul Sub Menu Front-End', 'submenu', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(13, 'Modul Sub Submenu Front-End', 'subsubmenu', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(14, 'Modul Halaman Profil', 'halamanprofil', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(15, 'Modul Pengumuman', 'pengumuman', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(16, 'Modul Produk Hukum', 'produkhukum', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(17, 'Modul Kategori Produk Hukum', 'katprodukhukum', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(18, 'Modul Artikel', 'artikel', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(19, 'Modul Weblink', 'weblink', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(20, 'Modul Pengaduan Online', 'pengaduan', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(21, 'Modul Telpon Penting', 'telpon', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(22, 'Modul Banner', 'iklan', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(23, 'Modul File Download', 'download', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(24, 'Modul Polling Online', 'polling', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(25, 'Modul Video', 'video', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(3) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `id_pangkat` varchar(5) NOT NULL,
  `tmtpangkat` date NOT NULL,
  `id_jabatan` int(5) NOT NULL,
  `tmtjabatan` date NOT NULL,
  `masa_bulan` varchar(5) NOT NULL,
  `masa_tahun` varchar(5) NOT NULL,
  `namalatihan` varchar(100) NOT NULL,
  `bulanlatihan` varchar(4) NOT NULL,
  `tahunlatihan` year(4) NOT NULL,
  `jamlatihan` varchar(5) NOT NULL,
  `pendidikan` varchar(200) NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `id_tingkat` varchar(5) NOT NULL,
  `kelamin` enum('L','P') NOT NULL,
  `mutasi` varchar(200) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `no_tgl_lahir` enum('Y','N') NOT NULL,
  `no_tmtpangkat` enum('Y','N') NOT NULL,
  `no_tmtjabatan` enum('Y','N') NOT NULL,
  `no_latihan` enum('Y','N') NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pend` int(2) NOT NULL,
  `nama_pend` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pend`, `nama_pend`) VALUES
(1, 'Belum Sekolah/Tidak Sekolah'),
(2, 'SD / SDLB / MI / Paket A'),
(3, 'SMP / SMPLB / MTs / Paket B'),
(4, 'SMA / SMK / MA / Paket C'),
(5, 'D1'),
(6, 'D2'),
(7, 'D3'),
(8, 'S1'),
(9, 'S2'),
(10, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `judulpengaduan` varchar(100) NOT NULL,
  `lembaga` varchar(200) NOT NULL,
  `pesan` text NOT NULL,
  `jawaban` text NOT NULL,
  `ip` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `jam` time NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `nama`, `email`, `alamat`, `judulpengaduan`, `lembaga`, `pesan`, `jawaban`, `ip`, `tanggal`, `aktif`, `jam`, `keterangan`) VALUES
(9, 'Johnk155', 'johnk184@gmail.com', 'Hello my family member! I want to say that this article is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', 'Mohon TIndak Oknum Dishub atas nama yu**', 'teuewroo', 'Hello my family member! I want to say that this article is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', 'is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', '191.37.33.78', '2016-10-26', 'Y', '23:42:04', ''),
(10, '1', 'sample@email.tst', '1', 'Mohon Petugas Dishub di alokasikan daerah simpang kawat sore hari', '1', '1', 'is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', '202.67.42.29', '2016-12-13', 'Y', '21:51:17', ''),
(11, 'Johnk713', 'johnk38@gmail.com', 'sdsd', 'Banyak Petugas Dishub yang melakukan Pungli di Terminal', 'oiwropee', 'ggg', 'gggg', '88.198.151.153', '2016-12-15', 'Y', '03:36:27', 'gggg');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_pengumuman` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_pengumuman` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sumber` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `text_foto` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `file1` int(3) NOT NULL,
  `file2` int(3) NOT NULL,
  `file3` int(3) NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `username`, `judul`, `isi_pengumuman`, `hari`, `tanggal`, `tanggal_pengumuman`, `jam`, `gambar`, `sumber`, `text_foto`, `dibaca`, `aktif`, `file1`, `file2`, `file3`, `keterangan`) VALUES
(10, 'ngadmin', 'Pengumuman Pelaksanaan Seleksi CPNS', '<p>Pelaksanan Seleksi Calon Pegawai Negeri Sipil (CPNS) di Lingkungan Kementerian Perhubungan Formasi Tahun Anggaran 2017</p>\r\n<p>Selengkapnya dapat diunduh <span style=\"color: #00ffff;\"><a style=\"color: #00ffff;\" href=\"http://dephub.go.id/public/files/uploads/posts/posts/postbody/pengumuman-cpns-kemenhub-2017.pdf\">disini</a></span></p>', '', '2017-09-06', '2017-09-06', '07:47:02', '', 'http://www.dephub.go.id', '', 1400, 'Y', 0, 0, 0, ''),
(11, 'ngadmin', 'Rencana Penempatan Kebutuhan Pegawai Negeri Sipil Kemenhub', '<p>Rencana Penetapan Kebutuhan Pegawai Negeri Sipil Di Lingkungan Kementerian Perhubungan</p>\r\n<p>Selengkapnya unduh<span style=\"color: #0000ff;\"> <a style=\"color: #0000ff;\" href=\"http://www.dephub.go.id/public/files/uploads/posts/posts/postbody/rincian-penetapan-kebutuhan-pegawai-negeri-sipil.pdf\">disini</a></span></p>\r\n<div class=\"clear clearfix\">&nbsp;</div>', '', '2017-09-06', '2017-09-06', '09:15:28', '', 'http://www.dephub.go.id', '', 760, 'Y', 0, 0, 0, ''),
(7, 'ngadmin', 'Undang-Undang Republik Indonesia Nomor 10 Tahun 2016', '<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: small;\"><strong>Jambi, kpud-jambiprov.go.id </strong>- Pemerintah pada tanggal 1 Juli 2016 telah mengeluarkan Undang-Undang Republik Indonesia Nomor 10 Tahun 2016 tentang Perubahan Kedua Atas Undang-Undang Nomor 1 Tahun 2015 Tentang Penetapan Peraturan Pemerintah Pengganti Undang-Undang Nomor 1 Tahun 2014 Tentang Pemilihan Gubernur, Bupati, dan Waikota Menjadi Undang-Undang.</span></p>', 'Kamis', '2016-07-14', '2016-07-14', '10:40:07', '', '', '', 6759, 'Y', 16, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `polling`
--

CREATE TABLE `polling` (
  `id_polling` int(5) NOT NULL,
  `pertanyaan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jam` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `polling`
--

INSERT INTO `polling` (`id_polling`, `pertanyaan`, `tgl_posting`, `aktif`, `username`, `jam`) VALUES
(413, 'Bagaimana Menurut Anda Informasi Yang kami Sediakan?', '2014-03-02', 'Y', 'ngadmin', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pollingpilihan`
--

CREATE TABLE `pollingpilihan` (
  `id_pollingpilihan` int(5) NOT NULL,
  `id_polling` int(3) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pollingpilihan`
--

INSERT INTO `pollingpilihan` (`id_pollingpilihan`, `id_polling`, `pilihan`, `rating`, `aktif`) VALUES
(1, 413, 'Sangat Lengkap', 2024, 'Y'),
(2, 413, 'Lengkap', 6, 'Y'),
(3, 413, 'Tidak lengkap', 223, 'Y'),
(4, 413, 'Sangat Tidak Lengkap', 195, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `posisiiklan`
--

CREATE TABLE `posisiiklan` (
  `id_posisiiklan` int(2) NOT NULL,
  `id_halamaniklan` int(3) NOT NULL,
  `nama_posisiiklan` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posisiiklan`
--

INSERT INTO `posisiiklan` (`id_posisiiklan`, `id_halamaniklan`, `nama_posisiiklan`, `aktif`) VALUES
(1, 1, 'IKLAN KD[1]', 'Y'),
(2, 1, 'IKLAN KD[2]', 'Y'),
(3, 1, 'IKLAN KD[3]', 'Y'),
(4, 1, 'IKLAN KD[4]', 'Y'),
(5, 1, 'IKLAN KD[5]', 'Y'),
(6, 2, 'KAT-DETAIL KD[1]', 'Y'),
(7, 2, 'KAT-DETAIL KD[2]', 'Y'),
(8, 2, 'KAT-DETAIL KD[3]', 'Y'),
(9, 2, 'KAT-DETAIL KD[4]', 'Y'),
(10, 2, 'KAT-DETAIL KD[5]', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `produkhukum`
--

CREATE TABLE `produkhukum` (
  `id_produkhukum` int(3) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `tahun` year(4) NOT NULL,
  `keterangan` text NOT NULL,
  `metode_link` int(2) NOT NULL,
  `id_katprodukhukum` int(2) NOT NULL,
  `nama_file` varchar(300) NOT NULL,
  `link_file` varchar(300) NOT NULL,
  `tgl_upload` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `sumber` varchar(100) NOT NULL,
  `dibaca` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `dl` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produkhukum`
--

INSERT INTO `produkhukum` (`id_produkhukum`, `judul`, `tahun`, `keterangan`, `metode_link`, `id_katprodukhukum`, `nama_file`, `link_file`, `tgl_upload`, `tanggal_modif`, `sumber`, `dibaca`, `username`, `aktif`, `dl`) VALUES
(1, 'PERATURAN PEMERINTAH REPUBLIK INDONESIA NOMOR PP 6 TAHUN 2017', 2017, 'Tanggal Disahkan: 20 Februari 2017 Tanggal Berlaku: 21 Februari 2017\r\nPeraturan Pemerintah\r\n    [T.Perkretaapian]\r\n\r\nPUU         : PP 6 Tahun 2017\r\n\r\nAbstrak :\r\n\r\nPerubahan Atas Peraturan Pemerintah Nomor 56 Tahun 2009 Tentang Penyelenggaraan Perkeretaapian\r\n\r\n\r\n', 0, 4, '34pp_nomor_6_tahun_2017.pdf', 'http://jdih.dephub.go.id/assets/uudocs/pp/2017/PP_Nomor_6_Tahun_2017.pdf', '2017-09-06', '2017-09-06', '', '148', 'ngadmin', 'Y', ''),
(2, 'PERATURAN PRESIDEN RI NOMOR 16 TAHUN 2017', 2017, 'Tanggal Disahkan: 20 Februari 2017 Tanggal Berlaku: 23 Februari 2017\r\nPeraturan Presiden\r\n    [Transportasi Laut]\r\n\r\nPUU         : Perpres 16 Tahun 2017\r\n\r\nAbstrak :\r\n\r\nKebijakan Kelautan Indonesia ', 0, 9, '', 'http://jdih.dephub.go.id/assets/uudocs/perpres/2017/PERPRES_16_Tahun_2017.pdf', '2017-09-06', '2017-09-06', '', '111', 'ngadmin', 'Y', ''),
(3, 'PERATURAN PRESIDEN RI NOMOR 49 TAHUN 2017', 2017, 'Tanggal Disahkan: 3 Mei 2017 Tanggal Berlaku: 8 Mei 2017\r\nPeraturan Presiden\r\n    [T.Perkretaapian]\r\n\r\nPUU         : Perpres 49 Tahun 2017\r\n\r\nAbstrak :\r\n\r\nPerubahan Kedua atas Peraturan Presiden Nomor 98 Tahun 2015 tentang Percepatan Penyelenggaraan Kereta Api Ringan/Light Rail Transit Terintegrasi di Wilayah Jakarta, Bogor, Depok, dan Bekasi', 0, 9, '', 'http://jdih.dephub.go.id/assets/uudocs/perpres/2017/Perpres_49_Tahun_2017.pdf', '2017-09-06', '2017-09-06', '', '288', 'ngadmin', 'Y', ''),
(4, 'PERATURAN PRESIDEN RI NOMOR 57 TAHUN 2017', 2017, 'Tanggal Disahkan: 30 Mei 2017 Tanggal Berlaku: 6 Juni 2017\r\nPeraturan Presiden\r\n    [Transportasi Laut]\r\n\r\nPUU         : Perpres 57 Tahun 2017\r\n\r\nAbstrak :\r\n\r\nPengesahan Protocol Of 1988 Relating To The International Convention For The Safety Of Life At Sea, 1974 (Protokol 1988 terkait dengan Konvensi Internasional untuk Keselamatan Jiwa di Laut, 1974)\r\n\r\n', 0, 9, '', 'http://jdih.dephub.go.id/assets/uudocs/perpres/2017/img-704154116.pdf', '2017-09-06', '2017-09-06', '', '651', 'ngadmin', 'Y', ''),
(5, 'PERATURAN PRESIDEN REPUBLIK INDONESIA NOMOR 58 TAHUN 2017', 2017, 'Tanggal Disahkan: 15 Juni 2017 Tanggal Berlaku: 16 Juni 2017\r\nPeraturan Presiden\r\n    []\r\n\r\nPUU         : Perpres 58 Tahun 2017\r\n\r\nAbstrak :\r\n\r\nPerubahan Atas Peraturan Presiden Nomor 3 Tahun 2016 tentang Percepatan Pelaksanaan Proyek Strategis Nasional\r\n\r\n', 0, 9, '', 'http://jdih.dephub.go.id/assets/uudocs/perpres/2017/Peraturan_Presiden_Nomor_58_Tahun_2017.pdf', '2017-09-06', '2017-09-06', '', '457', 'ngadmin', 'Y', ''),
(6, 'PERATURAN PRESIDEN NOMOR 65 TAHUN 2017', 2017, 'Tanggal Disahkan: 17 Juli 2017 Tanggal Berlaku: 17 Juli 2017\r\nPeraturan Presiden\r\n    [Penunjang]\r\n\r\nPUU         : Perpres 65 Tahun 2017\r\n\r\nAbstrak :\r\n\r\nPerubahan Kedua atas Peraturan Presiden Nomor 49 Tahun 2012 tentang Kepaniteraan dan Sekretariat Jenderal Mahkamah Konstitusi\r\n\r\n', 0, 9, '', 'http://jdih.dephub.go.id/assets/uudocs/perpres/2017/Perpres_Nomor_65_Tahun_2017.pdf', '2017-09-06', '2017-09-06', '', '858', 'ngadmin', 'Y', ''),
(7, 'PERATURAN PRESIDEN NOMOR 68 TAHUN 2017', 2017, 'Tanggal Disahkan: 18 Juli 2017 Tanggal Berlaku: 18 Juli 2017\r\nPeraturan Presiden\r\n    [Penunjang]\r\n\r\nPUU         : Perpres 68 Tahun 2017\r\n\r\nAbstrak :\r\n\r\nTunjangan Jabatan Fungsional Analis Kebijakan', 0, 9, '', 'http://jdih.dephub.go.id/assets/uudocs/perpres/2017/Perpres_Nomor_68_Tahun_2017.pdf', '2017-09-06', '2017-09-06', '', '787', 'ngadmin', 'Y', ''),
(8, 'PERATURAN PRESIDEN REPUBLIK INDONESIA NOMOR 70 TAHUN 2017', 2017, 'Tanggal Disahkan: 18 Juli 2017 Tanggal Berlaku: 21 Juli 2017\r\nPeraturan Presiden\r\n    [Transportasi Laut]\r\n\r\nPUU         : Perpres 70 Tahun 2017\r\n\r\nAbstrak :\r\n\r\nPenyelenggaraan Kewajiban Pelayanan Publik Untuk Angkutan Barang Dari Dan Ke Daerah Tertinggal, Terpencil, Terluar, Dan Perbatasan', 0, 9, '', 'http://jdih.dephub.go.id/assets/uudocs/perpres/2017/img-728105458.pdf', '2017-09-06', '2018-01-31', '', '522', 'ngadmin', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `sambutan`
--

CREATE TABLE `sambutan` (
  `id_sambutan` int(2) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `isi_sambutan` text NOT NULL,
  `link` varchar(300) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `tgl_update` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sambutan`
--

INSERT INTO `sambutan` (`id_sambutan`, `judul`, `isi_sambutan`, `link`, `nama`, `gambar`, `tgl_update`, `tgl_posting`, `username`, `aktif`) VALUES
(1, 'KATA SAMBUTAN', 'Bissmillahhirohmannirohhim, marilah kita selalu memanjatkan Puji Syukur kehadirat Allah SWT karena atas izinNya jualah Website Dinas Pekerjaan Umum dan Perumahan Rakyat Pemerintah Kabupaten Tanjung Jabung Timur dapat terlaksana sebagaimana yang kita harapkan.', '', 'RISDIANSYAH, ST.MM - Kepala Dinas', '2018profile.jpg', '2019-07-20', '2019-07-20', 'ngadmin', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id_submenu` int(5) NOT NULL,
  `nama_submenu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_submenu` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_menu` int(5) NOT NULL,
  `urutan` int(3) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `tgl_posting` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `css` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_submenu`, `nama_submenu`, `link_submenu`, `id_menu`, `urutan`, `aktif`, `tgl_posting`, `username`, `keterangan`, `css`) VALUES
(3, 'UP Pengujian Kendaraan Bermotor', '', 9, 0, 'N', '0000-00-00', 'ngadmin', '', ''),
(4, 'UP Perparkiran', '', 9, 0, 'N', '0000-00-00', 'ngadmin', '', ''),
(5, 'UP Terminal Angkutan Jalan', '', 9, 0, 'N', '0000-00-00', 'ngadmin', '', ''),
(6, 'Sambutan Kepala', 'profil/detail/1/sambutankepala', 3, 0, 'Y', '0000-00-00', 'ngadmin', 'Assalamuâ€™alaikum wa rahmatullahi wabarokatuh\r\n\r\nSegala Puji Syukur kita panjatkan kehadirat Allah SWT, yang dengan rahmat-Nya telah mengantarkan Dinas Perhubungan Provinsi Jambi semakin berkembang dalam menghadapi tantangan era globalisasi, terutama menghadapi penyelenggaraan pemerintahan yang transparan, efisien dan efektif melalui pemanfaatan Teknologi Informasi dan Komunikasi (TIK).\r\n\r\nMelalui visinya mewujudkan penyelenggaraan pelayanan publik melalui peningkatan pemanfaatan teknologi informasi dan komunikasi, Dinas Perhubungan Provinsi Jambi berusaha untuk memenuhi akan kebutuhan infrastruktur TIK. Selain memenuhi kebutuhan infrastruktur jaringan Dinas Perhubungan juga membangun sistem aplikasi guna mendukung penyebaran informasi kepada masyarakat. Melalui media informasi dan komunikasi ini diharapkan mampu menjembatani dan menampung aspirasi masyarakat Kota Jambi menuju masyarakat informasi.\r\n\r\nAkhirnya, semoga yang telah kami berikan ini bermanfaat bagi masyarakat Kota Jambi dan kami mengharap kritik dan saran yang membangun demi peningkatan pelayanan pada masyarakat.\r\n\r\nWassalamuâ€™alaikum wa rahmatullahi wabarokatuh\r\n\r\nPlt. KEPALA DINAS\r\nttd\r\n\r\nDARMA M, ATD, DESS', ''),
(10, 'Bidang Operasional', 'profil/detail/12/bidang-operasional', 7, 5, 'Y', '0000-00-00', 'ngadmin', '', ''),
(11, 'Bidang Lalu Lintas dan Angkutan', 'profil/detail/13/bidang-lalu-lintas-dan-angkutan', 7, 5, 'Y', '0000-00-00', 'ngadmin', '', ''),
(12, 'Badan Legislasi', '', 7, 6, 'N', '0000-00-00', 'ngadmin', '', ''),
(14, 'Undang-undang', 'peraturan/kategori/1/undang-undang', 8, 0, 'N', '0000-00-00', 'ngadmin', '', ''),
(15, 'Peraturan Daerah', 'peraturan/kategori/2/peraturan-daerah', 8, 0, 'N', '0000-00-00', 'ngadmin', '', ''),
(16, 'Peraturan Pemerintah', 'http://jdih.dephub.go.id/produk_hukum/timeline/Peraturan%20Pemerintah', 8, 0, 'N', '0000-00-00', 'ngadmin', '', ''),
(17, 'Berita Umum', 'kategori/berita-umum', 6, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(18, 'Berita Perhubungan', 'kategori/perhubungan', 6, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(19, 'Galeri Foto', 'galeri', 12, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(20, 'Galeri Video', 'video', 12, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(21, 'Agenda Kegiatan', 'kegiatan', 18, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(35, 'Data Pegawai', 'pegawai', 7, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(23, 'UP Angkutan Sekolah', '', 9, 0, 'N', '0000-00-00', 'ngadmin', '', ''),
(24, 'Sekretariat', 'profil/detail/14/sekretariat', 7, 2, 'Y', '0000-00-00', 'ngadmin', '', ''),
(25, 'Link Terkait', 'weblinks', 18, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(26, 'Pengaduan Masyarakat', 'pengaduan/data', 18, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(27, 'e-Polling', 'polling', 18, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(28, 'Visi & Misi', 'profil/detail/2/visimisidinasperhubunganprovinsijambi', 3, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(29, 'Struktur Organisasi', 'profil/detail/7/struktur-organisasi', 3, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(30, 'Tugas Pokok & Fungsi', 'profil/detail/8/tugas-pokok--fungsi', 3, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(31, 'Sejarah', '', 3, 0, 'N', '0000-00-00', 'ngadmin', '', ''),
(33, 'Program Kegiatan', 'profil/detail/6/programkegiatan', 3, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(34, 'Layanan', 'profil/detail/5/Pelayanan', 3, 0, 'Y', '0000-00-00', 'ngadmin', '', ''),
(36, 'Database', 'Database', 21, 0, 'Y', '2017-08-11', 'ngadmin', '', ''),
(37, 'Peraturan Presiden', 'http://jdih.dephub.go.id/produk_hukum/timeline/Peraturan%20Presiden', 8, 0, 'N', '2017-09-06', 'ngadmin', '', ''),
(38, 'Peraturan Menteri', 'http://jdih.dephub.go.id/produk_hukum/timeline/Peraturan%20Menteri', 8, 0, 'N', '2017-09-06', 'ngadmin', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `submenuadmin`
--

CREATE TABLE `submenuadmin` (
  `idsubmenu` int(5) NOT NULL,
  `id_menuadmin` int(5) NOT NULL,
  `namasubmenu` varchar(100) NOT NULL,
  `linksubmenu` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `urutan` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenuadmin`
--

INSERT INTO `submenuadmin` (`idsubmenu`, `id_menuadmin`, `namasubmenu`, `linksubmenu`, `level`, `aktif`, `urutan`) VALUES
(1, 2, 'Menu Utama Admin', '?module=menuadmin', 'admin', 'Y', 1),
(2, 2, 'Sub Menu Administrator', '?module=submenuadmin', 'admin', 'Y', 2),
(219, 30, 'Jabatan Pegawai', '?module=jabatanpegawai', 'admin', 'Y', 93),
(121, 5, 'Backup Database', '?module=backup', 'admin', 'Y', 16),
(207, 38, 'Pengaduan Online', '?module=pengaduan', 'admin', 'Y', 82),
(148, 5, 'Manejemen User', '?module=user', 'admin,user', 'Y', 25),
(136, 5, 'Profil Institusi', '?module=identitas', 'admin', 'Y', 20),
(161, 5, 'Manajemen Modul', '?module=modul', 'admin', 'Y', 38),
(162, 30, 'Data Pegawai', '?module=pegawai', 'admin,user', 'Y', 39),
(215, 38, 'Banner Web', '?module=iklan', 'admin', 'Y', 89),
(212, 36, 'Data Produk Hukum', '?module=produkhukum', 'admin,user', 'Y', 86),
(213, 36, 'Kategori Produk Hukum', '?module=katprodukhukum', 'admin', 'Y', 87),
(214, 38, 'Telp Penting', '?module=telppenting', 'admin', 'Y', 88),
(180, 37, 'Menu Frontend (Lvl 1)', '?module=menu', 'admin', 'Y', 57),
(181, 37, 'Sub Menu Frontend (Lvl 2)', '?module=submenu', 'admin', 'Y', 58),
(182, 37, 'Sub Sub Menu Frontend (Lvl 3)', '?module=subsubmenu', 'admin', 'Y', 59),
(183, 38, 'Berita', '?module=berita', 'admin,user', 'Y', 60),
(184, 38, 'Kategori Berita', '?module=kategori', 'admin', 'Y', 61),
(186, 38, 'File Download', '?module=download', 'admin,user', 'Y', 63),
(187, 38, 'Image Slide', '?module=slideimage', 'admin', 'Y', 64),
(188, 38, 'Polling', '?module=polling', 'admin', 'Y', 65),
(189, 38, 'Jadwal Kegiatan', '?module=kegiatan', 'admin,user', 'Y', 66),
(190, 38, 'Weblink', '?module=weblink', 'admin,user', 'Y', 67),
(191, 38, 'Halaman Profil', '?module=halamanstatis', 'admin,user', 'Y', 68),
(192, 38, 'Album Photo', '?module=album', 'admin,user', 'Y', 69),
(193, 38, 'Gallery Photo', '?module=galerifoto', 'admin,user', 'Y', 70),
(217, 38, 'Video Youtube', '?module=video', 'admin,user', 'Y', 91),
(218, 38, 'Pengumuman', '?module=pengumuman', 'admin,user', 'Y', 92),
(220, 40, 'Kategori Produk Hukum', '?module=katprodukhukum', 'admin,user', 'Y', 95),
(221, 40, 'Data Peraturan/Produk Hukum', '?module=produkhukum', 'admin,user', 'Y', 96),
(222, 41, 'Data Anggota Dewan', '?module=dewan', 'admin,user', 'Y', 97),
(225, 41, 'Dapil', '?module=dapil', 'admin,user', 'Y', 100),
(224, 41, 'Data Fraksi', '?module=fraksi', 'admin,user', 'Y', 99);

-- --------------------------------------------------------

--
-- Table structure for table `subsubmenu`
--

CREATE TABLE `subsubmenu` (
  `id_subsubmenu` int(5) NOT NULL,
  `nama_subsubmenu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_subsubmenu` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_menu` int(5) NOT NULL,
  `id_submenu` int(11) NOT NULL,
  `urutan` int(2) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `tgl_posting` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `css` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subsubmenuadmin`
--

CREATE TABLE `subsubmenuadmin` (
  `id_subsubmenuadmin` int(5) NOT NULL,
  `nama_subsubmenu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_subsubmenu` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_menuadmin` int(3) NOT NULL,
  `id_submenuadmin` int(3) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  `trending` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `jam` time NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`, `trending`, `jam`, `tgl_upload`, `tgl_modif`, `aktif`) VALUES
(1, 'Jambi Tuntas 2021', 'ngadmin', 'jambi-tuntas-2021', 0, 'Y', '07:17:08', '2017-07-19', '2017-07-19', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `telpon`
--

CREATE TABLE `telpon` (
  `id_telpon` int(3) NOT NULL,
  `nama_telpon` varchar(150) NOT NULL,
  `no_telpon` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_upload` date NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `telpon`
--

INSERT INTO `telpon` (`id_telpon`, `nama_telpon`, `no_telpon`, `alamat`, `website`, `email`, `keterangan`, `aktif`, `urutan`, `tgl_upload`, `username`) VALUES
(1, 'Pemadam Kebakaran', '0741 - 113/41-171', '', '', '', '', 'Y', 0, '2017-06-20', 'ngadmin'),
(2, 'Gangguan PLN', '123/ 0741 -667-710~12', '', '', '', '', 'Y', 0, '2017-06-20', 'ngadmin'),
(3, 'RSUD Raden Mataher', '0741 - 65959', '', '', '', '', 'Y', 0, '2017-06-20', 'ngadmin'),
(4, 'Gangguan PDAM', '24-400, 32-932', '', '', '', '', 'Y', 0, '2017-06-20', 'ngadmin'),
(5, 'UGD RS Bratanata (DKT)', '34-566', '', '', '', '', 'Y', 0, '2017-06-20', 'ngadmin'),
(6, 'Penjagaan Polda Jambi', '534-117', '', '', '', '', 'Y', 0, '2017-06-20', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `desktop` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `desktop`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(16, 'N', 'Mobile Templates', 'ngadmin', 'bermultimedia.com', 'templates/jambinews-mobile', 'N'),
(17, 'Y', 'Jambi News', 'ngadmin', 'Johny Truman', 'templates/jambinews', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tingkatpendidikan`
--

CREATE TABLE `tingkatpendidikan` (
  `id_pend` int(2) NOT NULL,
  `nama_pend` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tingkatpendidikan`
--

INSERT INTO `tingkatpendidikan` (`id_pend`, `nama_pend`) VALUES
(1, 'SD / SDLB / MI '),
(2, 'SMP / SMPLB / MTs '),
(3, 'SMA / SMK / MA '),
(4, 'D1'),
(5, 'D2'),
(6, 'D3'),
(7, 'S1'),
(8, 'S2'),
(9, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id` int(3) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `kontak` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL,
  `blokir` enum('Y','N') NOT NULL DEFAULT 'N',
  `id_session` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `id`, `nama_lengkap`, `email`, `kontak`, `alamat`, `jabatan`, `level`, `blokir`, `id_session`, `tanggal`, `jam`, `keterangan`) VALUES
('ngadmin', '202cb962ac59075b964b07152d234b70', 0, 'Administrator', 'bermultimedia@gmail.com', '082371377379', '', 'Super Administrator', 'admin', 'N', '03e2f3b205cb8ac91d5b45c66334f9cbngadmin', '2017-05-03', '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(100) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, '202cb962ac59075b964b07152d234b70polsekwolo', 5),
(2, '202cb962ac59075b964b07152d234b70polsekwolo', 6),
(3, '202cb962ac59075b964b07152d234b70polsekwolo', 20),
(4, '202cb962ac59075b964b07152d234b70polsekwolo', 26),
(12, '202cb962ac59075b964b07152d234b70polsekwolo', 75),
(6, '202cb962ac59075b964b07152d234b70polsekwolo', 32),
(7, '202cb962ac59075b964b07152d234b70polsekwolo', 52),
(8, '202cb962ac59075b964b07152d234b70polsekwolo', 62),
(10, '202cb962ac59075b964b07152d234b70polsekwolo', 25),
(11, '202cb962ac59075b964b07152d234b70polsekwolo', 58),
(13, '202cb962ac59075b964b07152d234b70polsekwolo', 61),
(21, '4badf1df5359a9d738e0a407fd14f979teknis', 60),
(19, '4badf1df5359a9d738e0a407fd14f979teknis', 52),
(20, '4badf1df5359a9d738e0a407fd14f979teknis', 55),
(31, '4badf1df5359a9d738e0a407fd14f979teknis', 19),
(23, '4badf1df5359a9d738e0a407fd14f979teknis', 6),
(24, '4badf1df5359a9d738e0a407fd14f979teknis', 61),
(25, '4badf1df5359a9d738e0a407fd14f979teknis', 62),
(33, '4badf1df5359a9d738e0a407fd14f979teknis', 78),
(32, '4badf1df5359a9d738e0a407fd14f979teknis', 77),
(28, '4badf1df5359a9d738e0a407fd14f979teknis', 54),
(29, '4badf1df5359a9d738e0a407fd14f979teknis', 58),
(30, '4badf1df5359a9d738e0a407fd14f979teknis', 59),
(34, '3c197e18974f655184cde224c285b8aasdm', 6),
(35, '3c197e18974f655184cde224c285b8aasdm', 19),
(36, '3c197e18974f655184cde224c285b8aasdm', 77),
(37, '3c197e18974f655184cde224c285b8aasdm', 23),
(38, '3c197e18974f655184cde224c285b8aasdm', 24),
(39, '3c197e18974f655184cde224c285b8aasdm', 25),
(40, '3c197e18974f655184cde224c285b8aasdm', 52),
(41, '3c197e18974f655184cde224c285b8aasdm', 54),
(42, '3c197e18974f655184cde224c285b8aasdm', 55),
(43, '3c197e18974f655184cde224c285b8aasdm', 58),
(44, '3c197e18974f655184cde224c285b8aasdm', 59),
(45, '3c197e18974f655184cde224c285b8aasdm', 60),
(46, '3c197e18974f655184cde224c285b8aasdm', 61),
(47, '3c197e18974f655184cde224c285b8aasdm', 62),
(48, '3c197e18974f655184cde224c285b8aasdm', 78),
(49, '87cbf810625de2ff054ac8b841e135dfkeuangan', 6),
(50, '87cbf810625de2ff054ac8b841e135dfkeuangan', 19),
(51, '87cbf810625de2ff054ac8b841e135dfkeuangan', 77),
(52, '87cbf810625de2ff054ac8b841e135dfkeuangan', 23),
(53, '87cbf810625de2ff054ac8b841e135dfkeuangan', 24),
(54, '87cbf810625de2ff054ac8b841e135dfkeuangan', 25),
(55, '87cbf810625de2ff054ac8b841e135dfkeuangan', 52),
(56, '87cbf810625de2ff054ac8b841e135dfkeuangan', 54),
(57, '87cbf810625de2ff054ac8b841e135dfkeuangan', 55),
(58, '87cbf810625de2ff054ac8b841e135dfkeuangan', 58),
(59, '87cbf810625de2ff054ac8b841e135dfkeuangan', 59),
(60, '87cbf810625de2ff054ac8b841e135dfkeuangan', 60),
(61, '87cbf810625de2ff054ac8b841e135dfkeuangan', 61),
(62, '87cbf810625de2ff054ac8b841e135dfkeuangan', 62),
(63, '87cbf810625de2ff054ac8b841e135dfkeuangan', 78),
(64, '202cb962ac59075b964b07152d234b70nurti', 1),
(65, '202cb962ac59075b964b07152d234b70nurti', 2),
(66, '202cb962ac59075b964b07152d234b70nurti', 5),
(67, '202cb962ac59075b964b07152d234b70nurti', 7),
(68, '202cb962ac59075b964b07152d234b70nurti', 8),
(69, '202cb962ac59075b964b07152d234b70nurti', 14),
(70, '202cb962ac59075b964b07152d234b70nurti', 9),
(71, '202cb962ac59075b964b07152d234b70joni', 1),
(72, '202cb962ac59075b964b07152d234b70joni', 3),
(73, '202cb962ac59075b964b07152d234b70joni', 7),
(74, '202cb962ac59075b964b07152d234b70joni', 8),
(75, '202cb962ac59075b964b07152d234b70joni', 9),
(76, '202cb962ac59075b964b07152d234b70joni', 14),
(77, '202cb962ac59075b964b07152d234b70joni', 16),
(78, '202cb962ac59075b964b07152d234b70joni', 19),
(79, 'bf2bc2545a4a5f5683d9ef3ed0d977e0jj', 1),
(80, 'bf2bc2545a4a5f5683d9ef3ed0d977e0jj', 5),
(81, 'bf2bc2545a4a5f5683d9ef3ed0d977e0jj', 15);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(3) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `link` varchar(200) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `link`, `aktif`, `tanggal`, `username`) VALUES
(18, 'Pemkab Tanjabtim Ancam Cabut Ijin 26 Sumur Bor Minyak Petrocina', 'https://www.youtube.com/embed/-og1OF6A2SM', 'Y', '2014-04-04', ''),
(19, 'Workshop di Tanjung Jabung Timur', 'https://www.youtube.com/embed/GdRNWTGvkFQ', 'Y', '2014-04-04', ''),
(20, 'Bupati Tanjabtim Tuding Petrocina Pembangkang', 'https://www.youtube.com/embed/UnTa6VVIVmc', 'Y', '2014-04-04', ''),
(21, '2 April 2013_Program Kegiatan Pelaksanaan 10 Program pokok PKK', 'https://www.youtube.com/embed/uSGBbqEzhzA', 'Y', '2014-04-04', ''),
(22, 'Discover Sabak - East Tanjung Jabung Jambi', 'https://www.youtube.com/embed/ig-zJU8y1KE', 'Y', '2014-04-04', ''),
(25, 'Safari Ramadhan 1437 H Bupati Dan Wakil Sambangi Kecamatan Sadu', 'https://www.youtube.com/watch?v=tLzo0t7ypnc', 'Y', '2016-06-11', ''),
(26, 'Pemkab Tanjabtim Tekan Lonjakan Harga Melalui Operasi Pasar', 'https://www.youtube.com/watch?v=KMm_OOBafUs', 'Y', '2016-06-19', ''),
(27, 'Bupati Tanjabtim Perkokoh Kebersamaan Di Safari Ramadhan', 'https://www.youtube.com/watch?v=GBeL94Wwf3g', 'Y', '2016-06-19', ''),
(29, 'Bupati Tanjung Jabung Timur Romi Hariyanto meninjau salah satu Sekolah Dasar', 'https://www.youtube.com/watch?v=G8OkA72Q_qQ', 'Y', '2016-06-19', ''),
(30, 'Wakil Bupati Tanjung Jabung Timur Robby Nahliansyah meninjau pelaksanaan pembangunan fisik', 'https://www.youtube.com/watch?v=rki23zardR8', 'Y', '2017-10-16', ''),
(31, 'Kebakaran yang menghanguskan 67 rumah di Desa Pangkal Duri Kecamatan Mendahara', 'https://www.youtube.com/watch?v=CZcdrIU1kBA', 'Y', '0000-00-00', 'admin'),
(32, 'Suasana Hari Raya ( Cover ) Lebaran Idul Fitri  Kab. Tanjung Jabung Timur by Turion', 'https://www.youtube.com/watch?v=06q-8P8g0kw', 'Y', '0000-00-00', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `weblink`
--

CREATE TABLE `weblink` (
  `id_weblink` int(2) NOT NULL,
  `nama_weblink` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `urutan` int(2) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weblink`
--

INSERT INTO `weblink` (`id_weblink`, `nama_weblink`, `link`, `gambar`, `keterangan`, `urutan`, `aktif`, `tgl_upload`, `tgl_modif`, `username`) VALUES
(17, 'Dinas Kependudukan dan Pencatatan Sipil', 'http://dukcapil.tanjabtimkab.go.id', '', '', 0, 'Y', '2016-07-28', '0000-00-00', 'ngadmin'),
(21, 'Official Website Pemerintah Kab. Tanjung Jabung Timur', 'http://tanjabtimkab.go.id', '', '', 0, 'Y', '2019-07-11', '2019-07-11', 'ngadmin'),
(20, 'Dinas Perhubungan Kota Jambi', 'http://dishub.kotajambi.web.id', '', '', 0, 'Y', '2019-07-11', '2019-07-11', 'ngadmin'),
(15, 'Dinas Pendidikan', 'http://disdik.tanjabtimkab.go.id', '', '', 0, 'Y', '2014-12-03', '0000-00-00', 'ngadmin'),
(16, 'Dinas Pemberdayaan Masyarakat dan Desa', 'http://dpmd.tanjabtimkab.go.id', '', '', 0, 'Y', '2016-07-28', '0000-00-00', 'ngadmin'),
(18, 'Sekretariat DPRD', 'http://dprd.tanjabtimkab.go.id', '', '', 0, 'Y', '2016-07-28', '0000-00-00', 'ngadmin'),
(19, 'Sekretariat Daerah', 'http://setda.tanjabtimkab.go.id', '', '', 0, 'Y', '2016-07-28', '0000-00-00', 'ngadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `berita---`
--
ALTER TABLE `berita---`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `daerah`
--
ALTER TABLE `daerah`
  ADD PRIMARY KEY (`id_daerah`);
ALTER TABLE `daerah` ADD FULLTEXT KEY `seo_subdomain` (`seo_daerah`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `fotoberita`
--
ALTER TABLE `fotoberita`
  ADD PRIMARY KEY (`id_fotoberita`);

--
-- Indexes for table `fotoberita---`
--
ALTER TABLE `fotoberita---`
  ADD PRIMARY KEY (`id_fotoberita`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `gallery---`
--
ALTER TABLE `gallery---`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indexes for table `halamaniklan`
--
ALTER TABLE `halamaniklan`
  ADD PRIMARY KEY (`id_halamaniklan`);

--
-- Indexes for table `halamanprofil`
--
ALTER TABLE `halamanprofil`
  ADD PRIMARY KEY (`id_halamanprofil`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `ijazah`
--
ALTER TABLE `ijazah`
  ADD PRIMARY KEY (`id_ijazah`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id_iklan`);

--
-- Indexes for table `imageslide`
--
ALTER TABLE `imageslide`
  ADD PRIMARY KEY (`id_imageslide`);

--
-- Indexes for table `jabatanpegawai`
--
ALTER TABLE `jabatanpegawai`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `katdokumen`
--
ALTER TABLE `katdokumen`
  ADD PRIMARY KEY (`id_katdokumen`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `katlaporan`
--
ALTER TABLE `katlaporan`
  ADD PRIMARY KEY (`id_katlaporan`);

--
-- Indexes for table `katprodukhukum`
--
ALTER TABLE `katprodukhukum`
  ADD PRIMARY KEY (`id_katprodukhukum`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`idlevel`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `link--`
--
ALTER TABLE `link--`
  ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `link2`
--
ALTER TABLE `link2`
  ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menuadmin`
--
ALTER TABLE `menuadmin`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indexes for table `menu_position`
--
ALTER TABLE `menu_position`
  ADD PRIMARY KEY (`id_posisi`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pend`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `polling`
--
ALTER TABLE `polling`
  ADD PRIMARY KEY (`id_polling`);

--
-- Indexes for table `pollingpilihan`
--
ALTER TABLE `pollingpilihan`
  ADD PRIMARY KEY (`id_pollingpilihan`);

--
-- Indexes for table `posisiiklan`
--
ALTER TABLE `posisiiklan`
  ADD PRIMARY KEY (`id_posisiiklan`);

--
-- Indexes for table `produkhukum`
--
ALTER TABLE `produkhukum`
  ADD PRIMARY KEY (`id_produkhukum`);

--
-- Indexes for table `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`id_sambutan`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id_submenu`);

--
-- Indexes for table `submenuadmin`
--
ALTER TABLE `submenuadmin`
  ADD PRIMARY KEY (`idsubmenu`);

--
-- Indexes for table `subsubmenu`
--
ALTER TABLE `subsubmenu`
  ADD PRIMARY KEY (`id_subsubmenu`);

--
-- Indexes for table `subsubmenuadmin`
--
ALTER TABLE `subsubmenuadmin`
  ADD PRIMARY KEY (`id_subsubmenuadmin`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `telpon`
--
ALTER TABLE `telpon`
  ADD PRIMARY KEY (`id_telpon`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `tingkatpendidikan`
--
ALTER TABLE `tingkatpendidikan`
  ADD PRIMARY KEY (`id_pend`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- Indexes for table `weblink`
--
ALTER TABLE `weblink`
  ADD PRIMARY KEY (`id_weblink`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `berita---`
--
ALTER TABLE `berita---`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `daerah`
--
ALTER TABLE `daerah`
  MODIFY `id_daerah` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fotoberita---`
--
ALTER TABLE `fotoberita---`
  MODIFY `id_fotoberita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `gallery---`
--
ALTER TABLE `gallery---`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `id_pangkat` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `halamaniklan`
--
ALTER TABLE `halamaniklan`
  MODIFY `id_halamaniklan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `halamanprofil`
--
ALTER TABLE `halamanprofil`
  MODIFY `id_halamanprofil` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ijazah`
--
ALTER TABLE `ijazah`
  MODIFY `id_ijazah` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id_iklan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `imageslide`
--
ALTER TABLE `imageslide`
  MODIFY `id_imageslide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jabatanpegawai`
--
ALTER TABLE `jabatanpegawai`
  MODIFY `id_jabatan` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `katdokumen`
--
ALTER TABLE `katdokumen`
  MODIFY `id_katdokumen` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `katlaporan`
--
ALTER TABLE `katlaporan`
  MODIFY `id_katlaporan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `katprodukhukum`
--
ALTER TABLE `katprodukhukum`
  MODIFY `id_katprodukhukum` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `idlevel` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id_link` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `link--`
--
ALTER TABLE `link--`
  MODIFY `id_link` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `link2`
--
ALTER TABLE `link2`
  MODIFY `id_link` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `menuadmin`
--
ALTER TABLE `menuadmin`
  MODIFY `idmenu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `menu_position`
--
ALTER TABLE `menu_position`
  MODIFY `id_posisi` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pend` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pollingpilihan`
--
ALTER TABLE `pollingpilihan`
  MODIFY `id_pollingpilihan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posisiiklan`
--
ALTER TABLE `posisiiklan`
  MODIFY `id_posisiiklan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produkhukum`
--
ALTER TABLE `produkhukum`
  MODIFY `id_produkhukum` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `id_sambutan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id_submenu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `submenuadmin`
--
ALTER TABLE `submenuadmin`
  MODIFY `idsubmenu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `subsubmenu`
--
ALTER TABLE `subsubmenu`
  MODIFY `id_subsubmenu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subsubmenuadmin`
--
ALTER TABLE `subsubmenuadmin`
  MODIFY `id_subsubmenuadmin` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `telpon`
--
ALTER TABLE `telpon`
  MODIFY `id_telpon` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tingkatpendidikan`
--
ALTER TABLE `tingkatpendidikan`
  MODIFY `id_pend` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `weblink`
--
ALTER TABLE `weblink`
  MODIFY `id_weblink` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
