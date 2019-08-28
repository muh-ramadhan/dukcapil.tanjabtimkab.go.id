<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pengumuman extends CI_Controller {

	public function __construct ()
	{
		parent::__construct();
		$this->load->helper(array("html","form","url","text"));
		$this->load->library('pagination');
		$this->load->model("M_data");
		$this->load->helper('tgl_indonesia');
		$this->load->helper('fungsi_seo');
		$this->load->helper('fungsi_sizeunit'); 
	}
	
	public function index ()
	{  
		$query = $this->db->query("select count(*) as jml from pengumuman where  aktif = 'Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/pengumuman/index/';
        $config['total_rows'] = $row;
        $config['per_page'] = 10;
        $config['uri_segment'] = 3;
		$config['next_link']='Berikutnya &gt;';
		$config['prev_link']='&lt; Sebelumnya';
		 
        $this->pagination->initialize($config);
		$data['pagination']=$this->pagination->create_links();
        $data['artikel'] = $this->M_data->allpengumuman($config['per_page'], $this->uri->segment(3));
	
		$data['judulapp']="Pengumuman | ".$this->M_data->titlesistem(1);	
		
		$data['keyword']="pengumuman, ".$this->M_data->keyword(1);
		$data['deskripsi']="pengumuman, ".$this->M_data->deskripsi(1);
		
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur";   
		 
		 
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentpengumuman';
		$this->load->view("v_datakirikanan",$data);
	}


	
	public function detail ()
	{	 
		$data['detail_pengumuman']=$this->M_data->idpengumuman($this->uri->segment(3,0)); 

		$data['judulapp']=$this->M_data->judulpengumuman($this->uri->segment(3,0))." | ".$this->M_data->titlesistem(1);	
		$data['keyword']=$this->M_data->keyword(1);
		$data['deskripsi']=$this->M_data->deskripsi(1); 
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur";   
				
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentpengumuman';
		$this->load->view("v_datakirikanan",$data);
	}  
}



