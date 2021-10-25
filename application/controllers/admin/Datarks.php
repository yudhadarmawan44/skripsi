<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Datarks extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("datark_model");
        $this->load->library('form_validation');
        $this->load->helper(array('url'));	 
    }

    public function index()
    {
        $data["datarss"] = $this->datark_model->getAll();
        $datars = array();
        $posisi = 0;
        foreach ($data["datarss"] as $datarumahsakit) {
            $datars[] = array(
                'nomor' => ++$posisi,
                'jumlah' => $datarumahsakit->jumlah_darah
            );
        }
      

        $data["jumlahtot"] = $this->datark_model->rumahsakit($datars);
        $this->load->view("admin/datark/list", $data);
    }


    public function filter($golongan = null, $bulan=null, $tahun=null)
    {
        $data["datarss"] = $this->datark_model->getAll($golongan, $bulan, $tahun);
        $datars = array();
        $posisi = 0;
        foreach ($data["datarss"] as $datarumahsakit) {
            $datars[] = array(
                'nomor' => ++$posisi,
                'jumlah' => $datarumahsakit->jumlah_darah
            );
        }
      

        $data["jumlahtot"] = $this->datark_model->rumahsakit($datars);
        $this->load->view("admin/datark/list", $data);
    }

    

    public function add()
    {
        $datark = $this->datark_model;
        $validation = $this->form_validation;
        $validation->set_rules($datark->rules());

        if ($validation->run()) {
            $datark->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $this->load->view("admin/datark/new_form");
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('admin/datarss');
       
        $datark = $this->datark_model;
        $validation = $this->form_validation;
        $validation->set_rules($datark->rules());

        if ($validation->run()) {
            $datark->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["datark"] = $datark->getById($id);
        if (!$data["datark"]) show_404();
        
        $this->load->view("admin/datark/edit_rs", $data);
    }

    public function delete($id=null)
    {
        if (!isset($id)) show_404();
        
        if ($this->datark_model->delete($id)) {
            redirect(site_url('admin/datarks'));
        }
    }

    public function detail($id = null)
    {
        if (!isset($id)) redirect('admin/datarss');
       
        $datark = $this->datark_model;
        $validation = $this->form_validation;
        $validation->set_rules($datark->rules());

        if ($validation->run()) {
            $datark->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["datark"] = $datark->getById($id);
        if (!$data["datark"]) show_404();
        
        $this->load->view("admin/datark/detail_rs", $data);
    }
      //export ke dalam format excel
      public function export_excel(){
           $data = array('title' => 'Laporan_Data_RumahSakit',
                'datarss' => $this->datark_model->excel());
 
           $this->load->view('admin/datark/excel_rs',$data);
      }
            
        }


