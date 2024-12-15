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
					
                                        <li style="font-size:15px; font-weight: bold;"><a href="Search_Products.jsp">Search Expense</a></li>
                                        <li class="colorlib-active" style="font-size:15px; font-weight: bold;"><a href="View_My_Carts.jsp">View My Added Expense Details </a></li> 
                                        <li style="font-size:15px; font-weight: bold;"><a href="mybilling.jsp"> My Report </a></li>
                                        <li class="colorlib-active" style="font-size:15px; font-weight: bold;"><a href="orderstatus.jsp">View Status </a></li>
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
                         
                    }
                    td{
                        font-size: 15px;
                    }
                    th{
                        font-size: 20px;
                        color: #c80000;
                    }
                </style> 
                <%
                     String uname = (String)session.getAttribute("username");  
                     String uid = (String)session.getAttribute("userid");
                    %>
		<div id="colorlib-main">
			<aside id="colorlib-hero" class="js-fullheight">
				<div class="flexslider js-fullheight">
                                    <h2 style="color:darkcyan;font-size: 25px;letter-spacing: 0.3px; margin-top: 10%;margin-left: 30%; "><strong> MY ADDED EXPENSE DETAILS</strong></h2>
                                    <table style="margin-top: 20px;;margin-left: 13%; width: 80%;">
                                        <tr>
                                            <th>UserName</th>
                                            <th>User ID</th>
                                            <th>Id</th>
                                            <th>Name</th>
                                            <th>Min Price </th>
                                            <th>My Expenses  </th>
                                            <th>Amount</th>
                                          <%--  <th> Final Amount </th> --%>
                                          
                                        </tr>
                                        <%
                                            Connection con=new DB().Connect();
                                            PreparedStatement ps=con.prepareStatement("SELECT * from cart WHERE  uid='"+uid+"' and status='pending'  ");
                                            ResultSet r=ps.executeQuery();
                                            while(r.next()){
                                        %> 
                                       
                                        <tr>
                                            
                                            <td><%=r.getString("uname")%></td>
                                            <td><%=r.getString("uid")%></td>
                                            <td><%=r.getString("pid")%></td>
                                            <td><%=r.getString("pname")%></td>
                                           
                                            <td><%=r.getString("price")%></td>
                                            <td><%=r.getString("upquantity")%></td>
                                            <td><%=r.getString("amount")%></td>  
                                            
                                          <%--  <td colspan="1"> <a href="payment.jsp?uname=<%=r.getString("uname")%>&&uid=<%=r.getString("uid")%>&&pid=<%=r.getString("uid")%>&&pname=<%=r.getString("pname")%>&&price=<%=r.getString("price")%>&&upquantity=<%=r.getString("upquantity")%>&&amount=<%=r.getString("amount")%>&&total=<%=r.getString("total")%>"> Pay </a> </td>  --%>
                                        </tr> 
                                        
                                              <%}%>
                                        <%
                          
                                            PreparedStatement p1=con.prepareStatement(" SELECT * from cart WHERE  uid='"+uid+"' and status='pending' ");
                                            ResultSet r1=p1.executeQuery(); 
                                            if(r1.next()){
                                        %>
                  
                                        <tr style="padding: 5px; color:red;">
                                           
                                        <td colspan="6"> <a href="payment.jsp?uname=<%=r1.getString("uname")%>&&uid=<%=r1.getString("uid")%>&&pid=<%=r1.getString("uid")%>&&pname=<%=r1.getString("pname")%>&&price=<%=r1.getString("price")%>&&upquantity=<%=r1.getString("upquantity")%>&&amount=<%=r1.getString("amount")%>&&total=<%=r1.getString("total")%>"> PAY </a> <td colspan="1"><%=r1.getString("total")%></td> </td>     
                                        </tr>
                                             <%}%>
                                              
                                         
                                         <%-- <tr><td colspan="6" ><strong> Total Amount </strong></td><td colspan="1"><input type="text" name="city" value="<%=r.getString("total")%>"></td></tr> --%>                                        
                                    </table>
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

