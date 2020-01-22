<?php 
  //include "header.php";
  //include "menu.php";
  $sql    = "SELECT * FROM user_details";
  $conn= mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 0;
  
  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM user_details WHERE  
    user_id='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);


?>
  <script type="text/javascript">window.location.href="user_details_view.php"</script>
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
                    <th>User Id</th>
                    <th>User Name</th>
                    <th>Gender</th>
                    <th>Date Of Birth</th>
                    <th>Profile <PICTURE></PICTURE></th>
                    <th>Action</th>
                    

                  </tr>
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) {
                  ?>
                  <tr>
                    <td><?php echo ++$count; ?></td>
                    <td><?php echo $rows['user_id']; ?></td>
                    <td><?php echo $rows['user_name']; ?></td>
                    <td><?php echo $rows['gender']; ?></td>
                    <td><?php echo $rows['dob']; ?></td>
                    <td><?php echo $rows['profile_pic']; ?></td>


                    <td>
                      <a class='btn btn-primary' href="#">Edit</a>
                      <a class='btn btn-danger' href="user_details_view.php?del=<?php echo $rows['user_id']; ?>">Delete</a>
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
