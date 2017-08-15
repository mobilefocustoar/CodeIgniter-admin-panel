<!DOCTYPE html> 
<html lang="en-US">
<head>
  <title>3D Tracking Content Management System</title>
  <meta charset="utf-8">
    <link href="<?php echo base_url(); ?>assets/css/admin/global.css" rel="stylesheet" type="text/css">
    <script src="<?php echo base_url(); ?>assets/js/jquery-3.2.1.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/tether.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/bootstrap-filestyle.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/admin.min.js"></script>
</head>
<body>

	<div class="navbar navbar-fixed-top">
	  <div class="navbar-inner">
	    <div class="container">
            <a class="brand">3D Tracking Content Management</a>
            <ul class="nav">
            <li <?php if($this->uri->segment(2) == 'products'){echo 'class="active"';}?>>
                <a href="<?php echo base_url(); ?>products">Products</a>
            </li>
            </ul>

	    </div>
	  </div>
	</div>

    <!--Delete confirm dialog-->
    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header" style="background-color: darkgray">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Confirm Delete</h4>
                </div>

                <div class="modal-body">
                    <p><h3>Are you sure that you want to delete this item?</h3></p>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-danger btn-ok">Delete</a>
                </div>
            </div>
        </div>
    </div>