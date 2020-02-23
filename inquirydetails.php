<?php 
  //include "header.php";
  //include "menu.php";
  $hotel_id = "230";
  $sql    = "SELECT * FROM inquiry where hotel_id = '" . $hotel_id . "'" ;
  $conn= mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 1   ;
  
  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM inquiry WHERE  
    inquiry_id='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);


?>
  <script type="text/javascript">window.location.href="inquirydetails.php"</script>
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
                  <H1> INQUIRY DETAILS : </H1>

                  <table class="table table-hover" border="5">
                  <tr style="color:blue">
                

                    <th>Inquiry Id</th>
                    <th>Inquiry Date </th>
                    <th>User Id</th>    
                    <th> Hotel Id </th>
                    <th>Inquiry Details</th>
                    
                  </tr>
                  
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) {
                  ?>
                  <tr>
                    <td><?php echo $rows['inquiry_id']; ?></td>

                    <td><?php echo $rows['inquiry_date']; ?></td>
                    
                    <td><?php echo $rows['user_id']; ?></td>

                    <td><?php echo $rows['hotel_id']; ?></td>

                    <td><?php echo $rows['inquiry_details']; ?></td>
                    <!--
                    <td><?php echo $rows
                    ['remarks']; ?></td>
                    
-->





                    <td>
                     
                      <a class='btn btn-danger' href="bookingdetails.php?del=<?php echo $rows['inquiry_id']; ?>">Delete</a>
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
