<?php
    class Post_model extends CI_Model{
        public function __construct()
        {
            $this->load->database();
        }

        public function get_posts($slug = FALSE, $limit = FALSE, $offset = FALSE)
        {
            if($limit){
				$this->db->limit($limit, $offset);
			}
            if($slug === FALSE)
            {
                $this->db->order_by('posts.Id','DESC');
                $this->db->join('categories','categories.Id = posts.Category_Id');
                $query = $this->db->get('posts');              
                return $query->result_array();
            }

            $query = $this->db->get_where('posts',array('Slug' => $slug));
            return $query->row_array();
        }

       public function create_post(){
              $slug = url_title($this->input->post('title'));

   $data = array(
           'title' => $this->input->post('title'),
           'slug' =>$slug,
           'tags' => $this->input->post('tags'),
           'body' => $this->input->post('body'),
           'category_id'=>$this->input->post('category_id'),
           'user_id'=> $this->session->userdata('user_id'),
           'author' => $this->input->post('author')

   );

   return $this->db->insert('posts',$data);
       }

       public function delete_post($id)
     {
       $this->db->where('Id',$id);
       $this->db->delete('posts');
       return true;
     }

     public function update_post()
     {
        $slug = url_title($this->input->post('title'));

        $data = array(
        'title' => $this->input->post('title'),
        'slug' =>$slug,
        'tags' => $this->input->post('tags'),
        'body' => $this->input->post('body'),
        'category_id'=>$this->input->post('category_id')
        );
        $this->db->where('Id',$this->input->post('id'));
        return $this->db->update('posts',$data);
    }

    public function get_categories()
    {
        $this->db->order_by('Name');
        $query = $this->db->get('categories');
        return $query->result_array();
        
    }

    public function get_posts_by_category($category_id){
        $this->db->order_by('posts.Id', 'DESC');
        $this->db->join('categories', 'categories.Id = posts.Category_Id');
            $query = $this->db->get_where('posts', array('category_id' => $category_id));
        return $query->result_array();
    }

    }