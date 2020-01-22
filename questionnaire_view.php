<?php 
  //include "header.php";
  //include "menu.php";
  $sql    = "SELECT * FROM questionnaire";
  $conn= mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 0;
  
  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM questionnaire WHERE  
    qid='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);


?>
  <script type="text/javascript">window.location.href="questionnaire_view.php"</script>
<?php
  }

  //Edit Query if click the edit buttob then check using isset() method !
  if (isset($_REQUEST['edit'])) 
  {
    # code...
    $ed1="UPDATE questionnaire where 
    qid='".$_REQUEST['edit']."'";
    $edit_result=mysqli_query($conn,$ed1);
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
                    <th>Question Id</th>
                    <th>Question</th>
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
                      <a class='btn btn-primary' href="edit_questionnaire.php?qid=<?php echo $rows['qid']; ?>">Edit</a>
                      <a class='btn btn-danger' href="questionnaire_view.php?del=<?php echo $rows['qid']; ?>">Delete</a>
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
