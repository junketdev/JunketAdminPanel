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
    hotel_id='".$_REQUEST['del']."' " ;
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
                    
              <H1> RATING OF HOTELS : </H1>
                  <table class="table table-hover" border="5">
                  <tr style="color:blue">
                    
                    <th>Hotelier Id</th>
                    <th>Hotelier Name</th>
                    <th>Rating</th>
                   
                  </tr>

                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) {
                  ?>
                  <tr>
                    <td><?php echo $rows['hotel_id']; ?></td>
                    <td><?php echo $rows['hotelier_name']; ?></td>
                    <td><?php echo $rows['rating']; ?></td>
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
