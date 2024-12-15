<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String act=request.getParameter("act");
    String pid=request.getParameter("pid");
    String pname=request.getParameter("pname");
    Connection con=new DB().Connect();
    int count=0;
    if(act.equalsIgnoreCase("like")){
        PreparedStatement p=con.prepareStatement("select * from add_product where pid='"+pid+"' and pname='"+pname+"' ");
        ResultSet r=p.executeQuery();
        if(r.next()){
            count=r.getInt("likeproduct")+1;
            PreparedStatement p1=con.prepareStatement("update add_product set likeproduct='"+count+"' where pid='"+pid+"' and pname='"+pname+"' ");
            p1.executeUpdate();
            System.out.println(p1);
        }  
    }
    if(act.equalsIgnoreCase("dislike"))
    {
            PreparedStatement p=con.prepareStatement("select * from add_product where pid='"+pid+"' and pname='"+pname+"' ");
            ResultSet r=p.executeQuery();
            if(r.next()){
            count=r.getInt("dislikeproduct")-1;
            PreparedStatement p2=con.prepareStatement("update add_product set dislikeproduct='"+count+"' where pid='"+pid+"' and pname='"+pname+"' ");
            p2.executeUpdate();
            System.out.println(p2);
            }
            
    }
   RequestDispatcher rd=request.getRequestDispatcher("Search_Products.jsp");
    rd.include(request, response);
%>