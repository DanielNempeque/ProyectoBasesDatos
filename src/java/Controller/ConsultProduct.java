/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Gestion.GestionProducto;
import Model.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author JORDAN
 */
public class ConsultProduct extends HttpServlet {

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
        GestionProducto ges = new GestionProducto();
        DefaultTableModel mo = null;
        if (request.getParameter("nombre").equals("") && !(request.getParameter("tipo").equals("null"))) {
            try {
                mo = ges.getProductsType(Integer.parseInt(request.getParameter("tipo")));
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
            } catch (InstantiationException ex) {
                Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IllegalAccessException ex) {
                Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            if (request.getParameter("tipo").equals("null")) {
                try {
                    mo = ges.getProductsName(request.getParameter("nombre"));
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
                } catch (InstantiationException ex) {
                    Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                try {
                    mo = ges.getProductsNameType(request.getParameter("nombre"),Integer.parseInt(request.getParameter("tipo")));
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
                } catch (InstantiationException ex) {
                    Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(ConsultProduct.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

        ArrayList<Producto> products = new ArrayList<>();
        Producto p;
        for (int x = 0; x < mo.getRowCount(); x++) {
            p = new Producto((int) mo.getValueAt(x, 0), (String) mo.getValueAt(x, 1), (String) mo.getValueAt(x, 2),
                    (int) mo.getValueAt(x, 3), (int) mo.getValueAt(x, 4));
            products.add(p);
        }
        request.setAttribute("Rproducts", products);
        request.getRequestDispatcher("Productos.jsp").forward(request, response);
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
