<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_Menabung extends CI_Model {
  var $table = 'menabung';
  var $column_order = array(null,null,'bulan'); //file table
  var $column_search = array('bulan'); //pencarian yg d ijinkan
  var $order = array('bulan' => 'ASC'); // default order
	
	function insert_menabung($data) {
		return $this->db->insert($this->table, $data);
  }
  
  function get_datatables(){
		$this->_get_datatables_query();
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
  }
  
  private function _get_datatables_query()
	{
		$this->db->from($this->table);
		$i = 0;
		foreach ($this->column_search as $item) {
			if($_POST['search']['value']) // if datatable send POST for search
			{
				if($i===0) {
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				} else {
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if(count($this->column_search) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
				}

			$i++;
		}
		
		if(isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} 
		else if(isset($this->order))
		{
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
    }
    $this->db->join('kategori_menabung', 'kategori_menabung.id_kategori_menabung = menabung.kategori_menabung', 'join');
  }
  
  function count_filtered()
	{
		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all()
	{
    $this->db->from($this->table);
    $this->db->join('kategori_menabung', 'kategori_menabung.id_kategori_menabung = menabung.kategori_menabung', 'join');
		return $this->db->count_all_results();
  }
  
  public function update($where, $data)
	{
		$this->db->update($this->table, $data, $where);
		return $this->db->affected_rows();
  }
  
  public function get_by_id($id){
		$this->db->from($this->table);
		$this->db->where('id_hutang_elektrik',$id);
		$query = $this->db->get();
		return $query->row();
  }
  
  public function get_by_date($date){
		$this->db->from($this->table);
    $this->db->where('bulan',$date);
    $this->db->join('kategori_menabung', 'kategori_menabung.id_kategori_menabung = menabung.kategori_menabung', 'join');
		$query = $this->db->get();
		return $query->result();
  }

  public function get_kontrakan_by_tahun($tahun){
		$this->db->from('kontrak');
    $this->db->where('tahun',$tahun);
		$query = $this->db->get();
		return $query->row();
  }
}