<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
String uid=request.getParameter("id");
Connection con=new DB().Connect();
PreparedStatement p=con.prepareStatement("update user_register set status='Authorized' where user_id='"+uid+"' ");
p.executeUpdate();
out.println("<script>"
            +"alert('User Activated...')"
             +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("View_Users.jsp");
        rd.include(request, response);
%>