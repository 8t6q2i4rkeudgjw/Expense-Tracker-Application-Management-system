<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String bname=request.getParameter("bname");
    String bid=request.getParameter("bid");
    String rating=request.getParameter("rating");
    String feedback=request.getParameter("feedback");
    Connection con=new DB().Connect();
    PreparedStatement p=con.prepareStatement("update add_product set rating='"+rating+"',feedback='"+feedback+"' where buyerid='"+bid+"' and buyername='"+bname+"' ");
    p.executeUpdate();
    System.out.println(p);
    out.println("<script>"
        +"alert('Feedback Added Successfully.')"
        +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
    rd.include(request, response);
%>