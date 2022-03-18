<?php 

include('../includes/dbcon.php');
	
	$name = $_POST['name'];
	$price = $_POST['price'];
	$menu = $_POST['menu'];
	$combo_type = $_POST['combo_type'];
	
	mysqli_query($con,"INSERT INTO combo(combo_name,combo_price,combo_type) 
			VALUES('$name','$price','$combo_type')")or die(mysqli_error());  
	$id=mysqli_insert_id($con);
	foreach ($menu as $value)
	{
		if ($value<>0)
		{
		mysqli_query($con,"INSERT INTO combo_details(combo_id,menu_id) 
			VALUES('$id','$value')")or die(mysqli_error());  
		}
	}
			echo "<script type='text/javascript'>alert('Successfully added new combo meal!');</script>";
			echo "<script>document.location='combo.php'</script>";   
?>