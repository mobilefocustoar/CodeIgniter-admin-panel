<?php
class Products_model extends MY_Model {
 
    /**
    * Responsable for auto load the database
    * @return void
    */
    public function __construct() {
    	parent::__construct();
        $this->table = "products";
    }

    /**
    * Get product by his is
    * @param int $product_id 
    * @return array
    */
    public function get_product_by_id($id) {
    	return $this->_get(array('id' => $id));
	}

	public function get_product_by_uid($uid) {
        return $this->_get(array('uid' => $uid));
    }
    /**
    * Fetch products data from the database
    * possibility to mix search, filter and order
    * @param int $manufacuture_id 
    * @param string $search_string 
    * @param strong $order
    * @param string $order_type 
    * @param int $limit_start
    * @param int $limit_end
    * @return array
    */
    public function get_products($search_string=null, $order=null, $order_type='Asc', $limit_start, $limit_end) {
	    return $this->_get_list(null, $search_string, $order, $order_type, $limit_start, $limit_end);
    }

    public function get_products_all() {
        return $this->_get_list_all();
    }
    /**
    * Count the number of rows
    * @param int $manufacture_id
    * @param int $search_string
    * @param int $order
    * @return int
    */
    public function count_products($search_string=null) {
        if ($this->table == null OR $this->table == '') {
            return false;
        }

        $this->db->select('*');
        $this->db->from($this->table);
        if (!empty($condition)) {
            $this->db->where($condition);
        }
        if (!empty($search_string)) {
            $this->db->like('name', $search_string);
        }
        $query = $this->db->get();
		return $query->num_rows();        
    }

    /**
    * Store the new item into the database
    * @param array $data - associative array with data to store
    * @return boolean 
    */
    public function insert_product($data) {
        $data['uid'] = $this->_get_uid();
        $result =  $this->_insert($data);
        if ($result == true) {
            return $this->get_product_by_uid($data['uid']);
        } else {
            return false;
        }
    }

    /**
    * Update product
    * @param array $data - associative array with data to store
    * @return boolean
    */
    public function update_product($condition, $data) {
        return $this->_update($condition, $data);
	}

    public function update_product_by_uid($uid, $data) {
        $data->uid = $uid;
        $result = $this->_update(array('uid' => $uid), $data);
        if ($result == true) {
            return $this->get_product_by_uid($uid);
        } else {
            return false;
        }
    }

    /**
    * Delete product
    * @param int $id - product id
    * @return boolean
    */
	public function delete_product_by_uid($uid) {
	    return $this->_delete(array('uid' => $uid));
	}
 
}
?>	
