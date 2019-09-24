<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Peraturan extends CI_Controller { 
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
		$data['deskripsi']="Produk Hukum - ".$this->M_data->titlesistem(1);	
		$data['judulapp']="Produk Hukum | ".$this->M_data->titlesistem(1);
		$data['judulan']="Produk Hukum "; 
		$data["katprodukhukum"]=$this->M_data->katprodukhukum();
		$data['keyword']=$this->M_data->keyword(1);  
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		  
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentperaturan';
		$this->load->view("v_datakirikanan",$data);  
	}
	
	public function bykategori ()
	{
		$session['perkategori'] = false;  
		$this->session->set_userdata($session);
		echo "<meta http-equiv='refresh' content='0; url=".base_url()."peraturan'>";
	}
	public function bytahun ()
	{
		$session['perkategori'] = true;  
		$this->session->set_userdata($session);
		echo "<meta http-equiv='refresh' content='0; url=".base_url()."peraturan'>";
	}
	
	
	public function detail ()
	{
		$data['detail_berita']=$this->M_data->idprodukhukum($this->uri->segment(3,0));
		$data['menu'] = $this->M_data->getMenu2(2,""); 
		$data['judulan']=$this->M_data->judulprodukhukum($this->uri->segment(3,0));
		$data['judulapp']=$this->M_data->judulprodukhukum($this->uri->segment(3,0))." | ".$this->M_data->deskripsi(1);	
		$data['deskripsi']=$this->M_data->judulprodukhukum($this->uri->segment(3,0))." | ".$this->M_data->deskripsi(1);	
		$data['keyword']=$this->M_data->keyword(1);  
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		  
		
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentperaturan';
		$this->load->view("v_datakirikanan",$data);  
	}
		
	public function kategori ($id='')
	{ 
		$query = $this->db->query("select count(*) as jml from produkhukum where id_katprodukhukum = '".$id."' and aktif='Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/peraturan/kategori/'.$id.'/';
        $config['total_rows'] = $row;
        $config['per_page'] = '';
        $config['uri_segment'] = 4;
		$config['use_page_numbers'] = TRUE;
		$config['next_link']='Berikutnya &gt;';
		$config['prev_link']='&lt; Sebelumnya';
        $this->pagination->initialize($config); 
		$data['pagination']=$this->pagination->create_links();

		if($this->uri->segment(4) > 0)
			$offset = ($this->uri->segment(4) + 0)*$config['per_page'] - $config['per_page'];
		else
			$offset = $this->uri->segment(4);
        $data['artikel'] = $this->M_data->getprodukhukumkat($id, $config['per_page'], $offset);
		$data['deskripsi']="Produk Hukum: ".$this->M_data->judulkatprodukhukum($this->uri->segment(3,0))." | ".$this->M_data->deskripsi(1);	
		$data['judulan']=$this->M_data->judulkatprodukhukum($this->uri->segment(3,0));
		$data['judulapp']="Kategori Produk Hukum: ".$this->M_data->judulkatprodukhukum($this->uri->segment(3,0))." | ". $this->M_data->titlesistem(1);
		$data['keyword']=$this->M_data->keyword(1);  
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		  
		
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentperaturan';
		$this->load->view("v_datakirikanan",$data);  
	} 
	
	
	public function pusat ()
	{
		$query = $this->db->query("select count(*) as jml from produkhukum where aktif='Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/peraturan/pusat/';
        $config['total_rows'] = $row;
        $config['per_page'] = '';
        $config['uri_segment'] = 4;
		$config['use_page_numbers'] = TRUE;
		$config['next_link']='Berikutnya &gt;';
		$config['prev_link']='&lt; Sebelumnya';
        $this->pagination->initialize($config); 
		$data['pagination']=$this->pagination->create_links();

		if($this->uri->segment(4) > 0)
			$offset = ($this->uri->segment(4) + 0)*$config['per_page'] - $config['per_page'];
		else
			$offset = $this->uri->segment(4);
        $data['artikel'] = $this->M_data->getpusat('', $config['per_page'], $offset);
		
		
		$data['deskripsi']="Produk Hukum Pusat - ".$this->M_data->titlesistem(1);	
		$data['judulapp']="Produk Hukum Pusat | ".$this->M_data->titlesistem(1);
		$data['judulan']="Produk Hukum Pusat ";  
		$data['keyword']=$this->M_data->keyword(1);  
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		  
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentpusat';
		$this->load->view("v_dataprodukhukum",$data);  
	}
	
	public function jabar ()
	{
		$query = $this->db->query("select count(*) as jml from produkhukum where aktif='Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/peraturan/jabar/';
        $config['total_rows'] = $row;
        $config['per_page'] = '';
        $config['uri_segment'] = 4;
		$config['use_page_numbers'] = TRUE;
		$config['next_link']='Berikutnya &gt;';
		$config['prev_link']='&lt; Sebelumnya';
        $this->pagination->initialize($config); 
		$data['pagination']=$this->pagination->create_links();

		if($this->uri->segment(4) > 0)
			$offset = ($this->uri->segment(4) + 0)*$config['per_page'] - $config['per_page'];
		else
			$offset = $this->uri->segment(4);
        $data['artikel'] = $this->M_data->getjabar('', $config['per_page'], $offset);
		
		
		$data['deskripsi']="Produk Hukum Provinsi Jawa Barat - ".$this->M_data->titlesistem(1);	
		$data['judulapp']="Produk Hukum Provinsi Jawa Barat | ".$this->M_data->titlesistem(1);
		$data['judulan']="Produk Hukum Provinsi Jawa Barat ";  
		$data['keyword']=$this->M_data->keyword(1);  
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		  
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentpusat';
		$this->load->view("v_dataprodukhukum",$data);  
	}
	
		public function tanjabtimkab ()
	{
		$query = $this->db->query("select count(*) as jml from produkhukum where aktif='Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/peraturan/tanjabtimkab/';
        $config['total_rows'] = $row;
        $config['per_page'] = '';
        $config['uri_segment'] = 4;
		$config['use_page_numbers'] = TRUE;
		$config['next_link']='Berikutnya &gt;';
		$config['prev_link']='&lt; Sebelumnya';
        $this->pagination->initialize($config); 
		$data['pagination']=$this->pagination->create_links();

		if($this->uri->segment(4) > 0)
			$offset = ($this->uri->segment(4) + 0)*$config['per_page'] - $config['per_page'];
		else
			$offset = $this->uri->segment(4);
        $data['artikel'] = $this->M_data->gettanjabtimkab('', $config['per_page'], $offset);
		
		
		$data['deskripsi']="Produk Hukum Daerah Kabupaten Sukabumi - ".$this->M_data->titlesistem(1);	
		$data['judulapp']="Produk Hukum Daerah Kabupaten Sukabumi | ".$this->M_data->titlesistem(1);
		$data['judulan']="Produk Hukum Daerah Kabupaten Sukabumi ";  
		$data['keyword']=$this->M_data->keyword(1);  
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		  
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentpusat';
		$this->load->view("v_dataprodukhukum",$data);  
	}
	
	
	public function tahun ($id='')
	{ 
		$query = $this->db->query("select count(*) as jml from produkhukum where tahun = '".$id."' and aktif='Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/peraturan/kategori/'.$id.'/';
        $config['total_rows'] = $row;
        $config['per_page'] = '';
        $config['uri_segment'] = 4;
		$config['use_page_numbers'] = TRUE;
		$config['next_link']='Berikutnya &gt;';
		$config['prev_link']='&lt; Sebelumnya';
        $this->pagination->initialize($config); 
		$data['pagination']=$this->pagination->create_links();

		if($this->uri->segment(4) > 0)
			$offset = ($this->uri->segment(4) + 0)*$config['per_page'] - $config['per_page'];
		else
			$offset = $this->uri->segment(4);
        $data['artikel'] = $this->M_data->getprodukhukumtahun($id, $config['per_page'], $offset);
		$data['deskripsi']="Produk Hukum Tahun ".$this->uri->segment(3,0)." | ".$this->M_data->deskripsi(1);	
		$data['judulan']="Produk Hukum Tahun ".$this->uri->segment(3,0);
		$data['judulapp']="Produk Hukum Tahun ".$this->uri->segment(3,0)." | ". $this->M_data->titlesistem(1);
		$data['keyword']=$this->M_data->keyword(1);  
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		  
		
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentperaturan';
		$this->load->view("v_dataprodukhukum",$data);  
	} 
	
	public function kategoritahun ($id='')
	{ 
		$query = $this->db->query("select count(*) as jml from produkhukum where id_katprodukhukum = '".$id."' and aktif='Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/peraturan/kategoritahun/'.$id.'/';
        $config['total_rows'] = $row;
        $config['per_page'] = '';
        $config['uri_segment'] = 4;
		$config['use_page_numbers'] = TRUE;
		$config['next_link']='Berikutnya &gt;';
		$config['prev_link']='&lt; Sebelumnya';
        $this->pagination->initialize($config); 
		$data['pagination']=$this->pagination->create_links();

		if($this->uri->segment(4) > 0)
			$offset = ($this->uri->segment(4) + 0)*$config['per_page'] - $config['per_page'];
		else
			$offset = $this->uri->segment(4);
        $data['artikel'] = $this->M_data->getprodukhukumkattahun($id, $config['per_page'], $offset, $this->uri->segment(4,0));
		$data['deskripsi']="Produk Hukum: ".$this->M_data->judulkatprodukhukum($this->uri->segment(3,0))." | ".$this->M_data->deskripsi(1);	
		$data['judulan']=$this->M_data->judulkatprodukhukum($this->uri->segment(3,0));
		$data['tahun']= $this->uri->segment(4,0);
		$data['judulapp']="Kategori Produk Hukum: ".$this->M_data->judulkatprodukhukum($this->uri->segment(3,0))." | ". $this->M_data->titlesistem(1);
		$data['keyword']=$this->M_data->keyword(1);  
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		  
		
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentperaturan';
		$this->load->view("v_dataprodukhukum",$data);  
	} 
	public function tahunkategori ($id='')
	{ 
		$query = $this->db->query("select count(*) as jml from produkhukum where id_katprodukhukum = '".$id."' and aktif='Y'");
        foreach ($query->result() as $row) {
            $row = $row->jml;
        }
        $config['base_url'] = base_url().'/peraturan/tahunkategori/'.$id.'/';
        $config['total_rows'] = $row;
        $config['per_page'] = '';
        $config['uri_segment'] = 4;
		$config['use_page_numbers'] = TRUE;
		$config['next_link']='Berikutnya &gt;';
		$config['prev_link']='&lt; Sebelumnya';
        $this->pagination->initialize($config); 
		$data['pagination']=$this->pagination->create_links();

		if($this->uri->segment(4) > 0)
			$offset = ($this->uri->segment(4) + 0)*$config['per_page'] - $config['per_page'];
		else
			$offset = $this->uri->segment(4);
        $data['artikel'] = $this->M_data->getprodukhukumtahunkat($this->uri->segment(4,0), $config['per_page'], $offset, $id);
		$data['deskripsi']="Produk Hukum Tahun ".$this->uri->segment(3,0)." Kategori ".$this->M_data->judulkatprodukhukum($this->uri->segment(4,0))." | ".$this->M_data->deskripsi(1);	
		$data['judulan']="Produk Hukum Tahun ".$this->uri->segment(3,0)." Kategori ".$this->M_data->judulkatprodukhukum($this->uri->segment(4,0));
		$data['tahun']= $this->uri->segment(4,0);
		$data['judulapp']="Produk Hukum Tahun ".$this->uri->segment(3,0)." Kategori ".$this->M_data->judulkatprodukhukum($this->uri->segment(4,0))." | ". $this->M_data->titlesistem(1);
		$data['keyword']=$this->M_data->keyword(1);  
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		  
		
		$data['vkanan']='v_kanan2';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentperaturan';
		$this->load->view("v_dataprodukhukum",$data);  
	}
	
	
	
	
	
	public function cariperaturan() { 
		$tentang = trim($this->input->POST('tentang'));
		$data['tentang']=$tentang;

  
		$data["cariperaturan"]=$this->M_data->cariperaturan($tentang);	 
		$data['judulapp']="Pencarian Produk Hukum | ".$this->M_data->titlesistem(1) ;
		$data['deskripsi']=$this->M_data->deskripsi(1);
		$data['keyword']= $this->M_data->keyword(1); 
		$data['postingby']="Admin Bagian Hukum Kab. Tanjung Jabung Timur"; 
		$data['judulan']="Pencarian Produk Hukum";
	 
		
		$data['vkanan']='v_kanan1';
		$data['vheader']='v_header';
		$data['vfooter']='v_footer';
		$data['vdata']='v_contentperaturan2';
		$this->load->view("v_dataprodukhukum2",$data); 
	}

}