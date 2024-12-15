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
                                        <li  style="font-size:15px; font-weight: bold;"><a href="View_My_Profile.jsp"> View My Profile</a></li>
					
                                        <li class="colorlib-active" style="font-size:15px; font-weight: bold;"><a href="Search_Products.jsp">Search Expense</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_My_Carts.jsp">View My Expense Details </a></li> 
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
                         font-family: cursive;
                         padding: 5px;
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
                                   <h2 style="color:darkcyan;font-size: 25px;letter-spacing: 0.3px; margin-top: 10%;margin-left: 30%; "><strong>VIEW ALL EXPENSE BASED ON CATEGORY </strong></h2>
                                   <br> <div style="margin-left:10%;">
                                       <div style="overflow:scroll;height:600px;width: 100%;">
                                       <%
                                           String uname=(String)session.getAttribute("username");
                                           String uid=(String)session.getAttribute("userid");
                                           String search=request.getParameter("search");
                                           Connection con=new DB().Connect();
                                           PreparedStatement ps=con.prepareStatement("select * from add_product where cat='"+search+"' ");
                                           ResultSet r=ps.executeQuery();
                                           while(r.next())
                                           {
                                       %>
                                   
                                    <table style="width: 100%;">
                                       
                                        <tr rowspan="5"><td><img src="dataset/<%=r.getString("pic")%>" alt="" style="width: 300px; height: 300px;"></td></tr>
                                        <tr><td style="color: crimson">ID : <%=r.getString("pid")%></td></tr>
                                        <tr><td style="color: #F44336">Name :<%=r.getString("pname")%></td></tr>
                                        <tr><td style="color: #FFC300">Quantity :<%=r.getString("pquantity")%> </td></tr>
                                        <tr><td style="color:  #ce8483">Price : <%=r.getString("price")%></td></tr>
                                       
                                        <tr><td colspan="2"><button><a href="Cart.jsp?uid=<%=uid%>&&pic=<%=r.getString("pic")%>&&uname=<%=uname%>&&pid=<%=r.getString("pid")%>&&pname=<%=r.getString("pname")%>&&price=<%=r.getString("price")%>&&pquantity=<%=r.getString("pquantity")%>&&stock=<%=r.getString("stock")%>" style="color:darkgreen; padding: 5px;"> Add </a></button></td>
                                        <br>
                                        <br>
                                    </table> 
                                    
                                        <%}%></div> 
                                        <br>
                                        <br>
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

