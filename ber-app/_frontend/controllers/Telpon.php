<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Telpon extends CI_Controller {

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
		$query = $this->db->query("select count(*) as jml from telpon where  aktif = 'Y'"); 
        foreach ($query->result() as $row) { 
            $row = $row->jml; 
        } 
        $config['base_url'] = base_url().'/telpon/index/';
        $config['total_rows'] = $row;
        $config['per_page'] = 15;
        $config['uri_segment'] = 3;
		$config['next_link']='Berikutnya &gt;';
		$config['prev_link']='&lt; Sebelumnya';
        $this->pagination->initialize($config);
		$data['pagination']=$this->pagination->create_links();
        $data['artikel'] = $this->M_data->alltelpon($config['per_page'], $this->uri->segment(3)); 
		$data['deskripsi']="Telpon Penting | ".$this->M_data->titlesistem(1); 
		$data['judulapp']="Semua Telpon Penting | ".$this->M_data->titlesistem(1);
		$data['judulan']="Semua Telpon Penting";
		$data['keyword']="telpon penting polres kolaka, ".$this->M_data->titlesistem(1);
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur";   
		
		$data['vkanan']='v_kanan1';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contenttelponall';
		$this->load->view("v_datakirikanan",$data);
}
	
	
}