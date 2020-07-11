<?php
class Kategori extends CI_Controller
{
    public function anting()
    {
        $data['anting'] = $this->model_kategori->data_anting()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('anting', $data);
        $this->load->view('templates/footer');
    }

    public function cincin()
    {
        $data['cincin'] = $this->model_kategori->data_cincin()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('cincin', $data);
        $this->load->view('templates/footer');
    }

    public function gelang()
    {
        $data['gelang'] = $this->model_kategori->data_gelang()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('gelang', $data);
        $this->load->view('templates/footer');
    }

    public function kalung()
    {
        $data['kalung'] = $this->model_kategori->data_kalung()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kalung', $data);
        $this->load->view('templates/footer');
    }
}
