<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Livestreaming extends CI_Controller {

	public function __construct ()
	{ 
		parent::__construct(); 
		$this->load->helper(array("html","form","url","text")); 
		$this->load->library('pagination'); 
		$this->load->model("M_data"); 
		$this->load->helper('tgl_indonesia'); 
		$this->load->helper('fungsi_seo');  
	}
	public function index ()
	{  
		 
		$data['deskripsi']="Live Streaming | ".$this->M_data->titlesistem(1); 
		$data['judulapp']="Live Streaming | ".$this->M_data->titlesistem(1);
		$data['judulan']="Live Streaming";
		$data['keyword']="live streaming, ".$this->M_data->titlesistem(1);
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur";   
		
		$data['vkanan']='v_kanan1';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentlive';
		$this->load->view("v_datakirikanan",$data);
	}	public function kanal1 ()	{  		$query = $this->db->query('SELECT kanal1 FROM livestreaming WHERE id_livestreaming=1;');		$row = $query->row(); 		if ($query->num_rows() > 0) {			echo $row->kanal1;		}	 	}	public function kanal2 ()	{  		$query = $this->db->query('SELECT kanal2 FROM livestreaming WHERE id_livestreaming=1;');		$row = $query->row(); 		if ($query->num_rows() > 0) {			echo $row->kanal2;		}	 	}	public function kanal3 ()	{  		$query = $this->db->query('SELECT kanal3 FROM livestreaming WHERE id_livestreaming=1;');		$row = $query->row(); 		if ($query->num_rows() > 0) {			echo $row->kanal3;		}	 	}	public function kanal4 ()	{  		$query = $this->db->query('SELECT kanal4 FROM livestreaming WHERE id_livestreaming=1;');		$row = $query->row(); 		if ($query->num_rows() > 0) {			echo $row->kanal4;		}	 	}
	
	
}