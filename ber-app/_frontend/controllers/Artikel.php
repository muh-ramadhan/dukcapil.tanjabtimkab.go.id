<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Artikel extends CI_Controller {

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
		$query = $this->db->query("select count(*) as jml from artikel where aktif = 'Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/artikel/index/';
        $config['total_rows'] = $row;
        $config['per_page'] = 8;
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
        $data['artikel'] = $this->M_data->allartikel($config['per_page'], $offset);
		$data['postingby']="Bagian Hukum Kab. Tanjung Jabung Timur"; 
		$data['judulapp']="Semua Berita ".$this->M_data->titlesistem(1);		
		$data['keyword']=$this->M_data->keyword(1);
		$data['deskripsi']=$this->M_data->deskripsi(1);
		$data['judulan']="Semua Berita";
		 
		
		$data['vkanan']='v_kanan1';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentartikelall';
		$this->load->view("v_datakirikanan",$data);

	}
	
	
	public function detail ()
	{
		$data['judulapp']=$this->M_data->judulartikel($this->uri->segment(3,0))." | ".$this->M_data->titlesistem(1);		
		$data['keyword']=$this->M_data->judulartikel($this->uri->segment(3,0)).", ".$this->M_data->keyword(1);
		$data['deskripsi']=character_limiter(strip_tags($this->M_data->deskripsiartikel($this->uri->segment(3,0))), 500);
		//character_limiter($this->M_data->deskripsiartikel($this->uri->segment(3,0)), 500);
		$data['detail_artikel']=$this->M_data->idartikel($this->uri->segment(3,0)); 
		$data['judulan']=$this->M_data->judulan($this->uri->segment(3,0));
		 
		
		$data['vkanan']='v_kanan1';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentartikel';
		$this->load->view("v_datakirikanan",$data);
	}
	
	public function pdf ($id='')
	{
		$this->load->library('PDF_MC_Table');
		$query = $this->db->query('SELECT * FROM artikel WHERE id_artikel="'.$id.'";');
		$row = $query->row();
		if ($query->num_rows() > 0) {
				$data['ada']=1;
				//$data['kategori']=$row->id_kategorilaporan;
				//$data['tahun']=$row->tahun;
				//$data['bulan']=$row->triwulan;
				$data['idartikel']=$id;
			}
			else {
				$data['ada']=0;
		}
		
		$data['judulapp']=$this->M_data->judulartikel($this->uri->segment(3,0))." | ".$this->M_data->titlesistem(1);	
		$data['detail_artikel']=$this->M_data->idartikel($this->uri->segment(3,0));
		//$data['detail']=$this->M_data->idkependudukan($this->uri->segment(3,0)); 
		$this->load->view("v_pdf",$data);
	}
	  
	
	 
}



