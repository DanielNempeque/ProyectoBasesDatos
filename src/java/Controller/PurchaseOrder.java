/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Gestion.GestionCliente;
import Gestion.GestionFactura;
import Gestion.GestionUsuario;
import Model.Cliente;
import Model.Factura;
import Model.Producto;
import Model.Usuario;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JORDAN
 */
public class PurchaseOrder extends HttpServlet {

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
        Usuario us = (Usuario) request.getSession().getAttribute("user");        
        GestionCliente ges = new GestionCliente();        
        if (request.getSession().getAttribute("productsShop") == null) {
            request.setAttribute("mensaje", "No hay productos en el carro de compras");            
            request.getRequestDispatcher("PurchaseOrderMessage.jsp").forward(request, response);
        } else {            
            if (ges.getClienteLogin(us) == null) {
                    request.setAttribute("mensaje","El cliente no se encuentra en la base de datos");
                    request.getRequestDispatcher("PurchaseOrderMessage.jsp").forward(request, response);
            }else
            {
                    Cliente cli = ges.getClienteLogin(us);
                    ArrayList<Producto> productsShop = (ArrayList<Producto>) request.getSession().getAttribute("productsShop");
                    int total = 0;
                    for (Producto xxx : productsShop) {
                        total = total + xxx.getPrice();
                    }
                    Date date = new Date();
                    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");        
                    Factura fac = new Factura(request.getParameter("des"),date,(double)total,(double)total*0.16,Integer.parseInt(cli.getIdClient()),request.getParameter("modoPago"));
                    GestionFactura gesFac = new GestionFactura();
                try {
                        try {
                            gesFac.MadeBill(fac);
                        } catch (ParseException ex) {
                            Logger.getLogger(PurchaseOrder.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    for (Producto xxx : productsShop) {
                        gesFac.MadeProducts(xxx);
                    }
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(PurchaseOrder.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(PurchaseOrder.class.getName()).log(Level.SEVERE, null, ex);
                } catch (InstantiationException ex) {
                    Logger.getLogger(PurchaseOrder.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(PurchaseOrder.class.getName()).log(Level.SEVERE, null, ex);
                }
                    request.setAttribute("cli",cli);
                    request.setAttribute("fac",fac);                                        
                    request.setAttribute("mensaje","Factura");
                    request.getRequestDispatcher("PurchaseOrderMessage.jsp").forward(request, response);
                }
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
