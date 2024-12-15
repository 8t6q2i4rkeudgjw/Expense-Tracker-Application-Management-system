<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String uname = (String)session.getAttribute("username");  
    String uid = (String)session.getAttribute("userid");
    Connection con=new DB().Connect();
    PreparedStatement p=con.prepareStatement("delete from cart where uname='"+uname+"' and uid='"+uid+"' ");
    p.executeUpdate();
    out.println("<script>"
    +"alert('Bill Has Been Generated For Current Product Purchase. Thanks For Shopping With US. Have a Great Day')"
    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
    rd.include(request, response); 
%>
