<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Administrator Login</title>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">

  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<?php echo base_url()?>style/css/font-awesome.min.css">
  <link rel="stylesheet" href="<?php echo base_url()?>style/css/normalize.min.css">

  <link rel="stylesheet" href="<?php echo base_url()?>style/css/custom-style.css">

 
	  <!-- jQuery -->
    <script src="<?php echo base_url()?>style/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url()?>style/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo base_url()?>style/js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url()?>style/js/sb-admin-2.js"></script>

	
	
</head>

<body>
  <div class="wrapper">
  <div class="login"> 
<center>
<?php 
$identitas = $this->M_dataadmin->identitas();
foreach($identitas->result() as $idd) {
?>  
<?php } ?>
<img src="<?php echo base_url()?>../style/images/<?php echo $idd->logo; ?>" width="100%" style="margin:20px 0;"> 
</center>
    <p class="title">Log in</p>
<div id="report2"></div>
<div class="label label-danger" style="color:#ff0000;"> <?=validation_errors()?> </div> 
<div class="label label-danger" style="color:#ff0000;"> <?php if (isset($error)){ echo $error; } ?> </div> <br> 
<?php echo form_open_multipart('login'); ?>	
 
    <input type="text" name="username" id="user" value="<?php echo set_value('username'); ?>" placeholder="Username" required autofocus/>
    <i class="fa fa-user"></i>
    <input type="password"  value="<?php echo set_value('password'); ?>" name="password"  placeholder="Password"  required  /> 
    <i class="fa fa-key"></i>
	 			
<center>
	<?php   echo $recaptcha_html;?> 
</center>	
 
	<input type="submit"  id="submit"  class="btn btn-lg btn-success btn-block" name="submit" value="Login" />
	
  </div>
  <?php echo form_close(); ?> 
  
  <footer>Developed by <?php // echo $this->session->userdata('linkterakhir'); ?> <a target="blank" href="http://bermultimedia.com/">Bermultimedia.com </a></footer>
  </p>
</div>
 
</body>
</html>
