<%-- 
    Document   : Diagnostico
    Created on : 11/11/2017, 09:48:31 AM
    Author     : Daniel Nempeque
--%>

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
                                    <button type="button" class="btn btn-primary btn-lg" onClick="window.location.href='login.jsp'">Log Out <i class="fa fa-sign-in" aria-hidden="true"></i></button>

                            </ul>			

                    </div>
            </div>
        </nav>
    </body>
</html>
