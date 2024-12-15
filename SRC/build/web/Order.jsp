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
			<h1 id="colorlib-logo"><a href="#" style="color:indigo;"> Expense Tracker Application Management System </a></h1>
			<nav id="colorlib-main-menu" role="navigation">
					<ul>
					<li class="colorlib-active" style="font-size:20px; font-weight: bold;"><a href="Admin_Home.jsp">Home</a></li>
					
					<li style="font-size:15px; font-weight: bold;"><a href="Addde.jsp">Add Money Exchanger</a></li>
					<li style="font-size:15px; font-weight: bold;"><a href="Manage_Category.jsp">Add & View Category</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="Add_Products.jsp">Add Expense with category</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_Gproducts.jsp">View All Expense</a></li>
					<li style="font-size:15px; font-weight: bold;"><a href="Order.jsp">New Process</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="Vieworderstatus.jsp">View Status</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="index.jsp">Logout</a></li>
                                </ul> 
                             <%--    
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_Products_Reviews.jsp">View All Product Rating & Reviews</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="Sentiment_Similarity.jsp">Sentiment Similarity by Reviews</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_All.jsp">View All Recommended Product & Rank Result</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="Graph.jsp">Result</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_Users.jsp">View All Users</a></li>
                              --%>
			</nav>
		</aside>

		<div id="colorlib-main">
			<aside id="colorlib-hero" class="js-fullheight">
				<div class="flexslider js-fullheight">
				
                             <style>
                    tr,td{
                                        font-family: cursive;
                                        font-size: 20px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        width:600px;
                                        height: auto;
                        		border-collapse: collapse;
                        		border:2px solid #d39e00;
                                        border-radius: 20px;
                        		padding:5px;
                        		text-align:center;
                                        background: white;
                                        color: crimson;
                    }
                    th{
                                        color: #F0542C;
                    }
                    table{
                        		height: auto;
                        }
                        	
                        	
                        	
                </style>

    <!-- ***** Welcome Area Start ***** -->
        <!-- ***** Header Text Start ***** -->
        <div class="header-text">
            <h2 align="center" style=" color:orange; font-family: cursive;font-weight: bold; font-size: 30px;"> Check Cash && Assign to Money Exchanger!</h2><br><br>
                <div class="container" style="height: 600px;">
               <table align="center">          
                       <tr> <th>ID</th>
                            <th>U-ID</th>
                            <th>U-Name</th> 
                            <th>P-ID</th>
                            <th>P-Name</th>       
                            <th>Cost</th>  
                            <th>Quantity</th> 
                            <th>Status</th>  
                            <th style="width: 200px;">Action</th>
                       </tr>
  <%                    
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemical","root","root");
                        PreparedStatement query=con.prepareStatement("select * from cart where status='paid' ");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next())
                        {
                            String pid=rs.getString("pid");
                            String pname=rs.getString("pname");   
                            String uid=rs.getString("uid");
                            String uname=rs.getString("uname");  
                            String cost=rs.getString("price");
                            String product=rs.getString("upquantity");
                            String pic=rs.getString("pic");
                        %>
        <!-- Page Content  -->
     
                            <tr><td><img src="dataset/<%=pic%>" alt="" style="width: 90px; height: 90px; border-radius: 50px;"></td>
                            <td><%=uid%></td>
                            <td><%=uname%></td>
                            <td><%=pid%></td>
                            <td><%=pname%></td>  
                            <td>Rs.<%=cost%></td>
                            <td style="color: blue"><%=product%></td> 
                            <td style="color: green"><%=rs.getString("status")%></td>    
                            <td style="width:200px;"><button><a href="assign.jsp?sno=<%=rs.getString("id")%>" style="color: #a367e7;">Assign to Money Exchanger</a></button>&nbsp;&nbsp;</td>
                            </tr> 
                            <%}%>   </table>   
                    <br><br><br><br>
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

