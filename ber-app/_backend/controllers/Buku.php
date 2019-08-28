<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buku extends CI_Controller {

	function __construct(){  
		parent::__construct();
		$this->load->helper(array('html','form','url','text',  'captcha','date','text_helper','permissionadmin')); 
		$this->load->library(array('recaptcha', 'form_validation'));
		$this->load->library('pagination'); 
		$this->load->model('M_dataadmin'); 
		$this->load->library('session'); 
		$this->load->helper('tgl_indonesia'); 
		$this->load->helper('combo');
		//$this->load->library("security"); 
		$this->load->helper('fungsi_seo');
		$this->load->helper('fungsi_thumb');
		$this->load->helper('fungsi_mkdir');
		$this->load->helper('fungsi_backup');
		is_logged_in();  
	}
    
function index()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{ 
		$query = $this->db->query("select count(*) as jml from buku");
        foreach ($query->result() as $row) {
            $jumlah = $row->jml;
        }
        $config['base_url'] = base_url().'/buku/index/';
        $config['total_rows'] = $jumlah;
        $config['per_page'] = 15;
        $config['uri_segment'] = 3;
		$config['use_page_numbers'] = TRUE;
        $this->pagination->initialize($config); 
		$data['pagination']=$this->pagination->create_links();
		if($this->uri->segment(3) > 0)
			$offset = ($this->uri->segment(3) + 0)*$config['per_page'] - $config['per_page'];
		else
			$offset = $this->uri->segment(3);
        $data['artikel'] = $this->M_dataadmin->indexbuku('', $config['per_page'], $offset);
		if ($this->uri->segment(3)==null) {
			$page=0;
		}
		else {
			$page=$this->uri->segment(3);
		}
		
			//LOADING VIEW
			$data['vdata']='v_buku';
		}
		else {
			$data['vdata']='access-denied'; 
		}
		
		//$data['vdata']='v_identitas';
		$data['judulapp']="Data Buku";
		$data['vnavigasi']='navigasi'; 
		$this->load->view('dashboard',$data);	 
    } 

function add()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{
			$data['vdata']='v_buku';
		}
		else {
			$data['vdata']='access-denied'; 
		}
		
		//$data['vdata']='v_identitas';
		$data['judulapp']="Tambah Data Buku";
		$data['vnavigasi']='navigasi'; 
		$this->load->view('dashboard',$data);	 
    }
function edit()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{
			$query = $this->M_dataadmin->editbuku($this->uri->segment(3,0)); 
			$row = $query->row();
			if ($this->session->userdata('id_user') == $row->username or $leveluser=="admin") {
				$data['vdata']='v_buku';
			}
			else {
				$data['vdata']='access-denied'; 
			}
		}
		else {
			$data['vdata']='access-denied'; 
		} 
		$data['judulapp']="Edit Data Buku";
		$data['vnavigasi']='navigasi'; 
		$this->load->view('dashboard',$data);	 
    }
	
function a_simpan()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{
		 
		
			$a=substr($this->input->post('tanggal'), 6,9);
			$b=substr($this->input->post('tanggal'), 3,2);
			$c=substr($this->input->post('tanggal'), 0,2);
			$tanggal=$a.'-'.$b.'-'.$c;
			$pathi=$a.'/'.$b.'/'.$c;
			$seo_judul=seo_link($this->input->post('judul'));
			$hariini=nama_hari($tanggal);
			$jamsekarang = date("H:i:s");
			
			/* s: property gambar */
			$lokasi_file    = $_FILES['imagefile']['tmp_name'];
			$tipe_file      = $_FILES['imagefile']['type'];
			$nama_file      = seo_image($_FILES['imagefile']['name']);
			$acak           = rand(1,99);
			$filename = $acak.$nama_file; 
			$upload_dir = '../foto_buku/'.$pathi.'/'; 
	 
			if (!empty($lokasi_file)){ 
			if ($tipe_file == "image/jpeg"){
			/* s: property gambar */
			RmkDir($upload_dir, $mode = 0777); 
			UploadFoto($filename,$upload_dir,1000,'imagefile');  
			$this->M_dataadmin->query_manual("insert into buku (judul,
								aktif, 
								id_jenisbuku,
                                username, 
								keterangan,
								penyusun,
								penulis,
								penerbit,
								ketersediaan,
								tahun,
								deskripsi,
								link_file,
                                jam,
                                tanggal,
								tanggal_modif,  
								gambar)
					values('".$this->input->post('judul')."',  
								'".$this->input->post('aktif')."',
								'".$this->input->post('jenis')."',
								'".$this->session->userdata('id_user')."', 
								'".$this->input->post('keterangan')."',
								'".$this->input->post('penyusun')."',
								'".$this->input->post('penulis')."', 
								'".$this->input->post('penerbit')."',
								'".$this->input->post('ketersediaan')."',
								'".$this->input->post('tahun')."',
								'".$this->input->post('deskripsi')."',
								'".$this->input->post('link_file')."',
								'".$jamsekarang."',
								'".$tanggal."',
								'".$tanggal."', 
								'".$filename."')"); 
			}
			else {
				echo "File Harus Berformat .JPG";
			}
			}
			else {
				$this->M_dataadmin->query_manual("insert into buku (judul,
								aktif, 
								id_jenisbuku,
                                username, 
								keterangan,
								penyusun,
								penulis,
								penerbit,
								ketersediaan,
								tahun,
								deskripsi,
								link_file,
                                jam,
                                tanggal,
								tanggal_modif)
					values('".$this->input->post('judul')."',  
								'".$this->input->post('aktif')."',
								'".$this->input->post('jenis')."',
								'".$this->session->userdata('id_user')."', 
								'".$this->input->post('keterangan')."',
								'".$this->input->post('penyusun')."',
								'".$this->input->post('penulis')."', 
								'".$this->input->post('penerbit')."',
								'".$this->input->post('ketersediaan')."',
								'".$this->input->post('tahun')."',
								'".$this->input->post('deskripsi')."',
								'".$this->input->post('link_file')."',
								'".$jamsekarang."',
								'".$tanggal."',
								'".$tanggal."')"); 
			} 
			echo "<meta http-equiv='refresh' content='0; url=".base_url()."buku'>"; 
		}
		else {
			$this->denied();
		} 
    }
	
