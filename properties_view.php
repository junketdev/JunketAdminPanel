<?php 
  //include "header.php";
  //include "menu.php";
  $sql    = "SELECT * FROM properties";
  $conn= mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 0;
  
  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM properties WHERE  
    property_id='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);


?>
  <script type="text/javascript">window.location.href="properties_view.php"</script>
<?php
  }
  
?>

  
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
            <div class="row ">
                        <!--CUSTOM CHART START -->
                        <!--
                        <div class="border-head">
                <h2><i class="fa fa-table fa-lg"></i> Category Master </h2>
              </div><hr>
              <a class="btn btn-info btn-md" href="category_add.php"> Add New Category</a><br>
              <div class="custom-bar-chart">
                <div class="table-responsive">
                      -->


                  <table class="table table-hover" border="5">
                  <tr style="color:blue">
                    <th>Serial No</th>
                    <th>Property Id</th>
                    <th>Property Name</th>
                    <th>Property Type</th>
                    <th>City</th>
                    <th>Longitude</th>
                    <th>Latitude</th>
                    <th>Description</th>
                    <th>Contact No</th>
                    <th>Email</th>
                    <th>Rating</th>
                    <th>Amenities</th>
                    <th>Offers</th>
                    <th>Images</th>

                  </tr>
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) {
                  ?>
                  <tr>
                    <td><?php echo ++$count; ?></td>
                    <td><?php echo $rows['property_id']; ?></td>
                    <td><?php echo $rows['property_name']; ?></td>
                    <td><?php echo $rows['property_type']; ?></td>
                    <td><?php echo $rows['city']; ?></td>
                    <td><?php echo $rows['longitude']; ?></td>
                    <td><?php echo $rows['latitude']; ?></td>
                    <td><?php echo $rows['description']; ?></td>
                    <td><?php echo $rows['contact']; ?></td>
                    <td><?php echo $rows['email']; ?></td>
                    <td><?php echo $rows['rating']; ?></td>
                    <td><?php echo $rows['amenities']; ?></td>
                    <td><?php echo $rows['offers']; ?></td>
                    <td><?php echo $rows['image']; ?></td>


                    <td>
                     <!--<a class='btn btn-primary' href="category_update.php?edit=<?php echo $rows['catid']; ?>">Edit</a>-->
                      <a class='btn btn-danger' href="properties_view.php?del=<?php echo $rows['property_id']; ?>">Delete</a>
                      
                      
                    </td>
                  </tr>
                  <?php } ?>
                  </table>

                  <!--
                </div> 
              </div> -->
                        <!--custom chart end-->
            </div><!-- /row  
          </section>
      </section>
      <br>
    -->

      <!--main content end-->
      <!--footer start-->
