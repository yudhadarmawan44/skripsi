<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Datark_model extends CI_Model
{
    private $_table = "datarss";

    
    public $id_rs;
    public $bulan;
    public $tahun;
    public $golongan_darah ;
    public $namars;
    public $jumlah_darah;


    public function rules()
    {
        return [
            ['field' => 'namars',
            'label' => 'namars',
            'rules' => 'required'],

            ['field' => 'jumlah_darah',
            'label' => 'jumlah_darah',
            'rules' => 'required']

        ];
    }

    public function getAll($golongan = null, $bulan= null, $tahun=null)
    
    { if ($golongan == null && $bulan == null && $tahun=null){
        return $this->db->get($this->_table)->result();
    }
    
    return $this->db->get_where($this->_table, ["golongan_darah" => $golongan, "bulan" => $bulan, "tahun" => $tahun])->result();
}

    private function getByGolongan($golongan)
    {
        return $this->db->get_where($this->_table, ["golongan_darah" => $golongan])->result();
    }
    private function getByBulan($bulan)
    {
        return $this->db->get_where($this->_table, ["bulan" => $bulan])->result();
    }
    private function getByTahun($tahun)
    {
        return $this->db->get_where($this->_table, ["tahun" => $tahun])->result();
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_rs" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->bulan = $post["bulan"];
        $this->tahun = $post["tahun"];
        $this->golongan_darah = $post["golongan_darah"];
        $this->namars = $post["namars"];
        $this->jumlah_darah = $post["jumlah_darah"];
        
        $this->db->insert($this->_table, $this);
        
    }
      public function update()
    {
        $post = $this->input->post();
        $this->id_rs = $post["id_rs"];
        $this->bulan = $post["bulan"];
        $this->tahun = $post["tahun"];
        $this->golongan_darah = $post["golongan_darah"];
        $this->namars = $post["namars"];
        $this->jumlah_darah = $post["jumlah_darah"];
         
        $this->db->update($this->_table, $this, array('id_rs' => $post['id_rs']));
    }
     public function rumahsakit($datars)
    {
        
        if (!count($datars))
            return false;

        $posisi = 1;
        $total = array();
        $datajumlah = array();
         foreach($datars as $datarumahsakit)
        {
             

            $datajumlah[] = array(
                'posisi' => $posisi++,
                'total' => $datarumahsakit['jumlah']
            );
            array_push($total,$datarumahsakit['jumlah']);
            
        }
        $jumlahtotal = array_sum($total);
        $jumlahData = count($datars);
        for($i = $jumlahData; $i < (1 + $jumlahData); $i++){
            

            $datajumlah[] = array(
                'posisi' => $posisi++,
                'total' => $jumlahtotal
            );

        }
        
        return $datajumlah;
    }

    public function delete($id)
    {
     
        return $this->db->delete($this->_table, array("id_rs" => $id));
    }

    public function excel() {
           $this->db->select('*');
           $this->db->from('datarss');
           $query = $this->db->get();
           return $query->result();
      }
}
