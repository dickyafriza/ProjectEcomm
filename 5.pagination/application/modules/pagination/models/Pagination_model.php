<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Pagination_model extends CI_Model
{
  public function get_data($limit, $start)
  {
    return $this->db->get('tb_brg', $limit, $start)->result_array();
  }
  public function countAlldata()
  {
    return $this->db->get('tb_brg')->num_rows();
  }
}
