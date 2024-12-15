/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package code;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vivek
 */
public class payment extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8"); 
        
          PrintWriter out = response.getWriter();
          
         try {           
           
              String uid = request.getParameter("uid");
              String uname =request.getParameter("uname");
              String pid=request.getParameter("pid");
              String pname=request.getParameter("pname");
              String stock=request.getParameter("stock");
              String mpurchase= request.getParameter("pquantity");
              String price = request.getParameter("price");
              String upquantity = request.getParameter("upquantity");
              String cardname = request.getParameter("cardname");
              String cardno= request.getParameter("cardno"); 
              String cvv = request.getParameter("cvv");
              String total = request.getParameter("total");
            
            Connection con=new DB().Connect();
            PreparedStatement ps = con.prepareStatement("insert into payment (uid,uname,pname,total,cardname,cardno,cvv)"
                + "values('"+uid+"','"+uname+"','"+pname+"','"+total+"','"+cardname+"','"+cardno+"','"+cvv+"')");
            System.out.println(ps);
            ps.executeUpdate();
            
            
             PreparedStatement pss=con.prepareStatement(" update cart set status='paid' where uid='"+uid+"'");
             pss.executeUpdate();
            
            
            
            

                out.println("<script>"
				+"alert(' Payment Successfully')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
		rd.include(request, response); 
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
