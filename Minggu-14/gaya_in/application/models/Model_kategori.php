<?php

class Model_kategori extends CI_Model
{
    public function data_anting()
    {
        return $this->db->get_where("tb_barang", array('kategori' => 'anting'));
    }
    public function data_cincin()
    {
        return $this->db->get_where("tb_barang", array('kategori' => 'cincin'));
    }
    public function data_gelang()
    {
        return $this->db->get_where("tb_barang", array('kategori' => 'gelang'));
    }
    public function data_kalung()
    {
        return $this->db->get_where("tb_barang", array('kategori' => 'kalung'));
    }
}
