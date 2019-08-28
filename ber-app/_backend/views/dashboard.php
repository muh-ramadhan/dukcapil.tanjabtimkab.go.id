<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title> <?php echo $judulapp; ?>  </title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url()?>style/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?php echo base_url()?>style/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

	   <!-- DataTables Responsive CSS  
    <link href="<?php echo base_url()?>style/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">
	
	<link href="<?php echo base_url()?>style/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
	-->
	 
    <!-- Custom CSS -->
	<link href="<?php echo base_url()?>style/css/fonts.css" rel="stylesheet">
    <link href="<?php echo base_url()?>style/css/sb-admin-2.css" rel="stylesheet">
	
    <!-- Custom Fonts -->
    <link href="<?php echo base_url()?>style/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 
  <!-- jQuery -->
    <script src="<?php echo base_url()?>style/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url()?>style/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo base_url()?>style/bower_components/metisMenu/dist/metisMenu.min.js"></script>
 
 <!--
 <script src="<?php echo base_url()?>style/bower_components/datatables/media/js/jquery.dataTables.min.js"></script> 
	 -->
 <script language="javascript">
$(document).ready(function(){ 
// add multiple select / deselect functionality
$("#selectall").click(function () {
$('.case').attr('checked', this.checked);
});

// if all checkbox are selected, check the selectall checkbox
// and viceversa
$(".case").click(function(){

if($(".case").length == $(".case:checked").length) {
$("#selectall").attr("checked", "checked");
} else {
$("#selectall").removeAttr("checked");
}

});
});
</script>
	<!--
			<script src="<?php echo base_url()?>style/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script> 
 -->
    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url()?>style/js/sb-admin-2.js"></script>
	<script src="<?php echo base_url(); ?>../tinymcpuk/jscripts/tiny_mce/tiny_mce---.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>../tinymcpuk/jscripts/tiny_mce/tiny_lokomedia--.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>../tinymcpuk/jscripts/tiny_mce/tiny_lokomedia2--.js" type="text/javascript"></script>
	
</head> 
<body> 
    <div id="wrapper">
		<?php $this->load->view($vnavigasi); ?>
	<div id="page-wrapper">
		<?php $this->load->view($vdata); ?>
    </div> 
    </div>
    <!-- /#wrapper -->

 
				<script>
			$(document).ready(function() {
				$('#dataTables-example').DataTable({
						responsive: true
				});
			});
			</script> 
</body>

</html>
