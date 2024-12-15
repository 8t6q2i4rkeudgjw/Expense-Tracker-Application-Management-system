<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Expense Tracker Application Management System </title>
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
				<ul >
					<li style="font-size:20px; font-weight: bold;"><a href="User_Home.jsp">Home</a></li>
					<li  style="font-size:15px; font-weight: bold;"><a href="Search_Friends.jsp">Search Friends</a></li>
					<li style="font-size:15px; font-weight: bold;"><a href="View_Friend_Requests.jsp">View & Delete Friend Requests</a></li>
                                        <li  class="colorlib-active" style="font-size:15px; font-weight: bold;"><a href="Search_Products.jsp">Search Expense</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="View_Recommend_Products.jsp">View All Recommended Expense</a></li>
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
                                   <h2 style="color:darkcyan;font-size: 25px;letter-spacing: 0.3px; margin-top: 10%;margin-left: 40%; "><strong>View Recommended Expense</strong></h2>
                                   <div style="margin-left:30%;">
                                     <form action="Recommend_Action.jsp">
                                       <%
                                           String uname=request.getParameter("uname");
                                            String uid=request.getParameter("uid");
                                            String pid=request.getParameter("pid");
                                            String pname=request.getParameter("pname");
                                           Connection con=new DB().Connect();
                                           PreparedStatement ps=con.prepareStatement("select * from add_product where pid='"+pid+"' and pname='"+pname+"' ");
                                           ResultSet r=ps.executeQuery();
                                           while(r.next()){
                                       %> 
                                    <table>
                                        <input type="hidden" name="uid" value="<%=uid%>">
                                        <input type="hidden" name="uname" value="<%=uname%>">
                                        <tr><td colspan="4"><img src="dataset/<%=r.getString("pic")%>" alt="" style="width: 90px; height: 70px;"></td></tr>
                                        <tr><td colspan="1"><strong>Product ID</strong></td><td colspan="3"><input type="text" name="pid" value="<%=r.getString("pid")%>"></td></tr>
                                        <tr><td colspan="1"><strong>Product Name</strong></td><td colspan="3"><input type="text" name="pname" value="<%=r.getString("pname")%>"></td></tr>
                                        <tr><td colspan="1"><strong>Price</strong></td><td colspan="3"><input type="text" name="price" value="<%=r.getString("price")%>"></td></tr>
                                        <tr><td colspan="1" ><strong>Rating</strong></td><td colspan="3"><input type="text" name="rating" value="<%=r.getString("rating")%>"></td></tr>
                                        <tr><td colspan="1" ><strong>Recommend To</strong></td><td colspan="3">
                                         <select name="fname" placeholder="Search by category" style="color:black;">
                                           <option selected="" disabled="">Choose One</option>
                                           <%
                                            PreparedStatement ps1=con.prepareStatement("Select * from friend_request where status='Accept' and uname='"+uname+"' ");
                                            ResultSet r1=ps1.executeQuery();
                                            while(r1.next()){
                                            %>
                                           <option value="<%=r1.getString("fname")%>"><%=r1.getString("fname")%></option><%}%>
                                         </select></td>
                                        </tr>
                                        <tr><td colspan="1" ><strong>Feedback</strong></td><td colspan="3"><input type="text" name="feedback" ></td></tr>
                                        
                                       <tr><td align="center" colspan="2"><input type="Submit" Value="Recommend"></td></tr>
                                       </table>
                                           <%}%></form>
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

