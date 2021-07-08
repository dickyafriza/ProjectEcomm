<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pagination extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    // $this->load->library('form_validation');
    // $this->load->library('session');
    $this->load->model('Pagination_model');
  }

  public function index()
  {
    $data['head'] = "Produk";
  //  $data['user'] = $this->db->get_where('user', ['nama' => $this->session->userdata('nama')])->row_array();
    // $data['brg'] = $this->db->get('produk')->result_array();


    $this->load->library('pagination');
    $config['base_url'] = base_url('pagination/index');
    $config['total_rows'] = $this->Pagination_model->countAlldata();
    $config['per_page'] = 4;

    $config['full_tag_open'] = '<nav><ul class="pagination">';
    $config['full_tag_close'] = '</ul>
    </nav>';
    $config['first_link'] = 'Awal';
    $config['first_tag_open'] = ' <li class="page-item">';
    $config['first_tag_close'] = ' </li>';

    $config['last_link'] = 'Akhir';
    $config['last_tag_open'] = ' <li class="page-item">';
    $config['last_tag_close'] = ' </li>';

    $config['next_link'] = 'Lanjut';
    $config['next_tag_open'] = ' <li class="page-item">';
    $config['next_tag_close'] = ' </li>';

    $config['prev_link'] = 'Sebelum';
    $config['prev_tag_open'] = ' <li class="page-item">';
    $config['prev_tag_close'] = ' </li>';

    $config['cur_tag_open'] = ' <li class="page-item active"><a class="page-link" href="#">';
    $config['cur_tag_close'] = ' </a></li>';

    $config['num_tag_open'] = ' <li class="page-item">';
    $config['num_tag_close'] = ' </li>';

    $config['attributes'] = array('class' => 'page-link');
    $this->pagination->initialize($config);

    $data['start'] = $this->uri->segment(3);
    $data['brg'] = $this->Pagination_model->get_data($config['per_page'], $data['start']);


    $this->load->view('templates/_partials/header', $data);
    //$this->load->view('templates/_partials/sidebar');
    $this->load->view('templates/_partials/topbar');
    $this->load->view('index');
    $this->load->view('templates/_partials/footer');
  }
}
