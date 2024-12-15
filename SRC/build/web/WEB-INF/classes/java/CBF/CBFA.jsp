<%--
    Document   : CBFA
    Created on : Jan 25, 2018, 12:56:04 PM
    Author     : David-Pc
--%>
<%@page import="CBF.Stem"%>
<%@page import="CBF.Stopwords"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Content Based Filtering Algorithm</title>
    </head>
    <%@include file="Connection.jsp"%>
    <body>
        <h1 align="center">Content Based Filtering Algorithm</h1>
        <%
            //Content Based Filtering Algorithm Coding Start//
            query=con.prepareStatement("truncate table positive_reviews"); 
            rs=query.executeQuery();
            
            query=con.prepareStatement("truncate table negative_reviews"); 
            rs=query.executeQuery();
            
            query=con.prepareStatement("truncate table neutral_reviews"); 
            rs=query.executeQuery();
            
            query=con.prepareStatement("select * from dataset"); 
            rs=query.executeQuery();
            String ReviewsTemp="";
            while(rs.next())
            {
                String Category=rs.getString("category");
                String Product=rs.getString("product_name");
                String Reviews=rs.getString("review");
                String Date=rs.getString("date");
                String Image=rs.getString("image");
                int poss=0,neg=0;
                
                //Preprocessing work//
                //Remove Stop_words
                Stopwords Stop_remove = new Stopwords();
                ReviewsTemp=Stop_remove.words(Reviews);
                //Remove Stemming
                Stem Stemp_Remove = new Stem();
                ReviewsTemp=Stemp_Remove.stem(ReviewsTemp);
                String word[]=ReviewsTemp.split(" ");
                
                //Storing All Dataset in Collection Objects.
                LinkedList Positive=new LinkedList();
                LinkedList Negative=new LinkedList();
                
                for(String find:word)
                {
                    PreparedStatement a=con.prepareStatement("select * from positive where gud='"+find+"' ");
                    ResultSet b=a.executeQuery();
                    if(b.next())
                    {
                        Positive.add(b.getString("gud"));
                    }
                    PreparedStatement c=con.prepareStatement("select * from negative where neg='"+find+"' ");
                    ResultSet d=c.executeQuery();
                    if(d.next())
                    {
                        Negative.add(d.getString("neg"));
                    }
                }
                
                //Checking word level filtering method in review Sentences
                
                for(String Filter:word)
                {
                    //Positive words checking
                    if(Positive.contains(Filter))
                    {
                        poss=1;
                    }
                    //Negative words checking
                    if(Negative.contains(Filter))
                    {
                        neg=1;
                    }
                }
                boolean P=false,N=false,Nt=false ;
                //Assign boolean value of Positive Reviews
                if(poss==1&&neg==0)
                {
                    P=true;
                }
                //Assign boolean value of Negative Reviews
                else if(neg==1&&poss==0)
                {
                    N=true;
                }
                //Assign boolean value of Nuetral Reviews
                else if(poss==1&&neg==1)
                {
                    Nt=true;
                }
                //Inserting Positive Reviews
                if(P)
                {
                    PreparedStatement c=con.prepareStatement("insert into Positive_Reviews values('"+Product+"','"+Category+"','"+Reviews+"','"+Date+"','"+Image+"') ");
                    c.executeUpdate();
                }
                //Inserting Negative Reviews
                else if(N)
                {
                    PreparedStatement c=con.prepareStatement("insert into Negative_Reviews values('"+Product+"','"+Category+"','"+Reviews+"','"+Date+"','"+Image+"') ");
                    c.executeUpdate();
                }
                //Inserting Nuetral Reviews
                else if(Nt)
                {
                    PreparedStatement c=con.prepareStatement("insert into Neutral_Reviews values('"+Product+"','"+Category+"','"+Reviews+"','"+Date+"','"+Image+"') ");
                    c.executeUpdate();
                }
            }//While Loop Ending
            //Content Based Filtering Algorithm Code End//
%>
   
<!--View Ranking Classification-->
        <%
            {
                query=con.prepareStatement("truncate table ranking");
                rs=query.executeQuery();
            }
            query=con.prepareStatement("SELECT * FROM positive_reviews GROUP BY product");
            rs=query.executeQuery();
            String Pss="",Ng="",Nu="";
            while(rs.next())
            {
                {
                    PreparedStatement geting=con.prepareStatement("SELECT COUNT(product)Total FROM positive_reviews WHERE product='"+rs.getString("Product")+"' ");
                    ResultSet gets=geting.executeQuery();
                    if(gets.next())
                    {
                        Pss=gets.getString("Total");
                    }
                }
                
                {
                    PreparedStatement geting=con.prepareStatement("SELECT COUNT(product)Total FROM Negative_reviews WHERE product='"+rs.getString("Product")+"' ");
                    ResultSet gets=geting.executeQuery();
                    if(gets.next())
                    {
                        Ng=gets.getString("Total");
                    }
                }
                
                {
                    PreparedStatement geting=con.prepareStatement("SELECT COUNT(product)Total FROM Neutral_reviews WHERE product='"+rs.getString("Product")+"' ");
                    ResultSet gets=geting.executeQuery();
                    if(gets.next())
                    {
                        Nu=gets.getString("Total");
                    }
                }
                
                PreparedStatement geting=con.prepareStatement("insert into Ranking values('"+rs.getString("product")+"','"+Pss+"','"+Ng+"','"+Nu+"')");
                geting.executeUpdate();
            }
            PreparedStatement geting=con.prepareStatement("select * from ranking");
            ResultSet gets=geting.executeQuery();
                %>
                <table align="center" style="width: 923px;text-align: center;color: blue;line-height: 2;" border="1">
                    <tr><td colspan="5" align="center"><h2 style="color: navy">View Ranking for User Given Reviews</h2></td></tr>
                    <tr style="font-size: 20px;font-weight: bold;color: brown;"><td>ID</td><td>Product</td><td>Positive</td><td>Negative</td><td>Neutral</td></tr>
                <tr>
                    <%
                        int i=0;
                        while(gets.next())
                        {
                            i++;
                            %>  
                            <tr>
                                <td><%=i%></td>
                                <td><%=gets.getString("product")%></td>
                                <td><%=gets.getString("positive")%></td>
                                <td><%=gets.getString("negative")%></td>
                                <td><%=gets.getString("neutral")%></td>
                            </tr>
                            <%
                        }
                    %>
                <%
            %>
    </table>
    <p align="center"><a href="index.jsp">Click To Back</a></p>
            <br><br><br><br>
    </body>
</html>