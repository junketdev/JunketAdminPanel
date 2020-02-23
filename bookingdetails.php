<?php 
  //include "header.php";
  //include "menu.php";
  $bid = "B001";
  $sql    = "SELECT * FROM booking where booking_id = '" . $bid . "'" ;
  $conn= mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 1   ;
  
  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM booking WHERE  
    booking_id='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);


?>
  <script type="text/javascript">window.location.href="bookingdetails.php"</script>
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
                  <H1> BOOKING DETAILS : </H1>

                  <table class="table table-hover" border="5">
                  <tr style="color:blue">
                

                    <th>Booking Id</th>
                    <th>Room Id </th>
                    <th>User Id</th>    
                    <th>User Name</th>
                    
                    <th>Contact Number</th>
                    <th>User Email</th>
                    <th>Check-In Date</th>
                    <th>Check-Out Date</th>
                    <th>Total Number Of Nights</th>
                    <th>Total Number of Rooms alloted </th>


      
                  </tr>
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) {
                  ?>
                  <tr>
                    <td><?php echo $rows['booking_id']; ?></td>

                    <td><?php echo $rows['room_id']; ?></td>
                    
                    <td><?php echo $rows['user_id']; ?></td>

                    <td><?php echo $rows['user_name']; ?></td>

                    <td><?php echo $rows['contact_no']; ?></td>

                    <td><?php echo $rows['email']; ?></td>

                    <td><?php echo $rows['checkin_date']; ?></td>

                    <td><?php echo $rows['checkout_date']; ?></td>

                    <td><?php echo $rows['totalnight']; ?></td>

                    <td><?php echo $rows['totalrooms']; ?></td>

                    <!--
                    <td><?php echo $rows
                    ['remarks']; ?></td>
                    
-->





                    <td>
                     
                      <a class='btn btn-danger' href="bookingdetails.php?del=<?php echo $rows['booking_id']; ?>">Delete</a>
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
