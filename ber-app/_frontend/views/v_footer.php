<footer id="footer">
    <div class="dark grid">
        <div class="container">
            <div class="row">
                <div class="col4"> 
<h3 class="rs title">Alamat Kantor</h3>
<?php 
$identitas = $this->M_data->identitasfooter();
foreach($identitas->result() as $row) {
?>
                <p class="rs description"><?php echo $row->alamat; ?></p>
				<table id="stat">
                    <tbody>
					<tr><td class="news-title">Mail </td><td class="news-title"> : <b><om><?php echo $row->email; ?> </om></b></td> </tr>
					<tr><td class="news-title">Phone</td><td class="news-title"> : <b><?php echo $row->no_telp; ?></b></td> </tr>
					<tr><td class="news-title">Fax</td><td class="news-title"> : <b><?php echo $row->fax; ?> </b></td> </tr>
					<tr><td class="news-title">Official Website</td><td class="news-title"> : <b><om><?php echo $row->url; ?></om></b></td> </tr>
					</tbody></table> 
                </div>
                <div class="col8">
                    <nav class="social">
                                                <a href="<?php echo $row->facebook; ?>" target="_blank"><img src="<?php echo base_url(); ?>style/images/icon-white-facebook.png" alt="Facebook"></a>
                                                <a href="<?php echo $row->twiter; ?>" target="_blank"><img src="<?php echo base_url(); ?>style/images/icon-white-twitter.png" alt="Twitter"></a>
                                                <a href="<?php echo $row->youtube; ?>" target="_blank"><img src="<?php echo base_url(); ?>style/images/icon-white-youtube.png" alt="YouTube"></a>
                                                <a href="" target="_blank"><img src="<?php echo base_url(); ?>style/images/icon-white-flickr.png" alt="Flickr"></a>
                                            </nav>
	<?php } ?>	
	<nav class="footernav nomobile"> 
    <ul>
    <?php
	$menu = $this->M_data->ambilsubmenu('',3);
	foreach($menu->result() as $row){
	?>
		<li class="active active"> <a href="<?php echo base_url();  echo $row->link_submenu;?>"> <?php echo $row->nama_submenu; ?> </a>  </li> 
	<?php } ?>      
</ul>

                    </nav>
	<?php /* ?>				
	<nav class="footernav nomobile" style="margin-top:10px;"> 
    <ul>
                                    <li class="active active">
    <a href="<?php echo base_url(); ?>pengaduan">
        Pengaduan
    </a>
    </li>            <li>
    <a href="<?php echo base_url(); ?>peraturan">
       Produk Hukum
    </a>
    </li>            <li>
    <a href="<?php echo base_url(); ?>downloaddata">
        Download Data
    </a>
    </li>            <li>
    <a href="<?php echo base_url(); ?>kegiatan">
       Agenda Kegiatan
    </a>
    </li>            
</ul>  </nav>
<?php */ ?>
	<p  style="margin-top:10px;">
	Dinas Lingkungan Hidup adalah merupakan unsur pelaksana Pemerintah Daerah dibidang Lingkungan Hidup, dipimpin oleh seorang Kepala Dinas. Kepala Dinas Lingkungan Hidup berkedudukan dibawah dan bertanggungjawab kepada Bupati melaui Sekretaris Daerah.
	</p>
	
                </div>
            </div>
        </div>
    </div>
    
<div class="container">
        <p class="paidfor"><span><img src="<?php echo base_url(); ?>style/images/logo-bottom.png" alt="KPU Provinsi Jambi"></span></p>
        <p class="cred">Copyright 2019 DLH.TANJABTIMKAB.GO.ID - All Rights Reserved. Developed by <a href="http://diskominfo.tanjabtimkab.go.id">Diskominfo Tanjabtim</a>. </p>
    </div> 
</footer>

 
    <script src="//code.jquery.com/jquery-migrate-1.2.1.min---.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>style/js/slick.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>style/js/scripts.js"></script> 
		<script type="text/javascript">
        var disqus_shortname = 'slickcarousel';

        (function() {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
    </script>