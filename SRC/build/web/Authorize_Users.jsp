<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String userid=request.getParameter("userid");
           String uname=request.getParameter("username");
           Connection con=new DB().Connect();
           PreparedStatement ps=con.prepareStatement("Update user_register set status='Authorized' where user_id='"+userid+"' and username='"+uname+"' ");
           ps.executeUpdate();
           out.println("<script>"
            +"alert('"+uname+" Authorized Successfully. ')"
            +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("Manage_Users.jsp");
            rd.include(request, response); 
       %>
    </body>
</html>
