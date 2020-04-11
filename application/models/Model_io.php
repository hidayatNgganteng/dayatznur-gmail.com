<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_io extends CI_Model {
	
	var $table = 'pemasukan';
	var $column_order = array(null,null,'nominal'); //file table
	var $column_search = array('nama'); //pencarian yg d ijinkan
    var $order = array('id_pemasukan' => 'desc'); // default order
    var $table_pengeluaran = 'pengeluaran';
	var $column_order_pengeluaran = array(null,null,'nominal'); //file table
	var $column_search_pengeluaran = array('nama'); //pencarian yg d ijinkan
	var $order_pengeluaran = array('id_pengeluaran' => 'desc'); // default order
	
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
		return $this->db->count_all_results();
    }
    
    public function save($data)
	{
		$this->db->insert($this->table, $data);
		return $this->db->insert_id();
    }
    
    function get_datatables_pengeluaran()
	{
		$this->_get_datatables_query_pengeluaran();
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
	}
	
	private function _get_datatables_query_pengeluaran()
	{
		$this->db->from($this->table_pengeluaran);
		$i = 0;
		foreach ($this->column_search_pengeluaran as $item) {
			if($_POST['search']['value']) // if datatable send POST for search
			{
				if($i===0) {
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				} else {
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if(count($this->column_search_pengeluaran) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
				}

			$i++;
		}
		
		if(isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($this->column_order_pengeluaran[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} 
		else if(isset($this->order_pengeluaran))
		{
			$order = $this->order_pengeluaran;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}
	
	function count_filtered_pengeluaran()
	{
		$this->_get_datatables_query_pengeluaran();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all_pengeluaran()
	{
		$this->db->from($this->table_pengeluaran);
		return $this->db->count_all_results();
    }
    
    public function save_pengeluaran($data)
	{
		$this->db->insert($this->table_pengeluaran, $data);
		return $this->db->insert_id();
	}
}