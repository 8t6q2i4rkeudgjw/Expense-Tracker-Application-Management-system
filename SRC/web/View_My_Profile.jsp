<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
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
				<ul>
					<li  style="font-size:20px; font-weight: bold;"><a href="User_Home.jsp">Home</a></li> 
                                        <li class="colorlib-active" style="font-size:15px; font-weight: bold;"><a href="View_My_Profile.jsp"> View My Profile</a></li>
					
                                        <li style="font-size:15px; font-weight: bold;"><a href="Search_Products.jsp">Search Expense</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_My_Carts.jsp">View My Added Expense Details </a></li> 
                                        <li style="font-size:15px; font-weight: bold;"><a href="mybilling.jsp"> My Report </a></li>
                                         <li style="font-size:15px; font-weight: bold;"><a href="orderstatus.jsp">View Status </a></li>
                                         <li style="font-size:15px; font-weight: bold;"><a href="index.jsp">Logout</a></li>
                                        
				</ul>
			</nav>
		</aside>
                <style>
                    table,td,tr,th{
                         text-align: center;
                         font-weight: bold;
                         margin-left:20%;
                         padding: 5px;
                         font-family: cursive;
                    }
                    td{
                        font-size: 20px;
                        color: #c80000;
                    }
                    input{
                        color:black;
                    }
                </style>
		<div id="colorlib-main">
			<aside id="colorlib-hero" class="js-fullheight">
				<div class="flexslider js-fullheight">
                                   <div style="margin-left:30%;">
                                    
                                       <%
                                           String uname= (String)session.getAttribute("username");
                                            
                                           Connection con=new DB().Connect();
                                           PreparedStatement ps=con.prepareStatement("select * from user_register where username='"+uname+"' ");
                                           ResultSet r=ps.executeQuery();
                                           while(r.next()){
                                       %> 
                                       <br>
                                       <br>
                                       <table>
                                        <%--
                                        <input type="hidden" name="uid" value="<%=uid%>">
                                        <input type="hidden" name="uname" value="<%=uname%>"> --%>
                                        <h2 align="center" style="color:red; margin-right:220px; font-family: cursive; font-weight: bold;">My Profile</h2>
                                        <h2 align="center" style="color:red; margin-right:210px;font-family:combic;  font-size: 25px;"><img src="dataset/<%=r.getString("profile_pic")%>" alt="" style=" width: 300px; height:300px; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong></strong></h2>
                                   
                                        <tr><td colspan="3"style="color: darkorchid"><%=r.getString("username")%></td></tr>
                                        <tr><td colspan="3" style="color: #EF3159"><%=r.getString("mobile")%></td></tr>
                                        <tr><td colspan="3" style="color:  chocolate"><%=r.getString("mail")%></td></tr>
                                        <tr><td colspan="3" style="color: #FFC300"><%=r.getString("city")%></td></tr>
                                        
                                        
                                        
                
                                       </table>
                                           <%}%>
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
