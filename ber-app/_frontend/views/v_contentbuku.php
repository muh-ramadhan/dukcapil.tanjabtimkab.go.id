<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"><link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.0/css/responsive.dataTables.min.css"><script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script><script type="text/javascript" language="javascript" src="https://cdn.datatables.net/responsive/2.2.0/js/dataTables.responsive.min.js"></script><script type="text/javascript" class="init"> $.extend( $.fn.dataTable.defaults, { 	pageLength: 20,	paging: true,	info: false,	responsive: true} ); $(document).ready(function() {       $('#example').DataTable({        "order": [[2, "desc" ]]    });}); </script><style>.dataTables_length select{	display: inline-block !important;}</style><?php  if ($this->uri->segment(2,0)=='index') { ?>  <div class="content grid_9 allberita marked-category">	<div class="single-page"><div class="box-single-content clearfix"><div class="breadcrumb"> <a href="<?php echo base_url(); ?>">Beranda </a>/  Koleksi Buku Hukum</div> <h1><?php echo $judulan; ?></h1><p class="rs post-by"></p><?phpif (count($artikel)) { ?><table id="example" class="display" cellspacing="0" width="100%">        <thead>            <tr>                 <th>Cover</th>                <th>Judul</th> 				<th>Jenis Buku</th>                <th>Tahun</th>                 <th>Deskripsi</th>             </tr>        </thead>        <tbody><?php//$prodhukum = $this->M_data->ambilprodukhukum(7);$no=1;//foreach($prodhukum->result() as $row){foreach($artikel  as $row){$judul=seo_link($row['judul']." ".$row['id_buku']." ".$row['tahun']);	$isi=strip_tags($row['deskripsi']);	$isi=substr($isi,0,140);?><?	if ($row['gambar']!=''){					$pathi=$row['tanggal_modif'];					$pathi=str_replace("-","/",$pathi); ?> 	<tr>         <td><a style="text-transform:uppercase;" href="<?php echo base_url(); ?>buku/detail/<?php echo $row['id_buku']; ?>/<?php echo $judul; ?>/"><img src="<?php echo base_url(); ?>/foto_buku/<?php echo $pathi; ?>/small_<?php echo $row['gambar']; ?>" width="130" ></a></td>		<?php }?>        <td><a style="text-transform:uppercase;" href="<?php echo base_url(); ?>buku/detail/<?php echo $row['id_buku']; ?>/<?php echo $judul; ?>/"><?php echo $row['judul']; ?></a></td>		<td><a style="text-transform:uppercase;" href="<?php echo base_url(); ?>buku/jenisbuku/<?php echo $row['id_jenisbuku']; ?>/<?php echo seo_link($row['nama_jenisbuku']); ?>/"><?php echo $row['nama_jenisbuku']; ?></a></td>        <td><?php echo $row['tahun']; ?></td>		<td><?php echo $isi; ?>...</td>			</tr>  <?php$no++;}?>          </tbody>    </table><div class="clearfix"></div>	<center>		  <div class="pagination">		<ul class="tsc_pagination">		<?php echo $pagination; ?>		</ul>		</div>	 </center>  <?php  }else {  ?><h4 >Maaf, Data Belum Tersedia !</h4><?php}?></div></div></div> <?php	}  else if ($this->uri->segment(2,0)=='jenisbuku') { ?>  <div class="content grid_9 allberita marked-category">	<div class="single-page"><div class="box-single-content clearfix"><div class="breadcrumb"> <a href="<?php echo base_url(); ?>">Beranda </a>/ <a href="<?php echo base_url(); ?>buku"> Data Buku </a>/ Jenis Buku: <?php echo $judulan; ?></div> <h1>Jenis Buku: <?php echo $judulan; ?></h1><p class="rs post-by"></p><?phpif (count($artikel)) { ?><table id="example" class="display" cellspacing="0" width="100%">        <thead>            <tr>                 <th>Cover</th>                <th>Judul</th>                 <th>Tahun</th>                 <th>Deskripsi</th>             </tr>        </thead>        <tbody><?php//$prodhukum = $this->M_data->ambilprodukhukum(7);$no=1;//foreach($prodhukum->result() as $row){foreach($artikel  as $row){$judul=seo_link($row['judul']." ".$row['id_buku']." ".$row['tahun']);	$isi=strip_tags($row['deskripsi']);	$isi=substr($isi,0,140); ?><?	if ($row['gambar']!=''){					$pathi=$row['tanggal_modif'];					$pathi=str_replace("-","/",$pathi); ?> 	<tr>         <td><a style="text-transform:uppercase;" href="<?php echo base_url(); ?>buku/detail/<?php echo $row['id_buku']; ?>/<?php echo $judul; ?>/"><img src="<?php echo base_url(); ?>/foto_buku/<?php echo $pathi; ?>/small_<?php echo $row['gambar']; ?>" width="130" ></a></td>		<?php }?>        <td><a style="text-transform:uppercase;" href="<?php echo base_url(); ?>buku/detail/<?php echo $row['id_buku']; ?>/<?php echo $judul; ?>/"><?php echo $row['judul']; ?></a></td>        <td><?php echo $row['tahun']; ?></td>      		<td><?php echo $isi; ?>...</td>			</tr>  <?php$no++;}?>          </tbody>    </table><div class="clearfix"></div>	<center>		  <div class="pagination">		<ul class="tsc_pagination">		<?php echo $pagination; ?>		</ul>		</div>	 </center>  <?php  }else {  ?><h4 >Maaf, Data Belum Tersedia !</h4><?php}?></div></div></div> <?php	}  else if ($this->uri->segment(2,0)=='detail') {  if (count($detail_berita)) {  foreach($detail_berita as $row){ $judul=seo_link($row->nama_jenisbuku);?><div class="content grid_9 allberita marked-category">	<div class="single-page"><div class="box-single-content clearfix"> <div class="breadcrumb"> 	<a href="<?php echo base_url(); ?>">Beranda </a>/ <a href="<?php echo base_url(); ?>buku"> Koleksi Buku Hukum </a>/ <?php echo $row->nama_jenisbuku;?>  </div>  <h1><?php echo $judulan;?></h1><p class="rs post-by"></p><center> </center><table class="ver-zebra2">    <colgroup><col class="oce-first"></colgroup><tbody><?	if ($row->gambar!=''){					$pathi=$row->tanggal_modif;					$pathi=str_replace("-","/",$pathi); ?> 	<tr> <td width="30%" valign="top" rowspan="9"><img src="<?php echo base_url(); ?>foto_buku/<?php echo $pathi; ?>/small_<?php echo $row->gambar; ?>" ></td>        </tr> 		<?php } ?>								<tr><td valign="top"><b>Judul</b></td>  <td valign="top"><?php echo $judulan;?></td></tr><tr><td valign="top"><b>Jenis Buku</b></td>  <td valign="top"><?php echo $row->nama_jenisbuku; ?></td></tr> <tr><td valign="top"><b>Penulis</b></td>  <td valign="top"><?php echo $row->penulis; ?></td></tr><tr><td valign="top"><b>Penyusun</b></td>  <td valign="top"><?php echo $row->penyusun; ?></td></tr><tr><td valign="top"><b>Penerbit</b></td>  <td valign="top"><?php echo $row->penerbit; ?></td></tr><tr><td valign="top"><b>Tahun Penerbitan</b></td>  <td valign="top"><?php echo $row->tahun; ?></td></tr><tr><td valign="top"><b>Deskripsi</b></td>  <td valign="top"><?php echo $row->jangkrik; ?></td></tr>   <tr>  <td valign="top"><b>File Lampiran</b></td>     <td valign="top">  <?	if ($row->link_file!=''){ ?> <a href="<?php echo $row->link_file; ?>" target="_blank"><img src="<?php echo base_url(); ?>images/pdf.png" ></a>  <? }  else {	  echo "Tidak Tersedia";	  } ?></td></tr></tbody></table><?php }?>  <div class="clearfix"></div>  <?php  $id=$row->id_buku; $ip_addr = $this->input->ip_address(); // $ip_addr = $this->input->ip_address(); // $dibaca=$row->dibaca; $data = array('dibaca' => $row->dibaca + 1);$where = "id_buku = '".$row->id_buku."'"; $str = $this->db->update('buku', $data, $where); ?> <?php  } else { } ?> </div> </div> </div>   <?php }  ?>