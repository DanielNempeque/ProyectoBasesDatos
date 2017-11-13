/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Gestion.GestionConsulta;
import Gestion.GestionMascota;
import Gestion.GestionVeterinario;
import Model.Consulta;
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
@WebServlet(name = "CreateConsulta", urlPatterns = {"/CreateConsulta"})
public class CreateConsulta extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String NombreAnimal = request.getParameter("nombreAnimal");
            String idPersona = request.getParameter("docPersona");
            String Date = request.getParameter("date");
            String DocVet = request.getParameter("docVeterinario");
            
            if (idPersona != null && idPersona != "") {
                if (NombreAnimal != null && NombreAnimal != "") {
                    if (DocVet != null && DocVet != "") {
                        if (Date != null && Date != "") {
                            GestionConsulta gest = new GestionConsulta();
                            GestionMascota gest1 = new GestionMascota();
                            GestionVeterinario gest2 = new GestionVeterinario();
                            int idMascota = gest1.idMascotaNombre(NombreAnimal, idPersona);
                            int idVet = gest2.getIdVetDoc(DocVet);
                            Consulta con = new Consulta(idVet, idMascota, Date);                            
                            gest.CreateConsulta(con);
                            response.sendRedirect("SeleccionaEnfermedades.jsp");
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
                            out.println("<h1 class='text-center'>No se eligio una fecha</h1><br>");
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
                        out.println("<h1 class='text-center'>No se especifico un medico</h1><br>");
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
                    out.println("<h1 class='text-center'>No se selecciono una mascota</h1><br>");
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
                out.println("<h1 class='text-center'>No se lleno el campo Documento Persona</h1><br>");
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
