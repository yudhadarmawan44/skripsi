<?php
 class Login extends CI_Controller
 {
     public function __construct()
     {
            parent::__construct();
            $this->load->library('session');
     }

     public function index()
     {
            
            if( $this->input->method() == "get"){
                $this->load->view('login/login_view');
                return;
            }

            
            $username=$this->input->post('username');
            $password=$this->input->post('password');

            if($username=='admin' && $password=='admin')
            {
                $this->session->set_userdata('username' , $username);

                redirect('admin');
            }

            else
            {
                echo"<script>alert('Password atau Username Salah');</script>";
                $this->load->view('login/login_view');
            }
     }

     public function admin_page()
     {
            $this->load->view('login/admin_page');
     }

     public function logout()
     {
         $this->session->unset_userdata('username');
         redirect('login');
     }
 }

?>