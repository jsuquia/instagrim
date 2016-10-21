/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.servlets;

import com.datastax.driver.core.Cluster;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
import uk.ac.dundee.computing.aec.instagrim.models.User;
import uk.ac.dundee.computing.aec.instagrim.stores.LoggedIn;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "Update", urlPatterns = {"/Update"})
public class Update extends HttpServlet {
    Cluster cluster=null;
    public void init(ServletConfig config) throws ServletException {
        // TODO Auto-generated method stub
        cluster = CassandraHosts.getCluster();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
	    rd.forward(request,response);
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
        String firstname=request.getParameter("firstname");
        String surname=request.getParameter("surname");
        String email=request.getParameter("email");
        
        HttpSession session=request.getSession();
        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
        
        String username= lg.getUsername();
        
        /*System.out.println(firstname);
        System.out.println(surname);
        System.out.println(email);*/
        
        Logger.getLogger(Update.class.getName()).log(Level.INFO, firstname);
        
        User us=new User();
        us.setCluster(cluster);
        
        //System.out.println("Session in servlet "+session);
        if (us.updateDetails(firstname, surname, email, username)){
            //us.RegisterUser(username, password, firstname, surname, email);
            response.sendRedirect("/Instagrim/Profile");
        }else{
            //request.setAttribute("valid",false);
            //RequestDispatcher rd=request.getRequestDispatcher("/Main");
	    //rd.include(request,response);
        }
        
        
	
        
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
