<?php include 'header.php';?>

<body>
	<?php include 'navbar.php';?>
	<?php include 'menu-tab.php';?>
	
		<div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12" style="background-color:#343434;">
				<div class = "col-md-8 col-lg-8">
					<div class = "widget">
						<div class = "widget-head">
							Map Of Store Location
						</div>
						<div class = "widget-content">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3868.2662405777533!2d121.28432301480636!3d14.179178290071986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd5e40b34a9031%3A0x97077f59e923ece4!2sCasa+De+Padrid%2C+Bay%2C+Laguna!5e0!3m2!1sen!2sph!4v1557117771033!5m2!1sen!2sph" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
						</div>
					</div>				
				</div>
				<div class = "col-md-4 col-lg-4">
					<div class = "widget">
						<div class = "widget-head">
							Message/Feedback
						</div>
						<div class = "widget-content">
							<div class = "padd">
								<form class="form-horizontal" action = "add_message.php" method="post">                              
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Fullname</label>
                                  <div class="col-lg-8">
                                    <input name = "fullname" type="text" class="form-control" placeholder="Please type your name" required >
                                  </div>
                                </div>                                
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Email</label>
                                  <div class="col-lg-8">
                                    <input type="email"  name = "email" class="form-control" placeholder="Please type your email" required>
                                  </div>
                                </div>
								<div class="form-group">
                                  <label class="col-lg-3 control-label">Subject</label>
                                  <div class="col-lg-8">
                                    <input type="text" name = "subject" class="form-control" placeholder="Subject" required>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Comments</label>
                                  <div class="col-lg-8">
                                    <textarea name = "message" class="form-control" rows="5" placeholder="Comments here....."required></textarea>
                                  </div>
                                </div>
								<div class="form-group">
                                  <div class="col-lg-offset-3 col-lg-8">
                                    <button  class="btn btn-sm btn-success btn-block">Send</button>                                  
                                  </div>
                                </div>
                              </form>

						</div>
						</div>
					</div>		
				</div>				
				
			</div>	
		</div>
		<div class = "content">
			<div class = "col-lg-12 col-md-12  col-sm-12">
				<div class = "col-lg-12 col-md-12 col-sm-12 ">
					<div class = "title-header">
						
					</div>					
				</div>
				<br/>
				<br/>
				<br/>
				<div class = "col-lg-3 col-md-3 col-sm-3">
					
				</div>
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/iconz.png"/>
					</div>
					<h4 class = "center">JOSE O. PADRID</h4>
					<h5 class = "center">Owner/Sole Proprietor</h5> 										
				</div>
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/iconz.png"/>
					</div>
					<h4 class = "center">JULIAN ROD PADRID</h4>
					<h5 class = "center">Manager</h5>										
				</div>
				<div class = "col-lg-3 col-md-3 col-sm-3">
										
				</div>
			</div>
		</div>
<?php include 'footer.php';?> 	
<?php include 'script.php';?>
</body>
</html>



