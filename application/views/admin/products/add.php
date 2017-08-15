    <div class="container top">
      
      <ul class="breadcrumb">
        <li>
          <a href="<?php echo site_url(""); ?>">
            <?php echo ucfirst($this->uri->segment(1));?>
          </a> 
          <span class="divider">/</span>
        </li>
        <li>
          <a href="<?php echo site_url("products").'/'.$this->uri->segment(2); ?>">
            <?php echo ucfirst($this->uri->segment(2));?>
          </a>
          <span class="divider">/</span>
        </li>
        <li class="active">
          <a href="#">New</a>
        </li>
      </ul>
      
      <div class="page-header">
        <h2>
          Adding <?php echo ucfirst('product');?>
        </h2>
      </div>
 
      <?php
      //flash messages
      if(isset($flash_message)){
        if($flash_message == TRUE)
        {
          echo '<div class="alert alert-success">';
            echo '<a class="close" data-dismiss="alert">×</a>';
            echo '<strong>Well done!</strong> new product created with success.';
          echo '</div>';
        }else{
          echo '<div class="alert alert-error">';
            echo '<a class="close" data-dismiss="alert">×</a>';
            echo '<strong>Oh snap!</strong> change a few things up and try submitting again.';
          echo '</div>';          
        }
      }
      ?>
      
      <?php
      //form data
      $attributes = array('class' => 'form-horizontal', 'id' => '', 'method'=>'post', 'enctype' => 'multipart/form-data');
      //form validation
      echo validation_errors();
      
      echo form_open('products/add', $attributes);
      ?>
        <fieldset>
          <div class="control-group">
            <label for="inputError" class="control-label">Name</label>
            <div class="controls">
              <input type="text" id="" name="name" value="<?php echo set_value('name'); ?>" >
              <!--<span class="help-inline">Woohoo!</span>-->
            </div>
          </div>
            <div class="control-group">
                <label for="inputError" class="control-label">Thumbnail</label>
                <div class="controls">
                    <input type="file" id="" class="filestyle" name="thumbnail" value="<?php echo set_value('thumbnail'); ?>" data-icon="false">
                    <!--<span class="help-inline">Cost Price</span>-->
                </div>
            </div>
          <div class="control-group">
            <label for="inputError" class="control-label">Video</label>
            <div class="controls">
                <input type="file" id="" class="filestyle" name="data1" value="<?php echo set_value('data1'); ?>" data-icon="false">
              <!--<span class="help-inline">Cost Price</span>-->
            </div>
          </div>
          <div class="control-group">
            <label for="inputError" class="control-label">Map</label>
            <div class="controls">
                <input type="file" id="" class="filestyle" name="data2" value="<?php echo set_value('data2'); ?>" data-icon="false">
              <!--<span class="help-inline">Cost Price</span>-->
            </div>
          </div>
          <div class="control-group">
            <label for="inputError" class="control-label">Map Geometry</label>
            <div class="controls">
                <input type="file" id="" class="filestyle" name="data3" value="<?php echo set_value('data3'); ?>" data-icon="false">
                <!--<span class="help-inline">Cost Price</span>-->
            </div>
          </div>
          <div class="control-group">
            <label for="inputError" class="control-label">AR Geometry</label>
            <div class="controls">
<!--              <input type="text" name="object" value="--><?php //echo set_value('object'); ?><!--">-->
                <input type="file" id="" class="filestyle" name="object" value="<?php echo set_value('object'); ?>" data-icon="false">
              <!--<span class="help-inline">OOps</span>-->
            </div>
          </div>

          <div class="form-actions">
            <button class="btn btn-primary" type="submit">Save changes</button>
            <button class="btn" type="reset">Cancel</button>
          </div>
        </fieldset>

      <?php echo form_close(); ?>

    </div>
     