<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_saldo extends CI_Model {
	
	var $table = 'barang_elektrik';
	var $table_fisik = 'saldo_fisik';
	
	function getSaldo()
	{
		$query = $this->db->get($this->table);
		return $query->row();
    }
    
    public function update($where, $data)
	{
		$this->db->update($this->table, $data, $where);
		return $this->db->affected_rows();
	}

	function getSaldoFisik()
	{
		$query = $this->db->get($this->table_fisik);
		return $query->row();
	}
	
	public function updateSaldoFisik($where, $data)
	{
		$this->db->update($this->table_fisik, $data, $where);
		return $this->db->affected_rows();
	}
}