<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String uname=request.getParameter("uname");
    String uid=request.getParameter("uid");
    String pid=request.getParameter("pid");
    String pname=request.getParameter("pname");
    String price=request.getParameter("price");
    String rating=request.getParameter("rating");
    String fname=request.getParameter("fname");
    String feedback=request.getParameter("feedback");
    Connection con=new DB().Connect();
    PreparedStatement p=con.prepareStatement("insert into recommend(uid,uname,pid,pname,price,rating,fname,feedback)values('"+uid+"','"+uname+"','"+pid+"','"+pname+"','"+price+"','"+rating+"','"+fname+"','"+feedback+"') ");
    p.executeUpdate();
    System.out.println(p);
    out.println("<script>"
        +"alert('Expense Recommended Successfully.')"
        +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Search_Products.jsp");
    rd.include(request, response);
%>