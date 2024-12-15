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
PreparedStatement ps22=con.prepareStatement("update cart set status='Assign' where id='"+pass+"' ");
System.out.println(ps22);
ps22.executeUpdate();
            out.println("<script>"
            +"alert('Assign Work to Money Exchanger')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/Order.jsp");
    rd.include(request, response); 
    }
catch(Exception e )
{
out.println("<script>"
        +"alert('Invalid Username & Password')"
        +"</script>");
RequestDispatcher rd=request.getRequestDispatcher("/Admin_Home.jsp");
rd.include(request, response); 
}
%>
