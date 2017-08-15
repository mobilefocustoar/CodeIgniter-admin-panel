    <div class="container top">

      <ul class="breadcrumb">
        <li>
          <a href="<?php echo site_url(""); ?>">
            <?php echo "Products";?>
          </a> 
          <span class="divider">/</span>
        </li>
      </ul>

      <div class="page-header users-header">
        <h2>
          <?php echo ucfirst('products');?>
          <a  href="<?php echo site_url("products"); ?>/add" class="btn btn-success">Add a new</a>
        </h2>
      </div>
      
      <div class="row">
        <div class="span12 columns">
          <div class="well">
           
            <?php
           
            $attributes = array('class' => 'form-inline reset-margin', 'id' => 'myform');

            //save the columns names in a array that we will use as filter

                $options_products = array();
            if ($products != null) {
                foreach ($products as $array) {
                    foreach ($array as $key => $value) {
                        if ($key == 'id' or $key == 'uid') continue;
                        $options_products[$key] = $key;
                    }
                    break;
                }
            }
            echo form_open('products', $attributes);
     
              echo form_label('Search:', 'search_string');
              echo form_input('search_string', $search_string_selected, 'style="width: 170px; "');

              echo form_label('Order by:', 'order');
              echo form_dropdown('order', $options_products, $order, 'class="span2"');

              $data_submit = array('name' => 'mysubmit', 'class' => 'btn btn-primary', 'value' => 'Go');

              $options_order_type = array('Asc' => 'Asc', 'Desc' => 'Desc');
              echo form_dropdown('order_type', $options_order_type, $order_type_selected, 'class="span1"');

              echo form_submit($data_submit);

            echo form_close();
            ?>

          </div>

          <table class="table table-striped table-bordered table-condensed">
            <thead>
              <tr>
                <th class="header">#</th>
                <th class="yellow header headerSortDown">Name</th>
                  <th class="red header">Thumbnail</th>
                <th class="green header">Create Date</th>
                <th class="red header">Video</th>
                <th class="red header">Map</th>
                <th class="red header">Map Geometry</th>
                <th class="red header">AR Geometry</th>
                <th class="red header">Action</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $i = 0;
              $page_num = $this->uri->segment(2);
              if ($page_num == '') {
                  $page_num = 1;
              }
              if ($products != null) {
                  foreach ($products as $row) {
                      $i++;
                      echo '<tr>';
                      echo '<td>' . ($i + 10 * ($page_num - 1)) . '</td>';
                      echo '<td>' . $row['name'] . '</td>';
                      echo '<td><a href=' . base_url(). 'uploads/'. $row['uid'] . '/' .$row['thumbnail'] . ' download>' . $row['thumbnail'] . '</a></td>';
                      echo '<td>' . $row['create_date'] . '</td>';
                      echo '<td><a href=' . base_url(). 'uploads/'. $row['uid'] . '/' .$row['data1'] . ' download>' . $row['data1'] . '</a></td>';
                      echo '<td><a href=' . base_url(). 'uploads/'. $row['uid'] . '/' .$row['data2'] . ' download>' . $row['data2'] . '</a></td>';
                      echo '<td><a href=' . base_url(). 'uploads/'. $row['uid'] . '/' .$row['data3'] . ' download>' . $row['data3'] . '</a></td>';
                      echo '<td><a href=' . base_url(). 'uploads/'. $row['uid'] . '/' .$row['object'] . ' download>' . $row['object'] . '</a></td>';
                      echo '<td class="crud-actions">
                                <a href="' . site_url("") . 'products/update/' . $row['uid'] . '" class="btn btn-info">Update</a>
                                <button class="btn btn-danger" data-href="' . site_url("") . 'products/delete/' . $row['uid'] . '" data-toggle="modal" data-target="#confirm-delete">Delete</button>
                            </td>';
                      echo '</tr>';
                  }
              }
              ?>      
            </tbody>
          </table>

          <?php echo '<div class="pagination">'.$this->pagination->create_links().'</div>'; ?>

      </div>
    </div>

