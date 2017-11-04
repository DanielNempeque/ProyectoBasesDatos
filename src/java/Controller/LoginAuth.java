/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Gestion.GestionUsuario;
import Model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Daniel Nempeque
 */
public class LoginAuth extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        GestionUsuario gest = new GestionUsuario();
        
        String user, pass;
        user = request.getParameter("txtUsr");
        pass = request.getParameter("txtPass");
        
        Usuario us = new Usuario(user, pass);
        
        Usuario us2 = gest.AuthCliente(us);
        
        if(gest.AuthClienteBoolean(us)){
            if(us2.getUserType().equals("Administrador")){
                HttpSession session = request.getSession();
                session.setAttribute("user", us2);
                request.getRequestDispatcher("Admin").forward(request, response);
            }else{
                HttpSession session = request.getSession();
                session.setAttribute("user", us2);
                request.getRequestDispatcher("Profile").forward(request, response);
            }
            
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("error", "No se encontro el usuario");
            request.getRequestDispatcher("Error").forward(request, response);
        }
        
        
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
