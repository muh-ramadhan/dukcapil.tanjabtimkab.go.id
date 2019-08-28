<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kegiatan extends CI_Controller {

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
		$data['menu'] = $this->M_data->getMenu2(2,""); 
		$query = $this->db->query("select count(*) as jml from kegiatan where  aktif = 'Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/kegiatan/index/';
		//$config['base_url'] = base_url().'/dpo/index/';
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
        $data['artikel'] = $this->M_data->allkegiatan($config['per_page'], $offset);
		
		$data['judulapp']= "Agenda Kegiatan | ".$this->M_data->titlesistem(1);	
		$data['keyword']=$this->M_data->keyword(1);
		$data['deskripsi']=$this->M_data->deskripsi(1);
		$data['judulan']="Agenda Kegiatan";
		
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		  
		$data['vkanan']='v_kanan1';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentkegiatan';
		$this->load->view("v_datakirikanan",$data); 

	}
	
	
	public function detail ()
	{
		$data['detail_kegiatan']=$this->M_data->idkegiatan($this->uri->segment(3,0));
		$data['menu'] = $this->M_data->getMenu2(2,""); 
		$data['judulan']=$this->M_data->judulkegiatan($this->uri->segment(3,0));
		$data['judulapp']=$this->M_data->judulkegiatan($this->uri->segment(3,0))." | ".$this->M_data->titlesistem(1);	
		$data['keyword']="agenda masyarakat, ".$this->M_data->keyword(1);
		$data['deskripsi']="agenda masyarakat ".$this->M_data->deskripsi(1);
		
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		 
		
		$data['vkanan']='v_kanan1';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentkegiatan';
		$this->load->view("v_datakirikanan",$data); 
	}
	
}