<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

    // Common response code
    const SUCCESS               = 200;
    const INVALID_AUTH_TOKEN    = 401;
    const NO_PERMISSION         = 403;
    const INVALID_SHARED_KEY    = 450;
    const ACCOUNT_NO_EXIST      = 451;
    const ACCOUNT_DISABLED      = 452;
    const UNKOWN_ERROR          = 500;

    protected $_response_messages = array(
        self::SUCCESS => 'Success',
        self::INVALID_AUTH_TOKEN => 'Auth token is invalid',
        self::NO_PERMISSION => 'You have no permission',
        self::INVALID_SHARED_KEY => 'Shared Key is invalid',
        self::ACCOUNT_NO_EXIST => 'Account is not existing',
        self::ACCOUNT_DISABLED => 'Account disabled',
        self::UNKOWN_ERROR => 'Unknow error'
    );

    public $input_data = array();

    public $auth_token_except_methods = array();


    public function __construct() {
        parent::__construct();
    }

    private function _get_json_params() {
        log_message('info', 'Content type - ' . $_SERVER['CONTENT_TYPE']);
        log_message('info', 'POST - ' . json_encode($_POST));
        log_message('info', 'FILE - ' . json_encode($_FILES));

        $this->input_data = array();

        $this->input_data = array_merge($this->input_data, $_GET);

        if (!empty($_SERVER['CONTENT_TYPE']) && $_SERVER['CONTENT_TYPE'] == 'application/json') {
            $request = file_get_contents('php://input');
            $result = json_decode($request, TRUE);

            if ($result) {
                $this->input_data = array_merge($this->input_data, $result);
            }
        } else if (!empty($_SERVER['CONTENT_TYPE']) && substr($_SERVER['CONTENT_TYPE'], 0, 19) == 'multipart/form-data') {
            $this->input_data = array_merge($this->input_data, $_POST);
        }

        log_message('info', 'Input params - ' . json_encode($this->input_data));
    }


    private function _get_message_from_code($code) {
        if (!array_key_exists($code, $this->_response_messages)) {
            return '';
        }

        return $this->_response_messages[$code];
    }

    public function json_response($code, $message = '', $data = null) {
        $response['code'] = $code;

        if ($message != '') {
            $response['message'] = $message;
        } else {
            $response['message'] = $this->_get_message_from_code($code);
        }

        if ($data !== null) {
            $response['data'] = $data;
        }

        log_message('info', 'Response - ' . json_encode($response));
        header('Content-Type: text/json; charset=utf-8');

        echo json_encode($response);

        exit;
    }

    function deleteDir($dirPath) {
        if (! is_dir($dirPath)) {
            throw new InvalidArgumentException("$dirPath must be a directory");
        }
        if (substr($dirPath, strlen($dirPath) - 1, 1) != '/') {
            $dirPath .= '/';
        }
        $files = glob($dirPath . '*', GLOB_MARK);
        foreach ($files as $file) {
            if (is_dir($file)) {
                self::deleteDir($file);
            } else {
                unlink($file);
            }
        }
        rmdir($dirPath);
    }
}
