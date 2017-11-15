package Controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Laura
 */
@WebServlet(urlPatterns = {"/CreateMascotita"})
public class CreateMascotita extends HttpServlet {

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
            String NombreMascota = request.getParameter("NombreMascota");
            String fecha = request.getParameter("fecha");
            String estado = request.getParameter("estado");
            String peso = request.getParameter("Peso");
            String Especie = request.getParameter("Estado");

            if (NombreMascota != null && NombreMascota != "") {
                if (fecha != null && fecha != "") {
                    if (estado != null && estado != "") {
                        if (peso != null && peso != "") {
                            
                            }else {
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
                            out.println("<h1 class='text-center'>No se ingreso el nombre</h1><br>");
                            out.println("<div class='container'style='margin: 5%'><button  type='button' class='btn btn-primary btn-lg btn-block' id='myLogin' onClick=\"window.location.href='Perfil.jsp'\">Volver</button></div>");
                            out.println("</body>");
                            out.println("</html>");

                                }} else {
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
                            out.println("<div class='container'style='margin: 5%'><button  type='button' class='btn btn-primary btn-lg btn-block' id='myLogin' onClick=\"window.location.href='Perfil.jsp'\">Volver</button></div>");
                            out.println("</body>");
                            out.println("</html>");

                     }}else{
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
                out.println("<h1 class='text-center'>No se lleno el campo de peso</h1><br>");
                out.println("<div class='container'style='margin: 5%'><button  type='button' class='btn btn-primary btn-lg btn-block' id='myLogin' onClick=\"window.location.href='Enfermedad.jsp'\">Volver</button></div>");
                out.println("</body>");
                out.println("</html>");
                        }}else {
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
                        out.println("<h1 class='text-center'>No se selecciono una especie</h1><br>");
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
