<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Weblinks extends CI_Controller {

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
		$query = $this->db->query("select count(*) as jml from weblink where  aktif = 'Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/weblinks/index/';
        $config['total_rows'] = $row;
        $config['per_page'] = 10;
        $config['uri_segment'] = 3;
		$config['use_page_numbers'] = TRUE;
		$config['next_link']='Berikutnya &gt;';
		$config['prev_link']='&lt; Sebelumnya';
        $this->pagination->initialize($config); 
		$data['pagination']=$this->pagination->create_links();
		if($this->uri->segment(3) > 0)
			$offset = ($this->uri->segment(3) + 0)*$config['per_page'] - $config['per_page'];
		else
			$offset = $this->uri->segment(3);
        $data['artikel'] = $this->M_data->allweblink($config['per_page'], $offset);
		 
		
		$data['judulapp']="Semua Weblink | ".$this->M_data->titlesistem(1) ;
 
		$data['keyword']="weblink, ".$this->M_data->keyword(1);
		$data['deskripsi']="weblink, ".$this->M_data->deskripsi(1);  
		$data['postingby']="Bagian Hukum Kab. Tanjung Jabung Timur"; 
		$data['judulapp']="Semua Weblink | ".$this->M_data->titlesistem(1) ;
		$data['judulan']="Weblink Terkait";
		 
		$data['vkanan']='v_kanan1';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentweblinkall';
		$this->load->view("v_datakirikanan",$data); 
	}
	
	
}