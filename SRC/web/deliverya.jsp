<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    
try {
String city=request.getParameter("city");
String pass=request.getParameter("password");
String pname=request.getParameter("pname");
String address=request.getParameter("address");
String mail=request.getParameter("mail");
String mobile=request.getParameter("mobile");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemical","root","root");                
                    PreparedStatement query=con.prepareStatement("insert into dreg (name,pass,email,address,mobile,city) values ('"+pname+"','"+pass+"','"+mail+"','"+address+"','"+mobile+"','"+city+"') ");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Add Money Exchanger\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Addde.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Addde.jsp");
                    rd.include(request,response);
                }

%>