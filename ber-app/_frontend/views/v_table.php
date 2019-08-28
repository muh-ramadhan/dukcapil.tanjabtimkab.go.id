
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.0/css/responsive.dataTables.min.css">

 
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/responsive/2.2.0/js/dataTables.responsive.min.js"></script>

<script type="text/javascript" class="init"> 
$.extend( $.fn.dataTable.defaults, {
    searching: false,
	ordering: true,
	pageLength: 50,
	paging: false,
	info: false,
	responsive: true
} );
$(document).ready(function() {
    $('#example').DataTable({
        "order": [[2, "desc" ]]
    });
} );
 
</script>
<table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr> 
                <th>Jenis</th>
                <th>Nomor</th>
                <th>Tahun</th> 
                <th>Tentang</th> 
            </tr>
        </thead>
        <tbody>
<?php
$prodhukum = $this->M_data->ambilprodukhukum(12);
$no=1;
foreach($prodhukum->result() as $row){ 
$judul=seo_link($row->nama_katprodukhukum." ".$row->nomor." ".$row->tahun);
?>
	<tr> 
        <td><?php echo $row->nama_katprodukhukum; ?></td>
        <td><?php echo $row->nomor; ?></td>
        <td><?php echo $row->tahun; ?></td> 
		<td><a style="text-transform:uppercase;" href="<?php echo base_url(); ?>peraturan/detail/<?php echo $row->id_produkhukum; ?>/<?php echo $judul; ?>/"><?php echo $row->tentang; ?></a></td> 
	</tr>  
<?php
$no++;
}
?>  
        </tbody>
    </table>