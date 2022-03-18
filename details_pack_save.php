<?php 
session_start();
include('includes/dbcon.php');

	if(isset($_POST['combo_id']))
	{ $cid = $_POST['combo_id'];


	$query = mysqli_query($con, "SELECT * FROM combo WHERE combo_id='$cid'");
			$row=mysqli_fetch_array($query);
				$price=$row['combo_price'];
				$payable=$pax*$price;
	

	mysqli_query($con,"INSERT INTO reservation(combo_id,combo_price) 
			VALUES('$cid', '$price')")or die(mysqli_error($con));  

			$id=mysqli_insert_id($con);
			$_SESSION['id']=$id;
			echo "<script>document.location='payment.php'</script>";   
	
	
	}
?>