
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title> Expense Tracker Application Management System </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<div id="colorlib-page" >
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight" style="width: 400px;">
			<h1 id="colorlib-logo"><a href="#" style="color:indigo;">Expense Tracker Application Management System </a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul >
					<li style="font-size:20px; font-weight: bold;"><a href="User_Home.jsp">Home</a></li>
					<li  style="font-size:15px; font-weight: bold;"><a href="Search_Friends.jsp">Search Friends</a></li>
					<li style="font-size:15px; font-weight: bold;"><a href="View_Friend_Requests.jsp">View & Delete Friend Requests</a></li>
                                        <li  class="colorlib-active" style="font-size:15px; font-weight: bold;"><a href="Search_Products.jsp">Search Product</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_Recommend_Products.jsp">View All Recommended </a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_History.jsp">View All History</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="index.jsp">Logout</a></li>
                                        
				</ul>
			</nav>
		</aside>
                <style>
                    table,td,tr,th{
                         border-collapse: collapse;
                         border: 2px solid gray;
                         text-align: center;
                         font-weight: bold;
                         padding: 5px;
                    }
                    td{
                        font-size: 15px;
                        color: #c80000;
                    }
                    input{
                        color:black;
                    }
                </style>
		<div id="colorlib-main">
			<aside id="colorlib-hero" class="js-fullheight">
				<div class="flexslider js-fullheight">
                                   <h2 style="color:darkcyan;font-size: 25px;letter-spacing: 0.3px; margin-top: 10%;margin-left: 40%; "><strong>View Expense</strong></h2>
                                   <div style="margin-left:30%;">
                                     <form action="Buy_Action.jsp">
                                       <%
                                            String uname=request.getParameter("uname");
                                            String uid=request.getParameter("uid");
                                            String pid=request.getParameter("pid");
                                            String pname=request.getParameter("pname");
                                            String price=request.getParameter("price");
                                       %> 
                                    <table>
                                        <tr><td colspan="1"><strong>User ID</strong></td><td colspan="3"><input type="text" name="uid" value="<%=uid%>"></td></tr>
                                        <tr><td colspan="1"><strong>User Name</strong></td><td colspan="3"><input type="text" name="uname" value="<%=uname%>"></td></tr>
                                        <tr><td colspan="1"><strong>Product ID</strong></td><td colspan="3"><input type="text" name="pid" value="<%=pid%>"></td></tr>
                                        <tr><td colspan="1"><strong>Product Name</strong></td><td colspan="3"><input type="text" name="pname" value="<%=pname%>"></td></tr>
                                        <tr><td colspan="1"><strong>Price</strong></td><td colspan="3"><input type="text" name="price" value="<%=price%>"></td></tr>
                                        <tr>
                                            <td colspan="1" ><strong> Select Bank</strong></td>
                                            <td>
                                                <select name="bank">
                                                    <option selected="" disabled="">---Select---</option>
                                                    <option value="SBI">SBI</option>
                                                    <option value="indianbank">Indian Bank</option>
                                                    <option value="axisbank">Axis Bank</option>
                                                    <option value="canrabank">Canara Bank</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr><td colspan="1"><strong>Card Number</strong></td><td colspan="3"><input type="text" name="card"></td></tr>                                        
                                        <tr><td colspan="1"><strong>Expiry Date</strong></td><td colspan="3"><input type="text" name="Expiry_Date"></td></tr>
                                        <tr><td colspan="1" ><strong>CCV</strong></td><td colspan="3"><input type="text" name="ccv" ></td></tr>
                                       <tr><td align="center" colspan="2"><input type="Submit" Value="BUY"></td></tr>
                                       </table></form>
                                   </div>
                                    
			  	</div>
			</aside>
                </div>
        </div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Sticky Kit -->
	<script src="js/sticky-kit.min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>

