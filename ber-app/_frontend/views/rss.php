<?php
//<img src='http://harianjambi.com/foto_berita/small_$gambar' align='left' hspace='7' width='120' height='90'/>".
echo '<?xml version="1.0" encoding="utf-8"?>' . "\n";
date_default_timezone_set('Asia/Jakarta');
$dates = date(DATE_RFC2822);
?>
<rss version="2.0"
xmlns:dc="http://purl.org/dc/elements/1.1/"
     xmlns:sy="http://purl.org/rss/1.0/modules/syndication/"
     xmlns:admin="http://webns.net/mvcb/"
     xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
     xmlns:content="http://purl.org/rss/1.0/modules/content/">  
<channel>

<title><?php echo $feed_name; ?></title>

<link><?php echo $feed_url; ?></link>
<description><?php echo $page_description; ?></description>
<copyright>2014 tanjabtimkab.go.id</copyright>
<pubDate><?php echo $dates; ?></pubDate>
<image>
<link>http://tanjabtimkab.go.id/</link>
<title>Official Website Kab. Tanjung Jabung Timur</title>
<url><?php  echo base_url('style/images/logo-online.png');?></url>
<width>130</width>
<height>35</height> 
<description>tanjabtimkab.go.id</description>
</image>
<!--
<dc:language><?php echo $page_language; ?></dc:language>
<dc:creator><?php echo $creator_email; ?></dc:creator>
<dc:rights>Copyright <?php echo gmdate("Y", time()); ?></dc:rights>

<admin:generatorAgent rdf:resource="http://www.codeigniter.com/" />
-->
<?php




 foreach ($posts->result() as $post): 


$judul=$post->judul;
$d = array (',','-','/','\\',',','.','#',':',';','\'','"','[',']','{','}',')','(','|','`','~','!','@','%','$','^','&','*','=','?','+');
 $judul = str_replace($d, '', $judul);
$judul=strtolower(str_replace(' ','-',$judul));

if ($post->gambar!='') {
$gambar=$post->gambar;
}
else {
$gambar='default-foto.jpg';
}




?>
<item>
<title><?php echo xml_convert($post->judul); ?></title>
<link><?php echo site_url('berita/detail/' . $post->id_berita.'/'.$judul) ?></link>

<guid><?php echo site_url('berita/detail/' . $post->id_berita.'/'.$judul) ?></guid>
<description><![CDATA[ <?php echo"<img src='". site_url('foto_berita/small_'.$gambar)."' align='left' hspace='7' width='120' height='90'/>";?> <?php echo character_limiter($post->isi_berita, 500); ?> ]]></description>
<pubDate><?php echo waktur_rss($post->tanggal, $post->jam); ?></pubDate>
</item>
<?php endforeach; ?>

</channel>
</rss>