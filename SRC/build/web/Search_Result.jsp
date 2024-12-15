<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String uid=request.getParameter("uid");
    String uname=request.getParameter("uname");
    String fid=request.getParameter("fid");
    String fname=request.getParameter("fname");
    Connection con=new DB().Connect();
    PreparedStatement ps=con.prepareStatement("select * from user_register where username='"+uname+"' ");
    ResultSet r=ps.executeQuery();
    if(r.next()){
    String mobile=r.getString("mobile");
    String mail=r.getString("mail");
    String city=r.getString("city");
    String fpic=r.getString("profile_pic");
    PreparedStatement p=con.prepareStatement("insert into friend_request(uid,uname,fid,fname,mobile,mail,city,fpic)values('"+uid+"','"+uname+"','"+fid+"','"+fname+"','"+mobile+"','"+mail+"','"+city+"','"+fpic+"')");
    p.executeUpdate();
    }
    out.println("<script>"
    +"alert('Request Send Sucessfully')"
    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Search_Friends.jsp");
    rd.include(request, response); 
%>