function a_edit()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{  
			$kode=$this->input->post('id');
			$a=substr($this->input->post('tanggal'), 6,9);
			$b=substr($this->input->post('tanggal'), 3,2);
			$c=substr($this->input->post('tanggal'), 0,2);
			$tanggal=$a.'-'.$b.'-'.$c; 
			$pathi = date('Y/m/d');
			
			$seo_judul=seo_link($this->input->post('judul'));
			//$hariini=nama_hari($tanggal);
			$jamsekarang = date("H:i:s");
			
			/* s: property gambar */
			$lokasi_file    = $_FILES['imagefile']['tmp_name'];
			$tipe_file      = $_FILES['imagefile']['type'];
			$nama_file      = seo_image($_FILES['imagefile']['name']);
			$acak           = rand(1,99);
			$filename = $acak.$nama_file; 
			$upload_dir = '../foto_buku/'.$pathi.'/';
			/* e: property gambar */ 
		 
			 
			if (!empty($lokasi_file)){ 
			if ($tipe_file != "image/jpeg"){
				echo "<script>window.alert('File Harus Berformat .JPG!');
			window.location=('".base_url()."buku/edit/".$this->uri->segment(3,0)."')</script>"; }
			else{
			$tglsekarang=date('Y-m-d');
			$query = $this->db->query('SELECT gambar, tanggal_modif FROM buku WHERE id_buku="'.$kode.'";');
			$row = $query->row();

			
			/* s: property gambar */
			RmkDir($upload_dir, $mode = 0777); 
			UploadFoto($filename,$upload_dir,1000,'imagefile'); 
			/* e: property gambar */  
			
			$this->M_dataadmin->query_manual("UPDATE buku SET judul = '".$this->input->post('judul')."',
						penyusun  = '".$this->input->post('penyusun')."',
						keterangan = '".$this->input->post('keterangan')."',
						penulis  = '".$this->input->post('penulis')."',
						penerbit  = '".$this->input->post('penerbit')."',
						ketersediaan  = '".$this->input->post('ketersediaan')."',
						tahun  = '".$this->input->post('tahun')."',
						deskripsi  = '".$this->input->post('deskripsi')."',
						link_file  = '".$this->input->post('link_file')."',
						tanggal_modif  = '".$pathi."',
						aktif   = '".$this->input->post('aktif')."', 
						gambar      = '".$filename."'
			WHERE id_buku   = '".$kode."'"); 
			}
	$this->redirect();				
			
		}
		
		else{
					$this->M_dataadmin->query_manual("UPDATE buku SET judul = '".$this->input->post('judul')."',
						penyusun  = '".$this->input->post('penyusun')."',
						keterangan = '".$this->input->post('keterangan')."',
						penulis  = '".$this->input->post('penulis')."',
						penerbit  = '".$this->input->post('penerbit')."',
						ketersediaan  = '".$this->input->post('ketersediaan')."',
						tahun  = '".$this->input->post('tahun')."',
						deskripsi  = '".$this->input->post('deskripsi')."',
						link_file  = '".$this->input->post('link_file')."',
						tanggal_modif  = '".$pathi."',
						aktif   = '".$this->input->post('aktif')."' 
						
			WHERE id_buku   = '".$kode."'"); 	
			$this->redirect();	
		}
		}
		else {
			$this->denied();
		}
	}	
	
	function delete()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{  
			$query = $this->M_dataadmin->editbuku($this->uri->segment(3,0)); 
			$row = $query->row();
			if ($this->session->userdata('id_user') == $row->username or $leveluser=="admin") {
			$kode=$this->uri->segment(3,0);
			$query = $this->db->query('SELECT gambar,tanggal_modif FROM buku WHERE id_buku='.$kode.';');
			$row = $query->row(); 
				
			if ($row->gambar!=''){
				$pathi=$row->tanggal_modif;
				$pathdelete=str_replace("-","/",$pathi);
				$this->M_dataadmin->query_manual("DELETE FROM buku WHERE id_buku='".$kode."'"); 
				unlink("../foto_buku/".$pathdelete."/".$row->gambar);
				unlink("../foto_buku/".$pathdelete."/small_".$row->gambar);  
			}
			else{
				$this->M_dataadmin->query_manual("DELETE FROM buku WHERE id_buku=".$kode.""); 
			}
			//REDIRECT AWAL
			$this->redirect();
			}
			else {
				$this->denied();
			} 
			
		}
		else {
			$this->denied();
		} 
    }	
	
	function deleteall()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{   
		 
				$cek = $this->input->post('cek');  
				$jumlah = count($cek);
				if(!empty($cek)){ 
				if ($leveluser=="admin") {
					for($i=0;$i<$jumlah;$i++){
					//echo $jumlah." - $cek[$i] - ".$cek[$i]; 
						$query = $this->db->query("SELECT gambar,tanggal_modif FROM buku WHERE id_buku='".$cek[$i]."'");
						$row = $query->row();  
						if ($row->gambar!=''){
							$pathi=$row->tanggal_modif;
							$pathdelete=str_replace("-","/",$pathi);
							unlink("../foto_buku/".$pathdelete."/".$row->gambar);
							unlink("../foto_buku/".$pathdelete."/small_".$row->gambar);  
						}
						$this->M_dataadmin->query_manual("DELETE FROM buku WHERE id_buku='".$cek[$i]."'");    
					}  
				}
				else {
					for($i=0;$i<$jumlah;$i++){
					//echo $jumlah." - $cek[$i] - ".$cek[$i]; 
						$query = $this->db->query("SELECT gambar,tanggal_modif FROM buku WHERE username='".$this->session->userdata('id_user')."' and id_buku='".$cek[$i]."'");
						$row = $query->row();  
						$jumlah = $query->num_rows();
						if ($jumlah>0) {
						if ($row->gambar!=''){
							$pathi=$row->tanggal_modif;
							$pathdelete=str_replace("-","/",$pathi);
							unlink("../foto_buku/".$pathdelete."/".$row->gambar);
							unlink("../foto_buku/".$pathdelete."/small_".$row->gambar);  
							}
							$this->M_dataadmin->query_manual("DELETE FROM buku WHERE username='".$this->session->userdata('id_user')."' and id_buku='".$cek[$i]."'"); 
						}
					} 
				} 
				}
				//REDIRECT AWAL
				$this->redirect();
			
		}
		else {
			$this->denied();
		} 
    }
	
	function aktif()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{
		$kode=$this->uri->segment(3,0);
			if ($leveluser=="admin") { 
				$this->M_dataadmin->query_manual("UPDATE buku SET aktif='Y' WHERE id_buku=".$kode."");  
				$this->redirect();
			}
			else {
				$query = $this->db->query("SELECT * FROM buku WHERE username='".$this->session->userdata('id_user')."' and id_buku='".$kode."'");
				$jumlah = $query->num_rows();
				if ($jumlah>0) {
					$this->M_dataadmin->query_manual("UPDATE buku SET aktif='Y' WHERE id_buku=".$kode."");
					$this->redirect();
				}
				else {
					$this->denied();
				}
			} 
		}
		else {
			$this->denied();
		} 
    }	
	
	function nonaktif()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{
		$kode=$this->uri->segment(3,0);
			if ($leveluser=="admin") { 
				$this->M_dataadmin->query_manual("UPDATE buku SET aktif='N' WHERE id_buku=".$kode."");  
				$this->redirect();
			}
			else {
				$query = $this->db->query("SELECT * FROM buku WHERE username='".$this->session->userdata('id_user')."' and id_buku='".$kode."'");
				$jumlah = $query->num_rows();
				if ($jumlah>0) {
					$this->M_dataadmin->query_manual("UPDATE buku SET aktif='N' WHERE id_buku=".$kode."");
					$this->redirect();
				}
				else {
					$this->denied();
				}
			} 
		}
		else {
			$this->denied();	 
		} 
    }

	public function denied () {
		$data['vdata']='access-denied';  
		$data['judulapp']="Access Denied";
		$data['vnavigasi']='navigasi'; 
		$this->load->view('dashboard',$data);
	}
	
	public function redirect () {
		echo "<meta http-equiv='refresh' content='0; url=".base_url()."buku'>";
	}
	
	  
}

