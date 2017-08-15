<?php

class MY_Model extends CI_Model {

    // Stream status
    const STREAM_CREATED            = 0;
    const STREAM_BROADCASTING       = 1;
    const STREAM_BROADCAST_ENDED    = 2;
    
	public $table = '';

	public function __construct()
    {
        parent::__construct();
    }

    protected function _get_uid($prefix = '')
    {
        return md5($prefix . time() . rand());
    }

	protected function _get($condition)
    {
    	if ($this->table == null OR $this->table == '')
    	{
    		return false;
    	}

        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where($condition);
        
        $query = $this->db->get();
        $rows = $query->result();
        if (count($rows) == 0)
        {
            return false;
        }

        return $rows[0];
    }


	protected function _get_list($condition, $search_string=null, $order = null, $order_type=null, $limit_start, $limit_end )
    {
    	if ($this->table == null OR $this->table == '')
    	{
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
        
        if (!empty($order)) {
            $this->db->order_by($order, $order_type);
        } else {
            $this->db->order_by('id', $order_type);
        }

        $this->db->limit($limit_start, $limit_end);

        $query = $this->db->get();

        $rows = $query->result_array();
        if (count($rows) == 0) {
            return false;
        }

        return $rows;
    }

    protected function _get_list_all()
    {
        if ($this->table == null OR $this->table == '')
        {
            return false;
        }

        $this->db->select('*');
        $this->db->from($this->table);
        $query = $this->db->get();

        $rows = $query->result_array();
        if (count($rows) == 0) {
            return false;
        }

        return $rows;
    }


    protected function _insert($data)
    {
    	if ($this->table == null OR $this->table == '')
    	{
    		return false;
    	}
    	
        $this->db->insert($this->table, $data);
        $error_code = $this->db->error()['code'];

        if ($error_code != 0)
        {
            return false;
        }

        return true;
    }

    protected function _update($condition, $data)
    {
    	$this->db->where($condition);
        $this->db->update($this->table, $data);

        $error_code = $this->db->error()['code'];

        if ($error_code != 0)
        {
            log_message("debug", $this->db->_error_message());
            return false;
        }

        return true;
    }

    protected function _delete($condition) {
        $this->db->where($condition);
        $this->db->delete($this->table, $condition);
        $error_code = $this->db->error()['code'];
        if ($error_code != 0) {
            return false;
        }
        return true;
    }


}