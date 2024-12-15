package code;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class User_Action extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
        try{
            String name=request.getParameter("username");
            String pass=request.getParameter("pass");
            Connection con=new DB().Connect();
            PreparedStatement ps=con.prepareStatement("Select * from user_register where username='"+name+"' and password='"+pass+"'  ");
            ResultSet r=ps.executeQuery();
            if(r.next()){
                String id=r.getString("user_id");
                String mail=r.getString("mail");
                session.setAttribute("userid", id);
                session.setAttribute("username", name);
                session.setAttribute("mail", mail);
                out.println("<script>"
                +"alert('Welcome "+name+" ')"
                +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
                rd.include(request, response); 
            }
            else{
                out.println("<script>"
                +"alert('Invalid Login')"
                +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("User_Login.jsp");
                rd.include(request, response);
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
