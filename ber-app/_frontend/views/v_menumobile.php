<nav id="nav-container" class="nav-container lv-6271" role="navigation">
    <ul class="local-nav parent">
        <li class="hide-nav"><button title="Hide navigation panel"></button></li>
        <li class="root"><a href="<?php echo base_url(); ?>">Home</a>
            <ul class="level-one">
                <li class="current"><a href="<?php echo base_url(); ?>">Home</a> </li> 
<?php  
$menu = $this->M_data->ambilmenu(2);
$no=1;
foreach($menu->result() as $row){
?>
<?php
	$submenu = $this->M_data->ambilsubmenu('',$row->id_menu); 
	$jumlah=$submenu->num_rows();
?>
<li><a href="<?php echo base_url();  echo $row->link;?>"><?php echo $row->nama_menu; ?></a> 
		<?php if ($jumlah>=1) {?>
					<ul class="level-two">
					
					<?php
						foreach($submenu->result() as $sub){
						$lin1=substr($sub->link_submenu, 0, 3);  
						if ($lin1!="htt") {
							$link1=base_url().$sub->link_submenu;
						}
						else {
							$link1=$sub->link_submenu;
						}
						$subsubmenu = $this->M_data->ambilsubsubmenu('',$sub->id_submenu); 
						$jumlahh=$subsubmenu->num_rows();
						?>
						<li><a href="<?php echo $link1; ?>"><?php echo $sub->nama_submenu; ?></a> 
						<?php if ($jumlahh>=1) {?>
							<ul class="level-three">
							<?php
						foreach($subsubmenu->result() as $sub2){
						$lin2=substr($sub2->link_subsubmenu, 0, 3);  
						if ($lin2!="htt") {
							$link2=base_url().$sub2->link_subsubmenu;
						}
						else {
							$link2=$sub->link_submenu;
						}
						?>
						<li><a href="<?php echo $link2; ?>"><?php echo $sub2->nama_subsubmenu; ?></a></li> 
						<?php } ?> 
							</ul> 
						<?php } ?>	
						</li>
						<?php
						}
					?>
					
					</ul>
		<?php } ?>		
	</li> 
<?php 
$no++;
} 
?>   
			</ul>
        </li>
    </ul>
</nav>
<!--endnoindex--><!--LAYOUT-->