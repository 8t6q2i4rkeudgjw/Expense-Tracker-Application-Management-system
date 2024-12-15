<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
List<Map<Object,Object>> list1 = new ArrayList<Map<Object,Object>>();
List<Map<Object,Object>> list2 = new ArrayList<Map<Object,Object>>();
Connection con=new DB().Connect();
PreparedStatement paa= con.prepareStatement("SELECT product,SUM(positive)AS p,SUM(negative)AS q,SUM(neutral)AS r FROM ranking GROUP BY product ");
ResultSet r=paa.executeQuery();
while(r.next()){
    String pro=r.getString("product");
    int tot=r.getInt("p");
    int tot1=r.getInt("q");
    int tot2=r.getInt("r");
    map = new HashMap<Object,Object>(); map.put("label",pro); map.put("y", tot); list.add(map);
    
    map = new HashMap<Object,Object>(); map.put("label", pro); map.put("y", tot1); list1.add(map);
    
    map = new HashMap<Object,Object>(); map.put("label", pro); map.put("y", tot2); list2.add(map);
}
String dataPoints1 = gsonObj.toJson(list);
 
String dataPoints2 = gsonObj.toJson(list1);

String dataPoints3 = gsonObj.toJson(list2);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	title: {
		text: "View Count Based Results"
	},
	subtitles: [{
		text: "Products"
	}],
	axisY: {
		title: "Counts"
	},
	toolTip: {
		shared: true,
		reversed: true		
	},
	data: [{
		type: "stackedColumn",
		name: "positive",
		showInLegend: true,
		yValueFormatString: "#,##0",
		dataPoints: <%out.print(dataPoints1);%>
	},
	{
		type: "stackedColumn",
		name: "Negative",
		showInLegend: true,
		yValueFormatString: "#,##0",
		dataPoints: <%out.print(dataPoints2);%> 
	},
	{
		type: "stackedColumn",
		name: "Neutral",
		showInLegend: true,
		yValueFormatString: "#,##0 ",
		dataPoints: <%out.print(dataPoints3);%> 
	}]
});
chart.render();
 
}
</script>
</head>
<body style="background-color: lightsteelblue;">
<div id="chartContainer" style="height: 370px; width: 100%; margin-top: 10%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>   