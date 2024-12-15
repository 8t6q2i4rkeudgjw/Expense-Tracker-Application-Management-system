<%@page import="code.DB"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title> Payment Process </title> 
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
  

        <%  
             
             String uname = (String)session.getAttribute("username");  
             String uid = (String)session.getAttribute("userid");
             String pid=request.getParameter("pid");
             String pname = request.getParameter("pname");
             String stock = request.getParameter("stock");
             String pquantity = request.getParameter("pquantity");
             String upquantity = request.getParameter("upquantity");
             String price = request.getParameter("price");
             String amount = request.getParameter("amount");
             String total = request.getParameter("total");
             
             
           
             System.out.println(uname);
             System.out.println(uid);
             System.out.println(pid);
             System.out.println(pname);
             System.out.println(pquantity);
             System.out.println(stock);
             System.out.println(price);
                
         %>
<body> 
  
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
                            <form action="payment" method="post" >
					<span class="login100-form-title p-b-51">
						Add To My Cart  
					</span> 
                                
                                       <div class="wrap-input100 validate-input m-b-16" data-validate = "user Id is required">
						<input class="input100" type="text" name="uid" value="<%=uid%>">
						<span class="focus-input100"></span>
					</div>
                                
                                       <div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input class="input100" type="text" name="uname" value="<%=uname%>">
						<span class="focus-input100"></span>
					</div>
                                          
                                         <div class="wrap-input100 validate-input m-b-16" data-validate = "Productname is required">
						<input class="input100" type="text" name="pname" value="<%=pname%>">
						<span class="focus-input100"></span>
					</div>
                                      
                                       <div class="wrap-input100 validate-input m-b-16" data-validate = "Total Amount to be Paid">
						<input class="input100" type="text" name="total" value="<%=amount%>">
						<span class="focus-input100"></span>
					</div>
                                       
                                        <div class="wrap-input100 validate-input m-b-16" data-validate = "Total Amount to be Paid">
						<input class="input100" type="text" name="cardname"  placeholder="Card Name "  >
						<span class="focus-input100"></span>
					</div>
                                        
                                        <div class="wrap-input100 validate-input m-b-16" data-validate = "Card Name of ">
						<input class="input100" type="text" name="cardno"  placeholder="CardNumber "  >
						<span class="focus-input100"></span>
					</div>
					
                                         <div class="wrap-input100 validate-input m-b-16" data-validate = "CVV NUMBER">
                                             <input class="input100" type="text" name="cvv"  placeholder="CVV NUMBER"  >
					 <span class="focus-input100"></span>
					</div>
                                                
                                        <div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							Pay 
						</button>
                                        </div>
                        
                                    <h6 style="margin-left: 150px;margin-top: 20px;"><a href="User_Home.jsp" style="font-size: 20px; color:darkblue; font-family: cursive;">Click Back</a></h6>
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