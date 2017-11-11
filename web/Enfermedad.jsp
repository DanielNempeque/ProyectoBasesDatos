<%-- 
    Document   : Enfermedad
    Created on : 11/11/2017, 09:43:07 AM
    Author     : Daniel Nempeque
--%>

<%@page import="Model.Enfermedad"%>
<%@page import="Model.TipoEnfermedad"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Gestion.GestionEnfermedad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PET ME</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <script type="text/javascript" src="js/modal.js"></script>
        <link rel="stylesheet" type="text/css" href="css/_navbar.css">
        <link rel="stylesheet" type="text/css" href="css/_style.css">
    </head>
    <body>
        <nav class="navbar navbar-inverse" style="height: 10%">
            <div class="container-fluid">
                <!-- Media menu button-->

                <div class="navbar-header" style="width: 20%">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavbar" >
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"> <img class="LogoPrincipal" src="img/Recurso4PerrituNegro.png" width="40%" ></a>

                </div>	

                <!-- end media menu button-->

                <div class="collapse navbar-collapse" id="MyNavbar">
                    <ul class="nav navbar-nav navbar-right ">
                        <li><a href="Enfermedad.jsp">Enfermedad</i></a></li>
                        <li><a href="Consulta.jsp">Consultas</i></a></li>
                        <li><a href="Profile.jsp">Diagnostico</i></a></li>
                        <button type="button" class="btn btn-primary btn-lg" onClick="window.location.href = 'login.jsp'">Log Out <i class="fa fa-sign-in" aria-hidden="true"></i></button>

                    </ul>			

                </div>
            </div>
        </nav>

        <div class="container">
            <h1>Enfermedad</h1>
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#ingresa">Agregar Enfermedad</a>
                        </h4>
                    </div>
                    <div id="ingresa" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <form method="get" action="CreateEnfermedad">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label for="idTipoEnfermedad">Tipo Enfermedad</label>
                                        <select class="form-control" id="idTipoEnfermedad" name="TipoEnfermedad">
                                            <%
                                                GestionEnfermedad enf = new GestionEnfermedad();
                                                ArrayList<TipoEnfermedad> tip = new ArrayList<TipoEnfermedad>(enf.GetTipoEnfermedad());
                                                for (TipoEnfermedad enfermedades : tip) {
                                                    out.println("<option>" + enfermedades.getNombre() + "</option>");
                                                }
                                            %>


                                        </select>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label for="idVet">Nombre Enfermedad</label>
                                    <input type="text" class="form-control" id="NombreEnf" name="NombreEnf" placeholder="Nombre Enfermedad">
                                </div>
                                <div class="form-group">
                                    <label for="descripcion">Descripcion</label>
                                    <textarea class="form-control" rows="4" id="descripcion" name="Desc" placeholder="Descripcion"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Crear</button>

                            </form>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#Busca">Buscar Enfermedad</a>
                        </h4>
                    </div>
                    <div id="Busca" class="panel-collapse collapse">
                        <div class="panel-body">
                            <form method="get" action="">
                                <div class="form-inline">
                                    <label for="idEnf">Nombre Enfermedad</label>
                                    <input type="text" class="form-control" id="idEnf" name="NombreEnf" placeholder="Nombre enfermedad">
                                    <input name="Submit" class="btn btn-primary" type="submit" value="Buscar">
                                    <%
                                        String docPersona = request.getParameter("NombreEnf");

                                        Enfermedad enfer = enf.getEnfermedadNombre(docPersona);

                                        if (enfer == null) {
                                            out.println("<h4>NO se encontro la enfermedad</h4>");
                                        } else if (enfer != null) {
                                            out.println("<br><strong>Nombre: </strong>" + enfer.getNombre());
                                            out.println("<br><strong>Tipo Enfermedad: </strong>" + enfer.getNombretipoE());
                                            out.println("<br><strong>Descripcion: </strong>" + enfer.getDescripcion());
                                        }


                                    %>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#List">Lista Enfermedades</a>
                            </h4>
                        </div>
                        <div id="List" class="panel-collapse collapse">
                            <div class="panel-body">
                                <table class="table">
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Tipo Enfermedad</th>
                                        <th>Descripcion</th>
                                    </tr>
                                    <%                                        GestionEnfermedad gest = new GestionEnfermedad();
                                        ArrayList<Enfermedad> enfermedades = new ArrayList<Enfermedad>(gest.GetEnfermedades());
                                        for (Enfermedad enferm : enfermedades) {
                                            out.print("<tr>");
                                            out.print("<td class='text-justify'>" + enferm.getNombre() + "</td>");
                                            out.print("<td class='text-justify'>" + enferm.getNombretipoE() + "</td>");
                                            out.print("<td class='text-justify'>" + enferm.getDescripcion() + "</td>");
                                            out.print("</tr>");
                                        }
                                    %>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#Remove">Elimina Enfermedad</a>
                            </h4>
                        </div>
                        <div id="Remove" class="panel-collapse collapse">
                            <div class="panel-body">
                                <label for="idEnf">Nombre Enfermedad</label>
                                    <input type="text" class="form-control" id="idEnf" name="NombreEnf" placeholder="Nombre enfermedad">
                                    <input name="Submit" class="btn btn-primary" type="submit" value="Buscar">
                                    <%
                                        
                                    %>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <script type="text/javascript">
                function MM_openBrWindow(theURL, winName, features) { //v2.0
                    window.open(theURL, winName, features);
                }
                
            </script>
    </body>
</html>
