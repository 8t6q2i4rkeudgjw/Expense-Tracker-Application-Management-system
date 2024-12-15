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
				<ul>
					<li  style="font-size:20px; font-weight: bold;"><a href="Admin_Home.jsp">Home</a></li>
					
					<li  style="font-size:15px; font-weight: bold;"><a href="Manage_Category.jsp">Add & View Category</a></li>
                                        <li  style="font-size:15px; font-weight: bold;"><a href="Add_Products.jsp">Add Expense With Category</a></li>
                                        <li class="colorlib-active" style="font-size:15px; font-weight: bold;"><a href="View_Gproducts.jsp">View All Expense</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="Vieworderstatus.jsp">View Status</a></li>
                                        <li style="font-size:15px; font-weight: bold;"><a href="index.jsp">Logout</a></li>
                                </ul>
			</nav>
		</aside>
            <style>
                    tr,td{
                                        font-family: cursive;
                                        font-size: 20px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        width:300px;
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
                        		margin-left:70%;
                                        margin-top: -450px;
                                        height: auto;
                        }
                        	
                        	
                        	
                </style>
  <%
  String id=request.getParameter("pid");
  String name=request.getParameter("pname");
  %>
    <h2 style="color:darkslateblue;margin-left:50%; font-family: cambria;font-weight: bold; font-size: 30px;">Expense Details: <%=name%></h2><br>
    
	           <% 
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemical","root","root");
                         PreparedStatement query=con.prepareStatement("select * from add_product where pid='"+id+"' ");
                         System.out.println(query );
                         ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
%>
                        <form action="editaction.jsp">                     
                        <table align="center"><br><br>
                        <h2 align="center" style="color: brown; font-weight: bold; font-size: 30px; font-family: cursive"><img src="dataset/<%=rs.getString("pic")%>" alt="logo" style="width:500px; height:500px;  border-radius: 30px;"></h2><br>
                        <tr align="center"><td>P-NO </td><td><input type="text" name="pno" value="<%=rs.getString("pid")%>" readonly=""></td></tr>
                        <tr align="center"><td>P-Name </td><td><input type="text" name="pname" value="<%=rs.getString("pname")%>" readonly=""></td></tr>
                        <tr align="center"><td>Cost </td><td><input type="text" value="<%=rs.getString("price")%>" name="cost" requried=""></td></tr>
                        <tr align="center"><td>Quantity</td><td><input type="text" value="<%=rs.getString("stock")%>" name="qua" requried=""></td></tr>
                        <tr><td align="center" colspan="2"><button type="submit">Update</button></td></tr>
                        </table><%}%>
                        </form>
                
	 <a href="View_GProduct.jsp">Click Back</a>
	
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

