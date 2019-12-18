<?php 
  //include "header.php";
  //include "menu.php";
  $sql    = "SELECT * FROM Admin";
  $conn =  mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 0;

  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM admin WHERE  
    admin_id='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);
?>*/

 /* <script type="text/javascript">window.location.href="admin_view.php"</script>
<?php
  }
?>


      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
            <div class="row ">
                       
                  <table border class="table table-hover" >
                  <tr style="color:blue">
                    <th>Serial No</th>
                    <th>Admin ID</th>
                    <th>Admin Name</th>
                    <th>Action</th>
                   

                  </tr>
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) {
                  ?>
                  <tr>
                    <td><?php echo ++$count; ?></td>
                    <td><?php echo $rows['admin_id']; ?></td>
                    <td><?php echo $rows['admin_name']; ?></td>
                    
                    <td>
                      <!--<a class='btn btn-primary' href="admin_update.php?edit=<?php echo $rows['admin_id']; ?>">Edit</a>-->
                      <a class='btn btn-danger' href="admin_view.php?del=<?php echo $rows['admin_id']; ?>">Delete</a>
                      
                      
                    </td>
                  </tr>
                  <?php } ?>
                  </table>

                
                