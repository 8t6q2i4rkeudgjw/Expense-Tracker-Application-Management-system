<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String id=request.getParameter("uid");
    String uname=request.getParameter("uname");
    Connection con=new DB().Connect();
    PreparedStatement p=con.prepareStatement("delete from friend_request where uid='"+id+"' and uname='"+uname+"' ");
    p.executeUpdate();
    out.println("<script>"
    +"alert(' Request Removed Sucessfully')"
    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("View_Friend_Requests.jsp");
    rd.include(request, response); 
%>

%>