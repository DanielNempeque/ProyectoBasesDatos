<%-- 
    Document   : Doctor
    Created on : 9/11/2017, 03:47:40 PM
    Author     : Daniel Nempeque
--%>

<%@page import="Model.Mascota"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Gestion.GestionMascota"%>
<%@page import="Model.Usuario"%>
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


        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

        <script type="text/javascript" src="js/modal.js"></script>
        <script type="text/javascript" src="js/datepicker.js"></script>
        <link rel="stylesheet" type="text/css" href="css/_navbar.css">
        <link rel="stylesheet" type="text/css" href="css/_style.css">
        <link rel="stylesheet" type="text/css" href="css/_date.css">
        <%
            String documento = request.getParameter("docPersona");
        %>

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
            <h1>Consultas</h1>
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#ingresa">Ingresar Consulta</a>
                        </h4>
                    </div>
                    <div id="ingresa" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <form method="get" action="">
                                <div class="form-group">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <label for="idPersona">Documento dueño </label>
                                            <input type="text" class="form-control" id="idPersona" name="docPersona" placeholder="Doc Identidad">
                                        </div>						
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary" onclick="this.form.action = ''">Buscar Mascotas</button>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <select class="form-control" name="nombreAnimal">
                                            <%
                                                if (documento != "" && documento != null) {
                                                    GestionMascota gest = new GestionMascota();
                                                    ArrayList<Mascota> mascotas = new ArrayList(gest.getMascotaDocCliente(documento));
                                                    for (Mascota mas : mascotas) {
                                                        out.println("<option>" + mas.getNombre() + "</option>");
                                                    }
                                                }

                                            %>
                                        </select>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label for="idVet">Documento Veterninario</label>
                                    <input type="text" class="form-control" id="idVet" name="docVeterinario" placeholder="Doc Veterninario">
                                </div>
                                <div class="form-group">
                                    <label for="datepicker">Fecha</label>
                                    <div id="datepicker" class="input-group date" data-date-format="yyyy-mm-dd">
                                        <input name="date" class="form-control" type="text" readonly />
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    </div>

                                </div>
                                
                                <button type="submit" class="btn btn-primary btn-lg btn-block" onclick="this.form.action = 'CreateConsulta'">Crear</button>

                            </form>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#Busca">Buscar Consultas</a>
                        </h4>
                    </div>
                    <div id="Busca" class="panel-collapse collapse">
                        <div class="panel-body">
                            <form method="get" action="">
                                <div class="form-inline">
                                    <label for="idCliente">Documento Cliente</label>
                                    <input type="text" class="form-control" id="idCliente" name="docPersona" placeholder="Documento persona">
                                    <input name="Submit" class="btn btn-primary" type="submit" onClick="MM_openBrWindow('index.jsp', 'Popup', 'width=500,height=700')" value="Submit">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Collapsible Group 3</a>
                            </h4>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse">
                            <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
                        </div>
                    </div>
                </div> 
            </div>


    </body>
</html>
