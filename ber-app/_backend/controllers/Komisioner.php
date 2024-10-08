<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Komisioner extends CI_Controller {

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
		$query = $this->db->query("select count(*) as jml from komisioner");
        foreach ($query->result() as $row) {
            $jumlah = $row->jml;
        }
        $config['base_url'] = base_url().'/komisioner/index/';
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
        $data['artikel'] = $this->M_dataadmin->indexkomisioner('', $config['per_page'], $offset);
		if ($this->uri->segment(3)==null) {
			$page=0;
		}
		else {
			$page=$this->uri->segment(3);
		} 
			//LOADING VIEW
			$data['vdata']='v_komisioner';
		}
		else {
			$data['vdata']='access-denied'; 
		}
		
		//$data['vdata']='v_identitas';
		$data['judulapp']="Data Komisioner";
		$data['vnavigasi']='navigasi'; 
		$this->load->view('dashboard',$data);	 
    } 

function add()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{
			$data['vdata']='v_komisioner';
		}
		else {
			$data['vdata']='access-denied'; 
		}
		
		//$data['vdata']='v_identitas';
		$data['judulapp']="Tambah Komisioner";
		$data['vnavigasi']='navigasi'; 
		$this->load->view('dashboard',$data);	 
    }
function edit()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{
			$query = $this->M_dataadmin->editkomisioner($this->uri->segment(3,0)); 
			$row = $query->row();
			if ($this->session->userdata('id_user') == $row->username or $leveluser=="admin") {
				$data['vdata']='v_komisioner';
			}
			else {
				$data['vdata']='access-denied'; 
			}
		}
		else {
			$data['vdata']='access-denied'; 
		} 
		$data['judulapp']="Edit Komisioner";
		$data['vnavigasi']='navigasi'; 
		$this->load->view('dashboard',$data);	 
    }
	
