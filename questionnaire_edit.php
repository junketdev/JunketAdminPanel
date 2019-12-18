<?php 
  //include "header.php";
  //include "menu.php";
  $sql    = "SELECT * FROM questionnaire";
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
                    <th>Question Id</th>
                    <th>Question No.</th>
                    <th>Option 1</th>
                    <th>Option 2</th>
                    <th>Option 3</th>
                    <th>Option 4</th>
                    <th>Action</th>
                   

                  </tr>
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) {
                  ?>
                  <tr>
                    <td><?php echo ++$count; ?></td>
                    <td><?php echo $rows['qid']; ?></td>
                    <td><?php echo $rows['question']; ?></td>
                    <td><?php echo $rows['option1']; ?></td>
                    <td><?php echo $rows['option2']; ?></td>
                    <td><?php echo $rows['option3']; ?></td>
                    <td><?php echo $rows['option4']; ?></td>
                    
                    
                    <td>
                      <a class='btn btn-primary' href="questionnaire_update.php?edit=<?php echo $rows['qid']; ?>">Edit</a>
                      <a class='btn btn-danger' href="questionnaire_view.php?del=<?php echo $rows['qid']; ?>">Delete</a>
                      
                      
                    </td>
                  </tr>
                  <?php } ?>
                  </table>

                
                