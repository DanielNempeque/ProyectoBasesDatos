/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Gestion.GestionEnfermedad;
import Model.Enfermedad;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Thread.sleep;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Daniel Nempeque
 */
@WebServlet(name = "CreateEnfermedad", urlPatterns = {"/CreateEnfermedad"})
public class CreateEnfermedad extends HttpServlet {

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

            GestionEnfermedad enf = new GestionEnfermedad();
            String NombreTipo = request.getParameter("TipoEnfermedad");

            String idTipoEnf = enf.getIdTipoEnfermedad(NombreTipo) + "";

            String Nombre = request.getParameter("NombreEnf");
            String Descripcion = request.getParameter("Desc");
            if (Nombre != null && Nombre != "") {
                if (Descripcion != null && Descripcion != "") {
                    Enfermedad enfermedad = new Enfermedad(idTipoEnf, Nombre, Descripcion);
                    enf.createEnfermedad(enfermedad);
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>\n"
                            + "        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
                            + "        <title>PET ME</title>\n"
                            + "        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n"
                            + "      	<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n"
                            + "      	<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n"
                            + "      	<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n"
                            + "        <script type=\"text/javascript\" src=\"js/modal.js\"></script>\n"
                            + "        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/_navbar.css\">\n"
                            + "        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/_style.css\">\n"
                            + "    </head>");
                    out.println("<body>");
                    out.println("<h1 class='text-center'>Se creo la enfermedad correctamente</h1><br>");
                    out.println("<div class='container'style='margin: 5%'><button  type='button' class='btn btn-primary btn-lg btn-block' id='myLogin' onClick=\"window.location.href='Enfermedad.jsp'\">Volver</button></div>");
                    out.println("</body>");
                    out.println("</html>");
                } else {
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>\n"
                            + "        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
                            + "        <title>PET ME</title>\n"
                            + "        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n"
                            + "      	<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n"
                            + "      	<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n"
                            + "      	<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n"
                            + "        <script type=\"text/javascript\" src=\"js/modal.js\"></script>\n"
                            + "        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/_navbar.css\">\n"
                            + "        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/_style.css\">\n"
                            + "    </head>");
                    out.println("<body>");
                    out.println("<h1 class='text-center'>No se lleno el campo Descripcion</h1><br>");
                    out.println("<div class='container'style='margin: 5%'><button  type='button' class='btn btn-primary btn-lg btn-block' id='myLogin' onClick=\"window.location.href='Enfermedad.jsp'\">Volver</button></div>");
                    out.println("</body>");
                    out.println("</html>");
                }
            } else {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>\n"
                        + "        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
                        + "        <title>PET ME</title>\n"
                        + "        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n"
                        + "      	<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n"
                        + "      	<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n"
                        + "      	<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n"
                        + "        <script type=\"text/javascript\" src=\"js/modal.js\"></script>\n"
                        + "        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/_navbar.css\">\n"
                        + "        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/_style.css\">\n"
                        + "    </head>");
                out.println("<body>");
                out.println("<h1 class='text-center'>No se lleno el campo Nombre</h1><br>");
                out.println("<div class='container'style='margin: 5%'><button  type='button' class='btn btn-primary btn-lg btn-block' id='myLogin' onClick=\"window.location.href='Enfermedad.jsp'\">Volver</button></div>");
                out.println("</body>");
                out.println("</html>");
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
