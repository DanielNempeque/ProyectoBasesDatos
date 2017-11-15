/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Gestion.GestionCliente;
import Gestion.GestionUsuario;
import Model.Cliente;
import Model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Daniel Nempeque
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            String resp = "";
            String userName = request.getParameter("txtUserName");
            String Mail = request.getParameter("txtCorreo");
            String Pass1 = request.getParameter("txtPass1");
            String Pass2 = request.getParameter("txtPass1");
            String Nombre = request.getParameter("txtNombre");
            String Telefono = request.getParameter("txtTelefono");
            String Documento = request.getParameter("txtDocumento");
            String Date = request.getParameter("date");
            String Genero = request.getParameter("txtGenero");
            boolean funka = false;

            if (userName != "" && userName != null) {
                if (Mail != "" && Mail != null) {
                    if (Pass1.equals(Pass2) && Pass1 != "" && Pass1 != null) {
                        if (Nombre != "" && Nombre != null) {
                            if (Telefono != "" && Telefono != null) {
                                if (Documento != "" && Documento != null) {
                                    if (Date != "" && Date != null) {
                                        if (Genero != null && Genero != "") {
                                            GestionCliente gestC = new GestionCliente();
                                            GestionUsuario gestU = new GestionUsuario();

                                            Cliente cliente = new Cliente(Nombre, Telefono, Documento, Date, Genero);
                                            gestC.createCliente(cliente);                                            
                                            Usuario usuario = new Usuario(userName, Pass1, Mail, 0);
                                            gestU.addLogin(usuario);
                                            funka = true;
                                        } else {
                                            resp = "Genero";
                                        }
                                    } else {
                                        resp = "Fecha";
                                    }
                                } else {
                                    resp = "Documento";
                                }
                            } else {
                                resp = "Telefono";
                            }
                        } else {
                            resp = "Nombre";
                        }
                    } else {
                        resp = "Pass o las contraseñas no coinciden";
                    }
                } else {
                    resp = "Mail";
                }
            } else {
                resp = "User Name";
            }

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");
            out.println("</head>");
            out.println("<body>");
            if (!funka) {
                out.println("<h1>No se lleno el campo: " + resp + "</h1>");
            } else {
                out.println("<h1>Se Agrego correctamente</h1>");
            }
            out.println("</body>");
            out.println("</html>");
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
