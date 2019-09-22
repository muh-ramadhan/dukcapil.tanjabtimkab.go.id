<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Galeri extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->helper(array("html", "form", "url", "text"));
		$this->load->library('pagination');
		$this->load->model("M_data");
		$this->load->helper('tgl_indonesia');
		$this->load->helper('fungsi_seo');
	}
	public function index()
	{
		$query = $this->db->query("SELECT COUNT(*) as jml FROM ( SELECT * from gallery group by id_fotoberita) as temp;");
		foreach ($query->result() as $row) {
			$row = $row->jml;
		}
		$config['base_url'] = base_url() . 'galeri/index/';
		$config['total_rows'] = $row;
		$config['per_page'] = 4;
		$config['uri_segment'] = 3;
		$config['use_page_numbers'] = TRUE;
		$config['next_link'] = 'Berikutnya &gt;';
		$config['prev_link'] = '&lt; Sebelumnya';
		$this->pagination->initialize($config);
		$data['pagination'] = $this->pagination->create_links();
		if ($this->uri->segment(3) > 0)
			$offset = ($this->uri->segment(3) + 0) * $config['per_page'] - $config['per_page'];
		else

			$offset = $this->uri->segment(3);
		$data['artikel'] = $this->M_data->allfotoberita($config['per_page'], $offset);
		$data["judulapp"] = "Galeri Kegiatan - " . $this->M_data->titlesistem(1);
		$data['judulapp'] = "Galeri Kegiatan";
		$data['keyword'] = "galeri kegiatan, " . $this->M_data->keyword(1);
		$data['deskripsi'] = "Galeri Kegiatan - " . $this->M_data->titlesistem(1);
		$data['postingby'] = "Admin Bagian Hukum Kab. Tanjung Jabung Timur";
		$data['vkanan'] = 'v_kanan2';
		$data['vheader'] = 'v_header';
		$data['vfooter'] = 'v_footer';
		$data['vdata'] = 'v_galeri_album';
		//$this->load->view("v_datakirikanan",$data);
		$this->load->view("v_galerifoto", $data);
	}
	public function detail()
	{
		//$data['baca']=$this->M_data->baca($this->uri->segment(3,0));
		$data["judulapp"] = $this->M_data->judulgaleri($this->uri->segment(3, 0)) . " | " . $this->M_data->titlesistem(1);
		$data['keyword'] = "galeri kegiatan, " . $this->M_data->keyword(1);
		$data['deskripsi'] = "Galeri Kegiatan - " . $this->M_data->titlesistem(1);
		$data['judulan'] = $this->M_data->judulgaleri($this->uri->segment(3, 0));
		$data['keterangan'] = $this->M_data->ketfotoberita($this->uri->segment(3, 0));
		$data['detail_album'] = $this->M_data->getidgaleri($this->uri->segment(3, 0));
		$data['postingby'] = "Admin Bagian Hukum Kab. Tanjung Jabung Timur";
		$data['vkanan'] = 'v_kanan2';
		$data['vheader'] = 'v_header';
		$data['vfooter'] = 'v_footer';
		$data['vdata'] = 'v_galeri_detail';
		//$this->load->view("v_datakirikanan",$data);
		$this->load->view("v_galerifoto", $data);
	}
}
