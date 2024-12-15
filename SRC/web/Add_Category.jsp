<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String cat_name=request.getParameter("cat");
    Connection con=new DB().Connect();
    PreparedStatement p=con.prepareStatement("insert into category(category_name)values('"+cat_name+"')");
    p.executeUpdate();
    out.println("<script>"
    +"alert('Added Sucessfully')"
    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Manage_Category.jsp");
    rd.include(request, response); 
%>
