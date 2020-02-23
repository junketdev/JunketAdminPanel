<?php 
  //include "header.php";
  //include "menu.php";
  $sql    = "SELECT * FROM hotelier";
  $conn= mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 0;
  
  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM hotelier WHERE  
    hotelier_id='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);


?>
  <script type="text/javascript">window.location.href="hotelier.php"</script>
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

                  <H1> Hotelier Details :</H1>
                  <table class="table table-hover" border="5">
                  <tr style="color:blue">
                    
                    <th>Hotelier Id</th>
                    <th>Hotelier Name</th>
                    <th>Hotelier Type</th>
                    <th>City</th>
                    <th>Hotelier Address</th>
                    <th>Longitude</th>
                    <th>Latitude</th>
                    <th>Description</th>
                    <th>Contact No</th>
                    <th>Hotelier Email</th>
                    <th>Rating</th>
                    <th>Amenities</th>
                    <th>Offers</th>
                    <th>Images</th>
                    <th>Website</th>
                    <th>Min_price</th>
                    <th>Max_price</th>
                    

                  </tr>
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) {
                  ?>
                  <tr>
                    <td><?php echo $rows['hotel_id']; ?></td>
                    <td><?php echo $rows['hotelier_name']; ?></td>
                    <td><?php echo $rows['hotelier_type']; ?></td>
                    <td><?php echo $rows
                    ['city']; ?></td>
                    <td><?php echo $rows['hotelier_address']; ?></td>
                    <td><?php echo $rows['longitude']; ?></td>
                    <td><?php echo $rows['latitude']; ?></td>
                    <td><?php echo $rows['description']; ?></td>
                    <td><?php echo $rows['contact']; ?></td>
                    <td><?php echo $rows['hotelier_email']; ?></td>
                    <td><?php echo $rows['rating']; ?></td>
                    <td><?php echo $rows['amenities']; ?></td>
                    <td><?php echo $rows['offers']; ?></td>
                    <td><?php echo $rows['image']; ?></td>
                    <td><?php echo $rows['website']; ?></td>
                    <td><?php echo $rows['min_price']; ?></td>
                    <td><?php echo $rows['max_price']; ?></td>






                    <td>
                      <a class='btn btn-primary' href="#">Edit</a>
                      <a class='btn btn-danger' href="hotelier.php?del=<?php echo $rows['hotel_id']; ?>">Delete</a>
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
