<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Datauji extends CI_Controller
{
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model("datauji_model");
        $this->load->library('form_validation');
        $this->load->helper(array('url'));	 
    }

    public function golongan_a(){
        $data["dataujis"] = $this->datauji_model->getAll('A');
        $dataUji = array();
        $posisi = 0;
        foreach ($data["dataujis"] as $dataDarah) {
            $dataUji[] = array(
                'nomor' => ++$posisi,
                'jumlah' => $dataDarah->jumlah_darah
            );
        }
      

        $data["predikDouble"] = $this->datauji_model->brownDoubleExpSmoothing($dataUji);
        $data["predikSingle"] = $this->datauji_model->brownSingleExpSmoothing($dataUji);
        // die(var_dump($data["predikDouble"]));
        $this->load->view("admin/datauji/list", $data);
    }

    public function golongan_ab(){
        $data["dataujis"] = $this->datauji_model->getAll('AB');
        $dataUji = array();
        $posisi = 0;
        foreach ($data["dataujis"] as $dataDarah) {
            $dataUji[] = array(
                'nomor' => ++$posisi,
                'jumlah' => $dataDarah->jumlah_darah
            );
        }
      

        $data["predikDouble"] = $this->datauji_model->brownDoubleExpSmoothing($dataUji);
        $data["predikSingle"] = $this->datauji_model->brownSingleExpSmoothing($dataUji);
        // die(var_dump($data["predikDouble"]));
        $this->load->view("admin/datauji/list", $data);
    }

    public function golongan_b(){
        $data["dataujis"] = $this->datauji_model->getAll('B');
        $dataUji = array();
        $posisi = 0;
        foreach ($data["dataujis"] as $dataDarah) {
            $dataUji[] = array(
                'nomor' => ++$posisi,
                'jumlah' => $dataDarah->jumlah_darah
                
            );
        }
      

        $data["predikDouble"] = $this->datauji_model->brownDoubleExpSmoothing($dataUji);
        $data["predikSingle"] = $this->datauji_model->brownSingleExpSmoothing($dataUji);
        // die(var_dump($data["predikDouble"]));
        $this->load->view("admin/datauji/list", $data);
    }

    public function golongan_o(){
        $data["dataujis"] = $this->datauji_model->getAll('O');
        $dataUji = array();
        $posisi = 0;
        foreach ($data["dataujis"] as $dataDarah) {
            $dataUji[] = array(
                'nomor' => ++$posisi,
                'jumlah' => $dataDarah->jumlah_darah
            );
        }
      

        $data["predikDouble"] = $this->datauji_model->brownDoubleExpSmoothing($dataUji);
        $data["predikSingle"] = $this->datauji_model->brownSingleExpSmoothing($dataUji);
        // die(var_dump($data["predikDouble"]));
        $this->load->view("admin/datauji/list", $data);
    }

    public function index()
    {

        $data["dataujis"] = $this->datauji_model->getAll();
        $dataUji = array();
        $posisi = 0;
        foreach ($data["dataujis"] as $dataDarah) {
            $dataUji[] = array(
                'nomor' => ++$posisi,
                'jumlah' => $dataDarah->jumlah_darah
            );
        }
      

        $data["predikDouble"] = $this->datauji_model->brownDoubleExpSmoothing($dataUji);
        $data["predikSingle"] = $this->datauji_model->brownSingleExpSmoothing($dataUji);
        // die(var_dump($data["predikDouble"]));
        $this->load->view("admin/datauji/list", $data);
    }
    public function filter($golongan = null, $bulan=null, $tahun=null)
    {
        $data["dataujis"] = $this->datauji_model->getAll();
        $dataUji = array();
        $posisi = 0;
        foreach ($data["dataujis"] as $dataDarah) {
            $dataUji[] = array(
                'nomor' => ++$posisi,
                'jumlah' => $dataDarah->jumlah_darah
            );
        }
      

        $data["predikDouble"] = $this->datauji_model->brownDoubleExpSmoothing($dataUji);
        $data["predikSingle"] = $this->datauji_model->brownSingleExpSmoothing($dataUji);
        // die(var_dump($data["predikDouble"]));
        $this->load->view("admin/datauji/list", $data);
    }
        public function add()
    {
        $datauji = $this->datauji_model;
        $validation = $this->form_validation;
        $validation->set_rules($datauji->rules());

        if ($validation->run()) {
            $datauji->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $this->load->view("admin/datauji/new_form");
    }
    
       public function uploadData()
    {
        if ($this->datauji_model->uploadData()) {
            redirect(site_url('admin/datauji'));
        }
    }
      public function detail($id = null)
    {
        if (!isset($id)) redirect('admin/dataujis');
       
        $datauji = $this->datauji_model;
        $validation = $this->form_validation;
        $validation->set_rules($datauji->rules());

        if ($validation->run()) {
            $datauji->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["datauji"] = $datauji->getById($id);
        if (!$data["datauji"]) show_404();
        
        $this->load->view("admin/datauji/detail_uji", $data);
    }
    public function edit($id = null)
    {
        if (!isset($id)) redirect('admin/dataujis');
       
        $datauji = $this->datauji_model;
        $validation = $this->form_validation;
        $validation->set_rules($datauji->rules());

        if ($validation->run()) {
            $datauji->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["datauji"] = $datauji->getById($id);
        if (!$data["datauji"]) show_404();
        
        $this->load->view("admin/datauji/edit_uji", $data);
    }
    public function delete($id=null)
    {
        if (!isset($id)) show_404();
        
        if ($this->datauji_model->delete($id)) {
            redirect(site_url('admin/datauji'));
        }
    }

    public function truncate($id=null){

        if ($this->datauji_model->truncate($id)) {
            redirect(site_url('admin/datauji'));
            }
       // redirect(site_url('admin/datauji'));
    }
     public function double()
    {
        $data = $this->datauji_model->getAll();
        $dataUji = array();
        $posisi = 0;
        foreach ($data as $dataDarah) {
            $dataUji[] = array(
                'nomor' => ++$posisi,
                'jumlah' => $dataDarah->jumlah_darah

            );
        }
        echo "<pre>";

        $hasilPeramalan = $this->datauji_model->brownDoubleExpSmoothing($dataUji);
        
        print_r($hasilPeramalan);
        die();
    }
     public function single()
    {
        $data = $this->datauji_model->getAll();
        $dataUji = array();
        $posisi = 0;
        foreach ($data as $dataDarah) {
            $dataUji[] = array(
                'nomor' => ++$posisi,
                'jumlah' => $dataDarah->jumlah_darah
            );
        }
        echo "<pre>";

        $hasilPeramalan = $this->datauji_model->brownSingleExpSmoothing($dataUji);
        
        print_r($hasilPeramalan);
        die();
    }
     public function export_excel(){
           $data = array('title' => 'Laporan_Data_RumahSakit',
                'dataujis' => $this->datauji_model->excel());
 
           $this->load->view('admin/datauji/excel_rs',$data);
      }
 }


