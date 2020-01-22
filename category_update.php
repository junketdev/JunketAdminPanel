<?php 
  include "header.php";
  include "menu.php";

if (isset($_REQUEST['edit']))
   {
    $sql1="SELECT * FROM category WHERE catid='".$_REQUEST['edit']."'";
    $result1=mysqli_query($conn,$sql1);
    $rows=mysqli_fetch_array($result1,MYSQLI_BOTH);
   }
  

if(isset ($_POST['submit']))
{
  $catname=$_POST['name'];
  $cid=$_POST['cid'];

  $add="Update category set catname = '".$catname."' where catid ='$cid'";
  
    $result = $conn->query($add);
    
    header("Location:category_view.php");
}
?> 
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
            <div class="row mt">
                        <!--CUSTOM CHART START -->
                         <div class="border-head">
                  <h2><i class="fa fa-edit fa-lg"></i> Update category</h2>
              </div><hr>
              <div class="custom-bar-chart">
                <form class="form-horizontal" method="post" enctype="multipart/form-data">
                  <fieldset>
                    <div class="form-group">
                      <div class="col-md-12">

                          <input type="hidden" name="cid" value="<?php echo $rows['catid']; ?>" />

                        <label class="col-md-3 control-label"> New Category:
                        <span class="text-danger">*</span></label>
                        <div class="col-md-4">  
                          <input type="text"  name="name" id="Cat_Master" value="<?php echo $rows['catname']; ?>" />
                        </div>
                      </div>
                    </div>
                   
                      <div class="form-group">
                        <div class="col-md-4">
                        </div>
                        <div class="col-md-4">
                          <input type="submit" value="edit" name="submit" class="btn btn-warning btn-md">
                          <a href="category_view.php">
                          <input type="button" name="reset" value="Cancel" class="btn btn-default btn-md"></a>
                        </div>
                      </div>
                    </fieldset>
                  </form>
              </div>
                        <!--custom chart end-->
  					</div><!-- /row -->	
					</section>
      </section>
      <br>
      <!--main content end-->
      <!--footer start-->
<?php
  include "footer.php";
  ?>