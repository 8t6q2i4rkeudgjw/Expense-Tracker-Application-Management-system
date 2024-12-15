<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
String plan="";
int id=0;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chemical","root","root"); 
            PreparedStatement ps = con.prepareStatement(" SELECT pname,c1 FROM (SELECT pname,COUNT(*) AS c1 FROM cart AS d1 GROUP BY pname HAVING c1 IN (SELECT  MAX(cnt) FROM (SELECT pname,COUNT(*)AS cnt FROM cart GROUP BY pname) AS b) UNION ALL SELECT pname,COUNT(*) AS c1 FROM cart AS d  GROUP BY pname HAVING c1 IN ( SELECT MIN(cnt) FROM (SELECT pname,COUNT(*)AS cnt FROM cart GROUP BY pname) AS b)) AS c2 GROUP BY pname ");
                
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                plan = rs.getString("pname");
                id = rs.getInt("c1");
               
map = new HashMap<Object,Object>(); map.put("label", plan); map.put("y", id); list.add(map);

            }
String dataPoints = gsonObj.toJson(list);
            
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "Total Number Of Product Sales"
	},
	axisY: {
		suffix: " Count of Sales"
	},
        axisX: {
		suffix: " Max and Min Sales "
	},
	
	data: [{
		type: "column",
		yValueFormatString: "#,##0\"\"",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
<style>
    .w3-black, .w3-hover-black:hover{ background-color:#9c27b0!important}
    
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #e91e63;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>
</head>
<body class="w3-black">

<div class="w3-padding-large" id="main">
    <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
        <h1 class="w3-jumbo" style="
    font-family: initial;
"><span class="w3-hide-small"> Graph Generation Using Ranking Algorithm </span></h1>
   
    
  </header>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
</div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>