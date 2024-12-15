<%-- 
    Document   : ulogin
    Created on : Jul 31, 2017, 10:57:22 AM
    Author     : DLK 1
--%>

<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
try{
String pass=request.getParameter("sno");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemical", "root", "root");
PreparedStatement ps22=con.prepareStatement("update cart set status='Delivered' where id='"+pass+"' ");
System.out.println(ps22);
ps22.executeUpdate();
            out.println("<script>"
            +"alert('Money Exchanged')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/Orderassign.jsp");
    rd.include(request, response); 
    }
catch(Exception e )
{
out.println("<script>"
        +"alert('Invalid Username & Password')"
        +"</script>");
RequestDispatcher rd=request.getRequestDispatcher("/Orderassign.jsp");
rd.include(request, response); 
}
%>
