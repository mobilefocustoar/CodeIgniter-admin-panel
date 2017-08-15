<?php
class Products extends MY_Controller {
 
    /**
    * Responsable for auto load the model
    * @return void
    */
    public function __construct() {
        parent::__construct();
        $this->load->model('products_model');
    }
 
    /**
    * Load the main view with all the current model model's data.
    * @return void
    */
    public function index() {
        //all the posts sent by the view
//        $search_string = $this->input->post('search_string');
//        $order = $this->input->post('order');
//        $order_type = $this->input->post('order_type');
//
//        //pagination settings
//        $config['per_page'] = 10;
//        $config['base_url'] = base_url().'products';
//        $config['use_page_numbers'] = TRUE;
//        $config['num_links'] = 20;
//        $config['full_tag_open'] = '<ul>';
//        $config['full_tag_close'] = '</ul>';
//        $config['num_tag_open'] = '<li>';
//        $config['num_tag_close'] = '</li>';
//        $config['cur_tag_open'] = '<li class="active"><a>';
//        $config['cur_tag_close'] = '</a></li>';
//
//        //limit end
//        $page = $this->uri->segment(4);

        //math to get the initial record to be select in the database
//        $limit_end = ($page * $config['per_page']) - $config['per_page'];
//        if ($limit_end < 0) {
//            $limit_end = 0;
//        }
//
//        $data['search_string_selected'] = $search_string;
//        $data['order'] = $order;
//
//        if (empty($order_type)) {
//            $order_type = "Asc";
//        }

//        $data['order_type_selected'] = $order_type;
//        //pre selected options
//        $data['search_string_selected'] = $search_string;
//        $data['order'] = 'id';

        //fetch sql data into arrays
//        $data['count_products']= $this->products_model->count_products($search_string);
        $data = $this->products_model->get_products_all();
        if ($data != false) {
            $this->json_response(self::SUCCESS,'',$data);
        } else {
            $this->json_response(self::UNKOWN_ERROR);
        }

    }


    public function add() {
        //if save button was clicked, get the data sent via post
        if ($this->input->server('REQUEST_METHOD') === 'POST') {

            $data_to_store = array();
            $data_to_store['name'] = $this->input->post('name');
            $data = $this->products_model->insert_product($data_to_store);
            if ($data != false) {
                $uid = $data->uid;
                $upload_path = './uploads/'. $uid. '/';
                mkdir($upload_path);

                $this->upload->initialize(array(
                    'allowed_types' => '*',
                    'upload_path' => $upload_path
                ));

                if (array_key_exists("thumbnail", $_FILES) && $_FILES['thumbnail']['error'] == 0) {
                    $thumbnail = $_FILES['thumbnail'];
                    $this->upload->do_upload("thumbnail");
                    $data->thumbnail = $thumbnail['name'];
                }
                if (array_key_exists("data1", $_FILES) && $_FILES['data1']['error'] == 0) {
                    $data1 = $_FILES['data1'];
                    $this->upload->do_upload("data1");
                    $data->data1 = $data1['name'];
                }
                if (array_key_exists("data2", $_FILES) && $_FILES['data2']['error'] == 0) {
                    $data2 = $_FILES['data2'];
                    $this->upload->do_upload("data2");
                    $data->data2 = $data2['name'];
                }
                if (array_key_exists("data3", $_FILES)  && $_FILES['data3']['error'] == 0) {
                    $data3 = $_FILES['data3'];
                    $this->upload->do_upload("data3");
                    $data->data3 = $data3['name'];
                }

                if (array_key_exists("object", $_FILES) && $_FILES['object']['error'] == 0) {
                    $object = $_FILES['object'];
                    $this->upload->do_upload("object");
                    $data->object = $object['name'];
                }
            }

            $result = $this->products_model->update_product_by_uid($uid, $data);
            if ($result != false) {
                $this->json_response(self::SUCCESS, '', $result);
            } else {
                $this->json_response(self::UNKOWN_ERROR, '');
            }
        }
    }       

    /**
    * Update item by his id
    * @return void
    */
    public function update()
    {
        //product uid
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $uid = $this->input->post('uid');
            $data_to_store = array();

            $data = $this->products_model->get_product_by_uid($uid);
            if ($data != false) {
                $uid = $data->uid;
                $upload_path = './uploads/' . $uid . '/';

                $this->upload->initialize(array(
                    'allowed_types' => '*',
                    'upload_path' => $upload_path
                ));
                if (array_key_exists("thumbnail", $_FILES) && $_FILES['thumbnail']['error'] == 0) {
                    $thumbnail = $_FILES['thumbnail'];
                    unlink($upload_path. $data->thumbnail);
                    $this->upload->do_upload("thumbnail");
                    $data->thumbnail = $thumbnail['name'];
                }
                if (array_key_exists("data1", $_FILES) && $_FILES['data1']['error'] == 0) {
                    $data1 = $_FILES['data1'];
                    unlink($upload_path . $data->data1);
                    $this->upload->do_upload("data1");
                    $data->data1 = $data1['name'];
                }
                if (array_key_exists("data2", $_FILES) && $_FILES['data2']['error'] == 0) {
                    $data2 = $_FILES['data2'];
                    unlink($upload_path . $data->data2);
                    $this->upload->do_upload("data2");
                    $data->data2 = $data2['name'];
                }
                if (array_key_exists("data3", $_FILES)) {
                    $data3 = $_FILES['data3'];
                    unlink($upload_path . $data->data3 && $_FILES['data3']['error'] == 0);
                    $this->upload->do_upload("data3");
                    $data->data3 = $data3['name'];
                }

                if (array_key_exists("object", $_FILES) && $_FILES['object']['error'] == 0) {
                    $object = $_FILES['object'];
                    unlink($upload_path . $data->object);
                    $this->upload->do_upload("object");
                    $data->object = $object['name'];
                }
            }
            $data->name = $this->input->post('name');
            $result = $this->products_model->update_product_by_uid($uid, $data);
            if ($result != false) {
                $this->json_response(self::SUCCESS, '', $data);
            } else {
                $this->json_response(self::UNKOWN_ERROR);
            }
        }
    }

    /**
    * Delete product by his id
    * @return void
    */
    public function delete() {
        //product uid
        $uid = $this->uri->segment(3);
        $result = $this->products_model->delete_product_by_uid($uid);
        if ($result != true) {
            if (file_exists('./uploads' . '/' . $uid)) {
                $result = $this->deleteDir('./uploads' . '/' . $uid);
            }
        }
        if ($result != false) {
            $this->json_response(self::SUCCESS);
        } else {
            $this->json_response(self::UNKOWN_ERROR);
        }
    }

}