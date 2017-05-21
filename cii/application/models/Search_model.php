<?php

      class Search_model extends CI_Model
	  {
	       public function get_results($search_term)
		   {
		   
		         // Loading the database configuration automatically
				 
				 
				 // Use Active records to query database
			  
				 $this->db->select('v.name, t.*');
				 $this->db->from('tires t, vehicles v' );
				$this->db->where('v.name' , $search_term);
                $this->db->where('v.id = t.carID');
				 
				 //Execute the query
				 
				 $query = $this->db->get();
		   
				  // Return the results
				 return $query->result_array();
				 
				 
				
		   }
		   
	  }



?>