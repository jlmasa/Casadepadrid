<?php session_start();
if(empty($_SESSION['id'])):
header('Location:index.php');
endif;
?>
<?php include 'header.php';?>
    <script language="JavaScript"><!--
javascript:window.history.forward(1);
//--></script>
<style>
#hidden_div1 {
    display: none;
}
#hidden_div2 {
    display: none;
}
#hidden_div3 {
    display: none;
}
#hidden_div4 {
    display: none;
}
#hidden_div5 {
    display: none;
}
</style>
<body>
	<?php include 'navbar.php';?>
	<?php include 'menu-tab.php';?>
	
		<div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12 style="background-color:#343434;">
        
				<div class = "col-md-9 col-lg-9">
					<div class="widget wgreen">
                
                <div class="widget-head">
                  <div class="pull-left">Reservation Details</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <div class="padd">

                    <br>
                    <!-- Form starts.  -->
                     <form class="form-horizontal" role="form" action="details_save.php" method="post">
                                <div class="form-group">
                                  <label class="col-lg-2 control-label">Venue</label>
                                  <div class="col-lg-5">
                                    <textarea class="form-control" name="venue" rows="5" placeholder="Complete Address of venue" required></textarea>
                                  </div>
                                </div>    

                                <div class="form-group">
                                  <label class="col-lg-2 control-label">Date of Event</label>
                                  <div class="col-lg-5">
                                    <input type="text" id="datepicker" class="form-control" name="date" required>
                                    <span class = "label label-warning">Check if date is available</span>
                                  </div>
                                </div>


                                <div class="form-group">
                                  <label class="col-lg-2 control-label">Time of Event</label>
                                  <div class="col-lg-5">
                                    <div id="datetimepicker" class="input-append input-group dtpicker">
                                     
									  <input data-format="hh:mm A" class="form-control" type="time" name="time" id="datepicker" required="true">
                                      <span class="input-group-addon">
                                        <i data-time-icon="fa fa-clock-o" data-date-icon="fa fa-calendar" class="fa fa-clock-o"></i>
                                      </span>
                                    </div>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label class="col-lg-2 control-label">Motif</label>
                                  <div class="col-lg-5">
                                    <input type="text" class="form-control" placeholder="Write theme/motif" name="motif">
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label class="col-lg-2 control-label">Occasion</label>
                                  <div class="col-lg-5">
                                    <select class="form-control select2 " id="exampleSelect1" name="ocassion" placeholder="Select occasion" onchange="showDiv(this)" required>
                                      <option value="Baptism">Baptism</option>
                                      <option value="Birthday">Birthday</option>
                                      <option value="Party">Party</option>
                                      <option value="Wedding">Wedding</option>
                                    </select>
									
                                  </div>
                                </div>  
                                <div class="form-group">
                                  <label class="col-lg-2 control-label">No. Pax</label>
                                  <div class="col-lg-5">
                                    <select class="form-control select2 " id="exampleSelect1" name="pax" placeholder="Select Pax No." required>
                                      <option value="100">100</option>
                                      <option value="150">150</option>
                                      <option value="200">200</option>
                                         </select>
									
                                  </div>
                                </div> 
                                  
                               <div id="hidden_div1">
    <label class="col-lg-2 control-label"></label>
        <div class="col-lg-5">

	
		
		<?php
include('includes/dbcon.php');

    $query=mysqli_query($con,"select * from combo where combo_type='Baptism'")or die(mysqli_error($con));
      $count=mysqli_num_rows($query);
      while ($row=mysqli_fetch_array($query)){
        $id=$row['combo_id'];
        $name=$row['combo_name'];
        $price=$row['combo_price'];
	

       
?>     


          <div class="col-md-6">
              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left"><?php echo $name;?> - P<?php echo $price;?></div>
                  <div class="widget-icons pull-right">
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content referrer">
                  <!-- Widget content -->
                  
                  <table class="table table-striped table-bordered table-hover">
                    <tbody>

<?php
    $query1=mysqli_query($con,"select * from combo_details natural join menu where combo_id='$id'")or die(mysqli_error($con));
      while ($row1=mysqli_fetch_array($query1)){
        $cid=$row1['combo_details_id'];
        $menu_id=$row1['menu_id'];
        $menu_name=$row1['menu_name'];
        
?>                        
                    <tr>
                      <td><?php echo $menu_name;?></td>
                    </tr> 
                   
                
<?php }?>                    
                    
                  </tbody></table>

                  <div class="widget-foot text-center">
                    <input type="radio" id="inlineCheckbox1" value="<?php echo $id;?>" name="combo_id">
                  </div>
                </div>
              </div>

            </div>
              <!--end widget-->
            <?php }?>  
         </div>
      </div> 
	      
                               <div id="hidden_div2">
    <label class="col-lg-2 control-label"></label>
        <div class="col-lg-5">

	
		
		<?php
