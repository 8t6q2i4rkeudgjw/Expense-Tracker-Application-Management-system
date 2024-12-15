<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
String fname=request.getParameter("pname");
String fno=request.getParameter("pno");
String cost=request.getParameter("cost");
String ready=request.getParameter("qua");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemical","root","root");                
                    PreparedStatement query=con.prepareStatement("update add_product set price='"+cost+"',stock='"+ready+"' where pname='"+fname+"' and pid='"+fno+"'");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Update Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("View_Gproducts.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("View_Gproducts.jsp");
                    rd.include(request,response);
                }

%>