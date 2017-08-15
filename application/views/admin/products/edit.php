    <div class="container top">
      
      <ul class="breadcrumb">
        <li>
          <a href="<?php echo site_url("products"); ?>">
            <?php echo ucfirst($this->uri->segment(1));?>
          </a> 
          <span class="divider">/</span>
        </li>
        <li>
          <a href="<?php echo site_url("products/update").'/'.$this->uri->segment(3); ?>">
              Update
          </a> 
          <span class="divider">/</span>
        </li>
        <li class="active">
          <a href="#"><?php echo ucfirst($this->uri->segment(3));?></a>
        </li>
      </ul>
      
      <div class="page-header">
        <h2>
          Updating <?php echo ucfirst('product');?>
        </h2>
      </div>

 
      <?php
      //flash messages
      if($this->session->flashdata('flash_message')){
        if($this->session->flashdata('flash_message') == 'updated')
        {
          echo '<div class="alert alert-success">';
            echo '<a class="close" data-dismiss="alert">×</a>';
            echo '<strong>Well done!</strong> product updated with success.';
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

      echo form_open('products/update/'.$this->uri->segment(3).'', $attributes);
      ?>
        <fieldset>
          <div class="control-group">
            <label for="inputError" class="control-label">Name</label>
            <div class="controls">
              <input type="text" readonly="readonly" id="" name="name" value="<?php echo $product->name; ?>" >
              <!--<span class="help-inline">Woohoo!</span>-->
            </div>
          </div>
            <div class="control-group">
                <label for="inputError" class="control-label">Thumbnail</label>
                <div class="controls">
                    <input type="file" id="" class="filestyle" name="thumbnail" value="<?php echo $product->thumbnail; ?>" data-icon="false">
                    <!--<span class="help-inline">Cost Price</span>-->
                </div>
            </div>
            <div class="control-group">
            <label for="inputError" class="control-label">Video</label>
            <div class="controls">
                <input type="file" id="" class="filestyle" name="data1" value="<?php echo $product->data1; ?>" data-icon="false">
              <!--<span class="help-inline">Cost Price</span>-->
            </div>
          </div>          
          <div class="control-group">
            <label for="inputError" class="control-label">Map</label>
            <div class="controls">
<!--              <input type="text" id="" name="data2" value="--><?php //echo $product->data2; ?><!--">-->
                <input type="file" id="" class="filestyle" name="data2" value="<?php echo $product->data2; ?>" data-icon="false">
              <!--<span class="help-inline">Cost Price</span>-->
            </div>
          </div>
          <div class="control-group">
            <label for="inputError" class="control-label">Map Geometry</label>
            <div class="controls">
<!--              <input type="text" name="data3" value="--><?php //echo $product->data3; ?><!--">-->
                <input type="file" id="" class="filestyle" name="data3" value="<?php echo $product->data3; ?>" data-icon="false">
              <!--<span class="help-inline">OOps</span>-->
            </div>
          </div>

          <div class="control-group">
            <label for="inputError" class="control-label">AR Geometry</label>
            <div class="controls">
<!--                <input type="text" name="object" value="--><?php //echo $product->object; ?><!--">-->
                <input type="file" id="" class="filestyle" name="object" value="<?php echo $product->object; ?>" data-icon="false">
                <!--<span class="help-inline">OOps</span>-->
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
                <input type="hidden" name="uid" value="<?php echo $product->uid; ?>">
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
     