function a_simpan()
    {
		$leveluser = trim($this->session->userdata('level')); 
		$cek = permissionadmin($this->uri->segment(1,0),$this->session->userdata('session_id')); 
		if ($leveluser=="admin" or $cek==1)
		{
			
		/** S:CEK DATA **/  
		/*
		$this->form_validation->set_rules('judul', 'lang:Judul Komisioner', 'required');
        $this->form_validation->set_rules('isi_komisioner', 'lang:Isi Komisioner', 'required'); 
		
		if($this->form_validation->run() == TRUE)
        { 
		
		}
		else {
			echo "<meta http-equiv='refresh' content='0; url=".base_url()."komisioner/add'>";
		}
		*/	
		/** E:CEK DATA **/ 
		
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
			$upload_dir = '../foto_komisioner/'.$pathi.'/';
			
			if ($this->input->post('lahir_none')=="Y") {
				$no_lahir="Y";
				$tgl_lahir="0000-00-00";
			}
			else {
				$no_lahir="N";
				$tgl_lahir=$this->input->post('thn_lahir').'-'.$this->input->post('bln_lahir').'-'.$this->input->post('tgl_lahir'); 
			}
			 
			/* e: property gambar */   
	 
			
			if (!empty($lokasi_file)){ 
			if ($tipe_file == "image/jpeg"){
			/* s: property gambar */
			RmkDir($upload_dir, $mode = 0777); 
			UploadFoto($filename,$upload_dir,400,'imagefile'); 
			/* e: property gambar */  
			$this->M_dataadmin->query_manual("insert into komisioner (nama_komisioner, 
                                   tempat,
								   aktif,
								   tgl_lahir,
								   kelamin,
                                   alamat, 
								   agama, 
								   id_jabatan,  
								   pendidikan,  
								   organisasi, 
								   pekerjaan,
									tulisan,
								   no_tgl_lahir, 
								   gambar,
								   keterangan,
								   username,
								   tgl_modif,
								   tgl_upload)
							values('".$this->input->post('namakomisioner')."',  
                                   '".$this->input->post('tempatlahir')."', 
								   'Y',
								   '".$tgl_lahir."', 
								   '".$this->input->post('kelamin')."',
                                   '".$this->input->post('alamat')."', 
								   '".$this->input->post('agama')."', 
								   '".$this->input->post('jabatan')."',
								   '".$this->input->post('riwayatpendidikan')."',
								   '".$this->input->post('riwayatorganisasi')."',
								   '".$this->input->post('riwayatpekerjaan')."',
								   '".$this->input->post('tulisan')."',
								   '".$no_lahir."',  
								   '".$filename."',
								   '".$this->input->post('keterangan')."',
								   '".$this->session->userdata('id_user')."',
								   '".$tanggal."',
								   '".$tanggal."')");  
			}
			else {
				echo "File Harus Berformat .JPG";
			}
			}
			else {
			$this->M_dataadmin->query_manual("insert into komisioner (nama_komisioner, 
                                   tempat,
								   aktif,
								   tgl_lahir,
								   kelamin,
                                   alamat, 
								   agama, 
								   id_jabatan,  
								   pendidikan,  
								   organisasi, 
								   pekerjaan,
									tulisan,
								   no_tgl_lahir,  
								   keterangan,
								   username,
								   tgl_modif,
								   tgl_upload)
							values('".$this->input->post('namakomisioner')."',  
                                   '".$this->input->post('tempatlahir')."', 
								   'Y',
								   '".$tgl_lahir."', 
								   '".$this->input->post('kelamin')."',
                                   '".$this->input->post('alamat')."', 
								   '".$this->input->post('agama')."', 
								   '".$this->input->post('jabatan')."',
								   '".$this->input->post('riwayatpendidikan')."',
								   '".$this->input->post('riwayatorganisasi')."',
								   '".$this->input->post('riwayatpekerjaan')."',
								   '".$this->input->post('tulisan')."',
								   '".$no_lahir."',   
								   '".$this->input->post('keterangan')."',
								   '".$this->session->userdata('id_user')."',
								   '".$tanggal."',
								   '".$tanggal."')");  
			
			} 
			$this->redirect();
			//echo "<meta http-equiv='refresh' content='0; url=".base_url()."komisioner'>"; 
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
			$hariini=nama_hari($tanggal);
			$jamsekarang = date("H:i:s");
			$tglsekarang=date('Y-m-d');
			/* s: property gambar */
			$lokasi_file    = $_FILES['imagefile']['tmp_name'];
			$tipe_file      = $_FILES['imagefile']['type'];
			$nama_file      = seo_image($_FILES['imagefile']['name']);
			$acak           = rand(1,99);
			$filename = $acak.$nama_file; 
			$upload_dir = '../foto_komisioner/'.$pathi.'/';
			/* e: property gambar */ 
			
	if ($this->input->post('lahir_none')=="Y") {
		$no_lahir="Y";
		$tgl_lahir="0000-00-00";
	}
	else {
		$no_lahir="N";
		$tgl_lahir=$this->input->post('thn_lahir').'-'.$this->input->post('bln_lahir').'-'.$this->input->post('tgl_lahir'); 
	}
	 	 
			if (!empty($lokasi_file)){ 
			if ($tipe_file == "image/jpeg"){
			
			$query = $this->db->query('SELECT gambar, tgl_modif FROM komisioner WHERE id_komisioner="'.$kode.'";');
			$row = $query->row();
			if ($row->gambar!=''){
				$pathdelete=str_replace("-","/",$row->tgl_modif); 
				unlink("../foto_komisioner/".$pathdelete."/".$row->gambar);
				unlink("../foto_komisioner/".$pathdelete."/small_".$row->gambar); 
			}
			
			/* s: property gambar */
			RmkDir($upload_dir, $mode = 0777); 
			UploadFoto($filename,$upload_dir,400,'imagefile'); 
			/* e: property gambar */  
			
			$this->M_dataadmin->query_manual("UPDATE komisioner SET nama_komisioner       = '".$this->input->post('namakomisioner')."', 
                                   tempat = '".$this->input->post('tempatlahir')."',
								   aktif = '".$this->input->post('aktif')."',
								   tgl_lahir = '".$tgl_lahir."', 
								   no_tgl_lahir	= '".$no_lahir."', 
								   kelamin = '".$this->input->post('kelamin')."',
								   agama = '".$this->input->post('agama')."',
                                   alamat	= '".$this->input->post('alamat')."', 
								   id_jabatan = '".$this->input->post('jabatan')."',   
								   pendidikan = '".$this->input->post('riwayatpendidikan')."', 
								   pekerjaan = '".$this->input->post('riwayatpekerjaan')."',
								   organisasi = '".$this->input->post('riwayatorganisasi')."',
								   tulisan = '".$this->input->post('tulisan')."', 
								   keterangan = '".$this->input->post('keterangan')."',
								   tgl_modif = '".$tglsekarang."',
								   gambar      = '".$filename."' 
				WHERE id_komisioner   = '".$kode."'"); 
				
			}
			else {
				echo "<script>window.alert('File Harus Berformat .JPG!');
						window.location=('".base_url()."komisioner/edit/".$this->uri->segment(3,0)."')</script>"; 
			}
			}
			else {
				$this->M_dataadmin->query_manual("UPDATE komisioner SET nama_komisioner       = '".$this->input->post('namakomisioner')."', 
                                   tempat = '".$this->input->post('tempatlahir')."',
								   aktif = '".$this->input->post('aktif')."',
								   tgl_lahir = '".$tgl_lahir."', 
								   no_tgl_lahir	= '".$no_lahir."', 
								   kelamin = '".$this->input->post('kelamin')."',
								   agama = '".$this->input->post('agama')."',
                                   alamat	= '".$this->input->post('alamat')."', 
								   id_jabatan = '".$this->input->post('jabatan')."',   
								   pendidikan = '".$this->input->post('riwayatpendidikan')."', 
								   pekerjaan = '".$this->input->post('riwayatpekerjaan')."',
								   organisasi = '".$this->input->post('riwayatorganisasi')."',
								   tulisan = '".$this->input->post('tulisan')."', 
								   keterangan = '".$this->input->post('keterangan')."',
								   tgl_modif = '".$tglsekarang."'
				WHERE id_komisioner   = '".$kode."'"); 
			} 
			$this->redirect();
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
			$query = $this->M_dataadmin->editkomisioner($this->uri->segment(3,0)); 
			$row = $query->row();
			if ($this->session->userdata('id_user') == $row->username or $leveluser=="admin") {
			$kode=$this->uri->segment(3,0);
			$query = $this->db->query('SELECT gambar,tgl_modif FROM komisioner WHERE id_komisioner='.$kode.';');
			$row = $query->row(); 
				
			if ($row->gambar!=''){
				$pathi=$row->tgl_modif;
				$pathdelete=str_replace("-","/",$pathi);
				$this->M_dataadmin->query_manual("DELETE FROM komisioner WHERE id_komisioner='".$kode."'"); 
				unlink("../foto_komisioner/".$pathdelete."/".$row->gambar);
				unlink("../foto_komisioner/".$pathdelete."/small_".$row->gambar);  
			}
			else{
				$this->M_dataadmin->query_manual("DELETE FROM komisioner WHERE id_komisioner=".$kode.""); 
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
						$query = $this->db->query("SELECT gambar,tgl_modif FROM komisioner WHERE id_komisioner='".$cek[$i]."'");
						$row = $query->row();  
						if ($row->gambar!=''){
							$pathi=$row->tgl_modif;
							$pathdelete=str_replace("-","/",$pathi);
							unlink("../foto_komisioner/".$pathdelete."/".$row->gambar);
							unlink("../foto_komisioner/".$pathdelete."/small_".$row->gambar);  
						}
						$this->M_dataadmin->query_manual("DELETE FROM komisioner WHERE id_komisioner='".$cek[$i]."'");    
					}  
				}
				else {
					for($i=0;$i<$jumlah;$i++){
					//echo $jumlah." - $cek[$i] - ".$cek[$i]; 
						$query = $this->db->query("SELECT gambar,tgl_modif FROM komisioner WHERE username='".$this->session->userdata('id_user')."' and id_komisioner='".$cek[$i]."'");
						$row = $query->row();  
						$jumlah = $query->num_rows();
						if ($jumlah>0) {
						if ($row->gambar!=''){
							$pathi=$row->tgl_modif;
							$pathdelete=str_replace("-","/",$pathi);
							unlink("../foto_komisioner/".$pathdelete."/".$row->gambar);
							unlink("../foto_komisioner/".$pathdelete."/small_".$row->gambar);  
							}
							$this->M_dataadmin->query_manual("DELETE FROM komisioner WHERE username='".$this->session->userdata('id_user')."' and id_komisioner='".$cek[$i]."'"); 
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
				$this->M_dataadmin->query_manual("UPDATE komisioner SET aktif='Y' WHERE id_komisioner=".$kode."");  
				$this->redirect();
			}
			else {
				$query = $this->db->query("SELECT * FROM komisioner WHERE username='".$this->session->userdata('id_user')."' and id_komisioner='".$kode."'");
				$jumlah = $query->num_rows();
				if ($jumlah>0) {
					$this->M_dataadmin->query_manual("UPDATE komisioner SET aktif='Y' WHERE id_komisioner=".$kode."");
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
				$this->M_dataadmin->query_manual("UPDATE komisioner SET aktif='N' WHERE id_komisioner=".$kode."");  
				$this->redirect();
			}
			else {
				$query = $this->db->query("SELECT * FROM komisioner WHERE username='".$this->session->userdata('id_user')."' and id_komisioner='".$kode."'");
				$jumlah = $query->num_rows();
				if ($jumlah>0) {
					$this->M_dataadmin->query_manual("UPDATE komisioner SET aktif='N' WHERE id_komisioner=".$kode."");
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
		echo "<meta http-equiv='refresh' content='0; url=".base_url()."komisioner'>";
	}
	
	  
}

