<!DOCTYPE html>
<html lang="en">
<head>
	<title>User Registration</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body style="background:Gainsboro;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90" style="background:Gainsboro;">
                            <form class="login100-form validate-form flex-sb flex-w" action="User_Register_Action" method="post" enctype="multipart/form-data">
					<span class="login100-form-title p-b-51">
						User Registration
					</span>
                                        <div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Mobile Number is required">
						<input class="input100" type="text" name="mobile" placeholder="Mobile Number">
						<span class="focus-input100"></span>
					</div>
                                        <div class="wrap-input100 validate-input m-b-16" data-validate = "Email is required">
						<input class="input100" type="mail" name="email" placeholder="Mail Id">
						<span class="focus-input100"></span>
					</div>
                                        <div class="wrap-input100 validate-input m-b-16" data-validate = "City is required">
						<input class="input100" type="text" name="city" placeholder="City">
						<span class="focus-input100"></span>
					</div>
                                        <div class="wrap-input100 validate-input m-b-16" data-validate = "Profile Picture is required">
						<input class="input100" type="file" name="file" placeholder="Username" style="margin-top: 20px;">
						<span class="focus-input100"></span>
					</div>
                                        <div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							Register
						</button>
                                        </div>
                        
                                    <h6 style="margin-left: 150px;margin-top: 20px;"><a href="index.jsp" style="font-size: 20px; color:darkblue; font-family: cursive;">Click Back</a></h6>
                                     </form>
			</div>
                </div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main_1.js"></script>

</body>
</html>