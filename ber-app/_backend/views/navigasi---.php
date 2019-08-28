        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url(); ?>ngadmin">
				<span class="hideee"><?php 
$identitas = $this->M_dataadmin->identitas();
foreach($identitas->result() as $idd) {
?> <?php echo $idd->nama_website; ?>  
<?php } ?> </span>Administrator </a> <!-- <?php echo $this->session->userdata('session_id')." <br > -- ".$this->uri->segment(1,0)." <br > -- "; 
echo $this->session->userdata('level')." <br >";?>-->
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a> 
                </li>  
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="<?php echo base_url(); ?>users"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="<?php echo base_url(); ?>identitas"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="<?php echo base_url(); ?>logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
					<li class="sidebar-search">
                           <img src="<?php echo base_url()?>../style/images/<?php echo $idd->logo; ?>" width="100%" style="margin:20px 0;">
                        </li>
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="<?php echo base_url(); ?>"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
						<li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> Pengaturan<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo base_url(); ?>identitas">Identitas Aplikasi</a>
                                </li>
                                <li>
                                    <a href="<?php echo base_url(); ?>backup">Backup/Restore Data</a>
                                </li>
								<li>
                                    <a href="<?php echo base_url(); ?>users">Manajemen User</a>
                                </li> 
                                <li>
                                    <a href="<?php echo base_url(); ?>modul">Manajemen Modul</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-th-large fa-fw"></i> Modul Menu<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level"> 
                                <li>
                                    <a href="<?php echo base_url(); ?>menu">Menu Front End</a>
                                </li>
								<li>
                                    <a href="<?php echo base_url(); ?>submenu">Submenu Front End</a>
                                </li>
								<li>
                                    <a href="<?php echo base_url(); ?>subsubmenu">Sub Submenu Front End</a>
                                </li> 
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						
						<li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Modul Berita <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo base_url(); ?>berita">Berita</a>
                                </li>
                                <li>
                                    <a href="<?php echo base_url(); ?>kategori">Kategori Berita</a>
                                </li>  
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						
						<li>
                            <a href="#"><i class="fa fa-folder-o fa-fw"></i> Modul Content<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                
								<li>
                                    <a href="<?php echo base_url(); ?>imageslide">Image Slide</a>
                                </li> 
								<li>
                                    <a href="<?php echo base_url(); ?>weblink">Weblink</a>
                                </li>
								<li>
                                    <a href="<?php echo base_url(); ?>halamanprofil">Halaman Profil</a>
                                </li>
								<li>
                                    <a href="<?php echo base_url(); ?>pengaduan">Pengaduan Online</a>
                                </li> 
								<li>
                                    <a href="<?php echo base_url(); ?>iklan">Banner</a>
                                </li> 
								<li>
                                    <a href="<?php echo base_url(); ?>download">File Download</a>
                                </li> 
								<li>
                                    <a href="<?php echo base_url(); ?>polling">Polling</a>
                                </li> 
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						
						  
						  
						<li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Modul Produk Hukum<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo base_url(); ?>produkhukum">Data Produk Hukum</a>
                                </li>
                                <li>
                                    <a href="<?php echo base_url(); ?>katprodukhukum">Kategori Produk Hukum</a>
                                </li>  
                            </ul> 
                        </li>
						
					 
						 
                        <li>
                            <a href="<?php echo base_url(); ?>dashboard/lihatweb" target="_blank"><i class="fa fa-external-link fa-fw"></i> Lihat Website</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url(); ?>logout"><i class="fa fa-sign-out fa-fw"></i> Logut</a>
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