include('includes/dbcon.php');

    $query=mysqli_query($con,"select * from combo where combo_type='Birthday'")or die(mysqli_error($con));
      $count=mysqli_num_rows($query);
      while ($row=mysqli_fetch_array($query)){
        $id=$row['combo_id'];
        $name=$row['combo_name'];
        $price=$row['combo_price'];
	

       
?>     


          <div class="col-md-6">
              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left"><?php echo $name;?> - P<?php echo $price;?></div>
                  <div class="widget-icons pull-right">
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content referrer">
                  <!-- Widget content -->
                  
                  <table class="table table-striped table-bordered table-hover">
                    <tbody>

<?php
    $query1=mysqli_query($con,"select * from combo_details natural join menu where combo_id='$id'")or die(mysqli_error($con));
      while ($row1=mysqli_fetch_array($query1)){
        $cid=$row1['combo_details_id'];
        $menu_id=$row1['menu_id'];
        $menu_name=$row1['menu_name'];
        
?>                        
                    <tr>
                      <td><?php echo $menu_name;?></td>
                    </tr> 
                   
                
<?php }?>                    
                    
                  </tbody></table>

                  <div class="widget-foot text-center">
                    <input type="radio" id="inlineCheckbox1" value="<?php echo $id;?>" name="combo_id">
                  </div>
                </div>
              </div>

            </div>
              <!--end widget-->
            <?php }?>  
         </div>
      </div> 
	 <div id="hidden_div3">
    <label class="col-lg-2 control-label"></label>
        <div class="col-lg-5">

	
		
		<?php
include('includes/dbcon.php');

    $query=mysqli_query($con,"select * from combo where combo_type='Party'")or die(mysqli_error($con));
      $count=mysqli_num_rows($query);
      while ($row=mysqli_fetch_array($query)){
        $id=$row['combo_id'];
        $name=$row['combo_name'];
        $price=$row['combo_price'];
	

       
?>     


          <div class="col-md-6">
              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left"><?php echo $name;?> - P<?php echo $price;?></div>
                  <div class="widget-icons pull-right">
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content referrer">
                  <!-- Widget content -->
                  
                  <table class="table table-striped table-bordered table-hover">
                    <tbody>

<?php
    $query1=mysqli_query($con,"select * from combo_details natural join menu where combo_id='$id'")or die(mysqli_error($con));
      while ($row1=mysqli_fetch_array($query1)){
        $cid=$row1['combo_details_id'];
        $menu_id=$row1['menu_id'];
        $menu_name=$row1['menu_name'];
        
?>                        
                    <tr>
                      <td><?php echo $menu_name;?></td>
                    </tr> 
                   
                
<?php }?>                    
                    
                  </tbody></table>

                  <div class="widget-foot text-center">
                    <input type="radio" id="inlineCheckbox1" value="<?php echo $id;?>" name="combo_id">
                  </div>
                </div>
              </div>

            </div>
              <!--end widget-->
            <?php }?>  
         </div>
      </div>
 <div id="hidden_div4">
    <label class="col-lg-2 control-label"></label>
        <div class="col-lg-5">

	
		
		<?php
include('includes/dbcon.php');

    $query=mysqli_query($con,"select * from combo where combo_type='Funeral'")or die(mysqli_error($con));
      $count=mysqli_num_rows($query);
      while ($row=mysqli_fetch_array($query)){
        $id=$row['combo_id'];
        $name=$row['combo_name'];
        $price=$row['combo_price'];
	

       
?>     


          <div class="col-md-6">
              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left"><?php echo $name;?> - P<?php echo $price;?></div>
                  <div class="widget-icons pull-right">
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content referrer">
                  <!-- Widget content -->
                  
                  <table class="table table-striped table-bordered table-hover">
                    <tbody>

<?php
    $query1=mysqli_query($con,"select * from combo_details natural join menu where combo_id='$id'")or die(mysqli_error($con));
      while ($row1=mysqli_fetch_array($query1)){
        $cid=$row1['combo_details_id'];
        $menu_id=$row1['menu_id'];
        $menu_name=$row1['menu_name'];
        
?>                        
                    <tr>
                      <td><?php echo $menu_name;?></td>
                    </tr> 
                   
                
<?php }?>                    
                    
                  </tbody></table>

                  <div class="widget-foot text-center">
                    <input type="radio" id="inlineCheckbox1" value="<?php echo $id;?>" name="combo_id">
                  </div>
                </div>
              </div>

            </div>
              <!--end widget-->
            <?php }?>  
         </div>
      </div> 	  
	   <div id="hidden_div5">
    <label class="col-lg-2 control-label"></label>
        <div class="col-lg-5">

	
		
		<?php
