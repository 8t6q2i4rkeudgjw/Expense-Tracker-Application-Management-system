<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String id=request.getParameter("id");
    Connection con=new DB().Connect();
    PreparedStatement p=con.prepareStatement("delete from category where id='"+id+"' ");
    p.executeUpdate();
    out.println("<script>"
    +"alert('Removed Sucessfully')"
    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Manage_Category.jsp");
    rd.include(request, response); 
%>

%>