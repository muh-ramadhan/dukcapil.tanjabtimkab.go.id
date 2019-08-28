<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sambutan extends CI_Controller {

	function __construct(){  
		parent::__construct();
		$this->load->helper(array('html','form','url','text',  'captcha','date','text_helper','permissionadmin')); 
		$this->load->library(array('recaptcha', 'form_validation')); 
		$this->load->model('M_dataadmin'); 
		$this->load->library('session');
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
			$data['vdata']='v_sambutan';
		}
		else {
			$data['vdata']='access-denied'; 
		}
		
		//$data['vdata']='v_sambutan';
		$data['judulapp']="Identitas Website";
		$data['vnavigasi']='navigasi'; 
		$this->load->view('dashboard',$data);	 
    } 
	
	function a_simpan()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{  
			$kode=$this->input->post('id'); 
			
			/* s: property gambar */
			$lokasi_file    = $_FILES['imagefile']['tmp_name'];
			$tipe_file      = $_FILES['imagefile']['type'];
			$nama_file      = seo_image($_FILES['imagefile']['name']);
			$acak           = rand(1,99);
			$filename = $acak.$nama_file; 
			$upload_dir = '../images/';
			/* e: property gambar */ 
			$tglsekarang=date('Y-m-d');
			
			if (!empty($lokasi_file)){  
			$query = $this->db->query('SELECT gambar FROM sambutan WHERE id_sambutan="'.$kode.'";');
			$row = $query->row(); 
			unlink("../images/".$row->gambar);  
			RmkDir($upload_dir, $mode = 0777); 
			UploadLogo($filename,$upload_dir,1000,'imagefile');  
			
			$this->M_dataadmin->query_manual("UPDATE sambutan SET judul = '".$this->input->post('judul')."', 
						link  = '".$this->input->post('link')."', 
						isi_sambutan = '".$this->input->post('isi')."',
						nama = '".$this->input->post('nama')."',
						tgl_posting  = '".$tglsekarang."',
						tgl_update     = '".$tglsekarang."',
						username     = '".$this->session->userdata('id_user')."', 
						gambar     = '".$filename."' 
				WHERE id_sambutan   = '".$kode."'"); 
				
			 
			}
			else {
				$this->M_dataadmin->query_manual("UPDATE sambutan SET judul = '".$this->input->post('judul')."', 
						link  = '".$this->input->post('link')."', 
						isi_sambutan = '".$this->input->post('isi')."',
						nama = '".$this->input->post('nama')."',
						tgl_posting  = '".$tglsekarang."',
						tgl_update     = '".$tglsekarang."',
						username     = '".$this->session->userdata('id_user')."' 
				WHERE id_sambutan   = '".$kode."'"); 
			} 
			echo "<meta http-equiv='refresh' content='0; url=".base_url()."sambutan'>"; 
		}
		else {
			$data['vdata']='access-denied';  
			$data['judulapp']="Access Denied";
			$data['vnavigasi']='navigasi'; 
			$this->load->view('dashboard',$data);	 
		} 
    }	
	
}

