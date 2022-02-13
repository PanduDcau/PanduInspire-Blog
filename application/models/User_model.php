<?php
	class User_model extends CI_Model{
		public function register($enc_password){
			// User data array
			$data = array(
				'name' => $this->input->post('name'),
				'email' => $this->input->post('email'),
                'username' => $this->input->post('username'),
                'password' => $enc_password,
                'zipcode' => $this->input->post('zipcode')
			);

			// Insert user
			return $this->db->insert('users', $data);
		}

		// Log user in
		public function login($username, $password){
			// Validate
			// $this->db->where('Username', $username);
			// $this->db->where('Password', $password);

			// $result = $this->db->get('users');
			$result=$this->db->query("select * from users where Username='$username' and Password='$password'");
			return $result->result();
			// if($result->num_rows() == 1){
			// 	return $result->row(0)->id;
			// } else {
			// 	return false;
			// }
		}

		// Check username exists
		public function check_username_exists($username){
			$query = $this->db->get_where('users', array('Username' => $username));
			if(empty($query->row_array())){
				return true;
			} else {
				return false;
			}
		}

		// Check email exists
		public function check_email_exists($email){
			$query = $this->db->get_where('users', array('Email' => $email));
			if(empty($query->row_array())){
				return true;
			} else {
				return false;
			}
		}
	}