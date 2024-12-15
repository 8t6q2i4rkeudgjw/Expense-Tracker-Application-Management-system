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
           String userid=request.getParameter("uid");
           String uname=request.getParameter("uname");
           Connection con=new DB().Connect();
           PreparedStatement ps=con.prepareStatement("Update friend_request set status='Accept' where uid='"+userid+"' and uname='"+uname+"' ");
           ps.executeUpdate();
           out.println("<script>"
            +"alert('"+uname+" Request Accepted Successfully. ')"
            +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("View_Friend_Requests.jsp");
            rd.include(request, response); 
       %>
    </body>
</html>
