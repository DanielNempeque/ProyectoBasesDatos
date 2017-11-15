<%-- 
    Document   : PopUpBuscaConsulta
    Created on : 12/11/2017, 05:59:51 PM
    Author     : Daniel Nempeque
--%>

<%@page import="Model.Enfermedad"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Gestion.GestionEnfermedad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <h2 class="text-center"><strong>Seleccione de las enfermedades que se encuentran a continuacion</strong></h2>
        </div>
        <div class="container" style="padding: 3%">
            <form action="" method="get">
                <table>
                    <tr>
                        <th>Nombre enfermedad</th>
                    </tr>
                    <tr>
                        <td>
                            <%
                                GestionEnfermedad gestenf = new GestionEnfermedad();
                                ArrayList<Enfermedad> enfermedades = new ArrayList<Enfermedad>(gestenf.GetEnfermedades());

                                for (Enfermedad enf : enfermedades) {
                                    out.print("<div class=\"checkbox\">");
                                    out.print("<label>");
                                    out.println("<input type=\"checkbox\" name=\"enfermedades\" value="+enf.getNombre()+">");
                                    out.println(enf.getNombre());
                                    out.print("</label>");
                                    out.print("</div>");
                                }
                            %>
                        </td>
                    </tr>
                </table>
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="Completa">Continuar</button>
            </form>
        </div>
    </body>
</html>
