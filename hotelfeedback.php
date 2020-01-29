<?php 
  //include "header.php";
  //include "menu.php";
  $comp_id = 503;
  $sql    = "SELECT * FROM complain where comp_id = '" . $comp_id . "'" ;
  $conn= mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 0;
  
  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM complain WHERE  
    comp_id='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);


?>
  <script type="text/javascript">window.location.href="hotelfeedback.php"</script>
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
                    
                    <th>Complain Id</th>
                    <th>User Id</th>
                    <th>Date</th>
                    <th>Details</th>
                    <th>Status </th>
                    <th>Type </th>
                    <th>Action </th>


                    

                  </tr>
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) 
                    {
                  ?>
                  <tr>
                    <td><?php echo $rows['comp_id']; ?></td>
                    <td><?php echo $rows['user_id']; ?></td>
                    <td><?php echo $rows['comp_date']; ?></td>
                    <td><?php echo $rows['comp_detail']; ?></td>
                    <td><?php echo $rows['comp_status']; ?></td>
                    <td><?php echo $rows['comp_type']; ?></td>
                    
                    <td>
                     
                      <a class='btn btn-danger' href="hotelfeedback.php?del=<?php echo $rows['comp_id']; ?>">Delete</a>
                    </td>
                  </tr>
                  <?php 
                    } 
                  ?>
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
