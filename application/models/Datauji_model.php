<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Datauji_model extends CI_Model
{
    private $_table = "dataujis";

    public $id;
    public $bulan;
    public $tahun;
    public $golongan_darah ;
    public $namars;
    public $jumlah_darah;
    public function rules()
    {
        return [
            ['field' => 'jumlah_darah',
            'label' => 'jumlah_darah',
            'rules' => 'required'],

            ['field' => 'golongan_darah',
            'label' => 'golongan_darah',
            'rules' => 'required']            

        ];
    }

    public function getAll($golongan = null)
    {
        if ($golongan == null) {
            return $this->db->get($this->_table)->result();
        }

        return $this->getByGolongan($golongan);
    }

    private function getByGolongan($golongan)
    {
        return $this->db->get_where($this->_table, ["golongan_darah" => $golongan])->result();
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id" => $id])->row();
    }


   public function uploadData()
    {
        $count = 0;
        $fp = fopen($_FILES['userfile']['tmp_name'], 'r') or die("can't open file");
        while ($csv_line = fgetcsv($fp, 1024)) {
            $count++;
            if ($count == 1) {
                continue;
            } //keep this if condition if you want to remove the first row
            for ($i = 0, $j = count($csv_line); $i < $j; $i++) {
                $insert_csv = array();
                // $insert_csv['id'] = $csv_line[0]; //remove if you want to have primary key,
                $insert_csv['bulan'] = $csv_line[1];
                $insert_csv['tahun'] = $csv_line[2];
                $insert_csv['golongan_darah'] = $csv_line[3];
                $insert_csv['namars'] = $csv_line[4];
                $insert_csv['jumlah_darah'] = $csv_line[5];
            }
            $i++;
            $data = array(
                // 'id' => $insert_csv['id'],
                'bulan' => $insert_csv['bulan'],
                'tahun' => $insert_csv['tahun'],
                'golongan_darah' => $insert_csv['golongan_darah'],
                'namars' => $insert_csv['namars'],
                'jumlah_darah' => $insert_csv['jumlah_darah'],

            );
            $data['crane_features'] = $this->db->insert('dataujis', $data);
        }
        fclose($fp) or die("can't close file");
        $data['success'] = "success";
        return $data;
    }
    public function delete($id)
    {
     
        return $this->db->delete($this->_table, array("id" => $id));
    }
    public function save()
    {
        $post = $this->input->post();
        // $this->id = uniqid();
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
        $this->id = $post["id"];
        $this->bulan = $post["bulan"];
        $this->tahun = $post["tahun"];
        $this->golongan_darah = $post["golongan_darah"];
        $this->namars = $post["namars"];
        $this->jumlah_darah = $post["jumlah_darah"];
         
        $this->db->update($this->_table, $this, array('id' => $post['id']));
    }

     public function truncate()
    {
     
        $this->db->from('dataujis');
        return $this->db->truncate();
    }

    public function brownDoubleExpSmoothing($dataUji, $alpha = 0.2)
    {
        
        if (!count($dataUji))
            return false;


        $dataPertama = $dataUji[0];
        $smoothingPertama = $dataPertama['jumlah'];
        $smoothingKedua = $dataPertama['jumlah'];
        //$bt = 0;
        $posisi = 1;
        $hasil = 0;
        $dataRamal = array();
        $error = array();
        

        foreach($dataUji as $dataDarah)

        {
            $smoothingPertama = ($alpha * $dataDarah['jumlah']) + (1 - $alpha) * $smoothingPertama;
            $smoothingKedua = ($alpha * $smoothingPertama) + (1 - $alpha) * $smoothingKedua;

            $at = 2*$smoothingPertama - $smoothingKedua;
            $bt = ($alpha/(1-$alpha)) * ($smoothingPertama - $smoothingKedua);

            //if ($newBt != 0)
             //   $bt = $newBt;
            //for ($i = 1;$i <= $posisi; $i++)

            $dataRamal[] = array(
                'posisi' => $posisi++,
                'at' => $at,
                'bt' => $bt,
                'hasil_prediksi' => $hasil,
                'Xt' => $dataDarah['jumlah'],
                'first_smoothing' => $smoothingPertama,
                'second_smoothing' => $smoothingKedua,
                'error' => abs($hasil-$dataDarah['jumlah'])
            );
            array_push($error,abs($hasil-$dataDarah['jumlah']));
            $hasil = $at+$bt;
            
        }

        //extends data ramal
        $jumlaherror = array_sum($error);
        $jumlahData = count($dataUji);
        for($i = 1; $i <= 3; $i++) {

            $dataRamal[] = array(
                'posisi' => $posisi++,
                'at' => 0,
                'bt' => 0,
                'hasil_prediksi' => $at+$bt*$i,
                'Xt' => 0,
                'first_smoothing' => 0,
                'second_smoothing' => 0,
                'error' => $jumlaherror/$jumlahData
            );    
    }

        return $dataRamal;
  
    }

        public function brownSingleExpSmoothing($dataUji, $alpha = 0.4)
    {
        
        if (!count($dataUji))
            return false;

        $dataPertama = $dataUji[0];
        $smoothingPertama = $dataPertama['jumlah'];
        $posisi = 1;
        $hasil = 0;
        $error = array();
        $dataRamal = array();
         foreach($dataUji as $dataDarah)
        {
           
            $smoothingPertama = ($alpha * $dataDarah['jumlah']) + (1 - $alpha) * $smoothingPertama;  

            $dataRamal[] = array(
                'posisi' => $posisi++,
                'hasil_prediksi' => $hasil,
                'Xt' => $dataDarah['jumlah'],
                'first_smoothing' => $smoothingPertama,
                'error' => abs($hasil-$dataDarah['jumlah'])
            );
            array_push($error,abs($hasil-$dataDarah['jumlah']));
            $hasil = $smoothingPertama;
            
        }
        $jumlaherror = array_sum($error);
        $jumlahData = count($dataUji);

        for($i = 1; $i <= 3 ; $i++){ 

            $dataRamal[] = array(
                'posisi' => $posisi++,
                'hasil_prediksi' => $smoothingPertama,
                'Xt' => 0,
                'first_smoothing' => 0,
                'error' => $jumlaherror/$jumlahData
            );

        }

        return $dataRamal;
    }
        public function excel() {
           $this->db->select('*');
           $this->db->from('dataujis');
           $query = $this->db->get();
           return $query->result();
      }

}
