<%@page import="algorithm.mail"%>
<%@page import="code.DB"%>
<%@page import="java.sql.*"%>
<%
    String uname=request.getParameter("uname");
    String uid=request.getParameter("uid");
    String mail=(String)session.getAttribute("mail");
    String pid=request.getParameter("pid");
    String pname=request.getParameter("pname");
    String price=request.getParameter("price");
    String bank=request.getParameter("bank");
    String card=request.getParameter("card");
    String expiry=request.getParameter("Expiry_Date");
    String ccv=request.getParameter("ccv");
    Connection con=new DB().Connect();
    PreparedStatement q1=con.prepareStatement("select * from card_details where bankname='"+bank+"' and cardholder='"+uname+"' and cardnumber='"+card+"' and exprirydate='"+expiry+"' and ccv='"+ccv+"' ");
    ResultSet r=q1.executeQuery();
    System.out.println(q1);
    if(r.next()){
    PreparedStatement p=con.prepareStatement("insert into buy_cart(uid,uname,pid,pname,price,bank,cnumber,expiry,ccv,status)values('"+uid+"','"+uname+"','"+pid+"','"+pname+"','"+price+"','"+bank+"','"+card+"','"+expiry+"','"+ccv+"','success') ");
    p.executeUpdate();
    System.out.println(p);
    out.println("<script>"
        +"alert('Paid Successfull...Your Product will deliver within 4-5 working days..')"
        +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Search_Products.jsp");
    rd.include(request, response);
    }
    else{
    PreparedStatement p=con.prepareStatement("insert into buy_cart(uid,uname,pid,pname,price,bank,cnumber,expiry,ccv,status)values('"+uid+"','"+uname+"','"+pid+"','"+pname+"','"+price+"','"+bank+"','"+card+"','"+expiry+"','"+ccv+"','Failed') ");
    p.executeUpdate();
    System.out.println(p);
    PreparedStatement p1=con.prepareStatement("SELECT COUNT(STATUS)AS tot,uname FROM buy_cart WHERE uname='"+uname+"' and STATUS='Failed' ");
    ResultSet r1=p1.executeQuery();
    System.out.println(p1);
    while(r1.next()){
        if(r1.getInt("tot")==1){
            System.out.println("Check1");
            mail m=new mail(); 
            String subject="Authentication Alert";
            String message="You are Entered wrong card account details...";
            m.sendFromGMail("radhaakrishnaa007", "RP1234567890",mail, subject,message);
            out.println("<script>"
                +"alert('Please Check Your Bank Details...')"
                 +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("Buy.jsp");
            rd.include(request, response);
        }
        else if(r1.getInt("tot")>=3){
            System.out.println("Check1");
            mail m=new mail(); 
            String subject="Authentication Alert";
            String message="You are Entered wrong card account details more than 3- times.Your Account will be temporarily Blocked...";
            m.sendFromGMail("radhaakrishnaa007", "RP1234567890",mail, subject,message);
            PreparedStatement p4=con.prepareStatement("update user_register set status='Blocked' where username='"+uname+"' ");
            p4.executeUpdate();
            out.println("<script>"
            +"alert('Account Blocked.Please Contact Administrator...')"
             +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
        }
        else{
        out.println("<script>"
            +"alert('Please Check Your Bank Details...')"
             +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("Buy.jsp");
        rd.include(request, response);
        }
    }
    }
%>