include('includes/dbcon.php');

    $query=mysqli_query($con,"select * from combo where combo_type='Wedding'")or die(mysqli_error($con));
      $count=mysqli_num_rows($query);
      while ($row=mysqli_fetch_array($query)){
        $id=$row['combo_id'];
        $name=$row['combo_name'];
        $price=$row['combo_price'];
	

       
?>     


          <div class="col-md-6">
              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left"><?php echo $name;?> - P<?php echo $price;?></div>
                  <div class="widget-icons pull-right">
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content referrer">
                  <!-- Widget content -->
                  
                  <table class="table table-striped table-bordered table-hover">
                    <tbody>

<?php
    $query1=mysqli_query($con,"select * from combo_details natural join menu where combo_id='$id'")or die(mysqli_error($con));
      while ($row1=mysqli_fetch_array($query1)){
        $cid=$row1['combo_details_id'];
        $menu_id=$row1['menu_id'];
        $menu_name=$row1['menu_name'];
        
?>                        
                    <tr>
                      <td><?php echo $menu_name;?></td>
                    </tr> 
                   
                
<?php }?>                    
                    
                  </tbody></table>

                  <div class="widget-foot text-center">
                    <input type="radio" id="inlineCheckbox1" value="<?php echo $id;?>" name="combo_id">
                  </div>
                </div>
              </div>

            </div>
              <!--end widget-->
            <?php }?>  
         </div>
      </div> 
                                <div class="form-group">
                                  <div class="col-lg-offset-2 col-lg-6">
                                    <button type="reset" class="btn btn-sm btn-default">Clear</button>
                                    <button type="submit" class="btn btn-sm btn-primary">Next</button>
                                    
                                  </div>
                                </div>
                              </form>
                  </div>
                </div>
                  <div class="widget-foot">
                    <!-- Footer goes here -->
                  </div>
              </div>		
				</div>
				<?php include('right-sidebar.php');?>
				
			</div>	
		</div>
<?php include 'footer.php';?> 	
<?php include 'script.php';?>
<script>
  $(function () {
  //Initialize Select2 Elements
    $(".select2").select2();
  })
$( "#datepicker" ).datepicker({ minDate: 0});


function showDiv(select){
   if(select.value=="Baptism"){
    document.getElementById('hidden_div1').style.display = "block";
    document.getElementById('hidden_div2').style.display = "none";
	document.getElementById('hidden_div3').style.display = "none";
	  document.getElementById('hidden_div4').style.display = "none";
	  document.getElementById('hidden_div5').style.display = "none";
   }else if(select.value=="Birthday"){
    document.getElementById('hidden_div2').style.display = "block";
	  document.getElementById('hidden_div1').style.display = "none";
	  document.getElementById('hidden_div3').style.display = "none";
	  document.getElementById('hidden_div4').style.display = "none";
	  document.getElementById('hidden_div5').style.display = "none";
   } else if(select.value=="Party"){
    document.getElementById('hidden_div3').style.display = "block";
	  document.getElementById('hidden_div1').style.display = "none";
	  document.getElementById('hidden_div4').style.display = "none";
	  document.getElementById('hidden_div2').style.display = "none";
	  document.getElementById('hidden_div5').style.display = "none";
   } else if(select.value==4){
    document.getElementById('hidden_div4').style.display = "block";
	  document.getElementById('hidden_div1').style.display = "none";
	  document.getElementById('hidden_div2').style.display = "none";
	  document.getElementById('hidden_div3').style.display = "none";
	  document.getElementById('hidden_div5').style.display = "none";
   } else if(select.value=="Wedding"){
	    document.getElementById('hidden_div5').style.display = "block";
	  document.getElementById('hidden_div1').style.display = "none";
	  document.getElementById('hidden_div2').style.display = "none";
	  document.getElementById('hidden_div3').style.display = "none";
	  	  document.getElementById('hidden_div4').style.display = "none";
   }
} 
</script>
</script>
</body>
</html>



