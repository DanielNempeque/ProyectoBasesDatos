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
import static java.lang.System.out;
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

        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            
            GestionUsuario gest = new GestionUsuario();

            String user = request.getParameter("txtUsr");
            String pass = request.getParameter("txtPass");

            Usuario us = null;
            us = new Usuario(user, pass);

            Usuario us2 = null;
            us2 = gest.AuthCliente(us);
            HttpSession session = request.getSession();
            if (gest.AuthClienteBoolean(us)) {
                if (us2.getUserType().equals("Administrador")) {
                    session.setAttribute("user", us2);
                    response.sendRedirect("AdminScreen.jsp");
                } else if (us2.getUserType().equals("Cliente")) {
                    session.setAttribute("user", us2);
                    response.sendRedirect("Profile.jsp");
                } else {
                    out.println("ERRORSITO CHINGON");
                }

            } else {
                session.setAttribute("error", "No se encontro el usuario");
                request.getRequestDispatcher("Error").forward(request, response);
            }
        } catch (Exception e) {
            System.err.println("ERROR: " + e);
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
