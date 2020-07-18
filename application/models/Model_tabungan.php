<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_tabungan extends CI_Model {
	
    var $table = 'total_tabungan';
    var $table_laporan = 'pengeluaran_tabungan';
    var $column_order = array(null,null,'date'); //file table
	var $column_search = array('nama'); //pencarian yg d ijinkan
	var $order = array('date' => 'desc'); // default order

    function getSaldoKontrakan()
    {
    	$query = $this->db->get_where($this->table, array('kategori_tabungan' => 1));
		return $query->row();	
    }

    function getSaldoKas()
    {
    	$query = $this->db->get_where($this->table, array('kategori_tabungan' => 3));
		return $query->row();	
	}
    
    public function update($where, $data)
	{
		$this->db->update($this->table, $data, $where);
		return $this->db->affected_rows();
    }
    
    function get_datatables()
	{
		$this->_get_datatables_query();
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
    }
    
    private function _get_datatables_query()
	{
		$this->db->from($this->table_laporan);
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
    }
    
    function count_filtered()
	{
		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all()
	{
		$this->db->from($this->table_laporan);
		return $this->db->count_all_results();
    }
    
    function insert_pengeluaran($data) {
		return $this->db->insert($this->table_laporan, $data);
  }
}