<%-- 
    Document   : Estadisticas
    Created on : 15/11/2017, 01:15:03 AM
    Author     : Daniel Nempeque
--%>

<%@page import="Gestion.GestionEstadisiticas"%>
<%@page import="Model.Usuario"%>
<%@page import="Gestion.GestionMascota"%>
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
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>


        <script type="text/javascript" src="js/modal.js"></script>
        <script type="text/javascript" src="js/datepicker.js"></script>
        <link rel="stylesheet" type="text/css" href="css/_navbar.css">
        <link rel="stylesheet" type="text/css" href="css/_style.css">
        <script type="text/javascript">

            window.onload = function () {
            var chart = new CanvasJS.Chart("chartContainer", {
            theme: "theme2",
                    title: {
                    text: "Estado Animales sin hogar"
                    },
                    data: [
                    {
                    // Change type to "doughnut", "line", "splineArea", etc.
                    type: "column",
                            dataPoints: [
            <%
                GestionMascota gest = new GestionMascota();
            %>
                            {label: "Animales con hogar", y: <%=gest.CuentaMascotas("1")%>},
                            {label: "Animales sin hogar", y: <%=gest.CuentaMascotas("2")%>},
                            ]
                    }
                    ]
            });
            chart.render();
            var chart2 = new CanvasJS.Chart("chartContainer2", {
            theme: "theme2",
                    title: {
                    text: "Promedio de edad de los animales segun su estado"
                    },
                    data: [
                    {
                    // Change type to "doughnut", "line", "splineArea", etc.
                    type: "column",
                            dataPoints: [
            <%
                float[] valores = gest.CuentaMascotaEstado();
                float v1 = valores[0];
                float v2 = valores[1];
            %>
                            {label: "Adoptado", y: <%=v1%>},
                            {label: "En espera", y: <%=v2%>},
                            ]
                    }
                    ]
            });
            chart2.render();
            }
        </script>
    <body>
        <nav class="navbar navbar-inverse " style="height: 10%">
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
                        <li><a href="Shop.jsp">Tienda <i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>

                        <%

                            HttpSession session1 = request.getSession();
                            Usuario us = (Usuario) session1.getAttribute("user");

                            if (us == null) {

                                out.println("<button type='button' class='btn btn-primary btn-lg' id='myLogin'>Login <i class='fa fa-sign-in' aria-hidden='true'></i></button>");
                                out.println("<button type='button' class='btn btn-default btn-lg' id='myRegister'>Register</button>");

                            } else if (us.getUserType().equalsIgnoreCase("Administrador")) {
                                out.println("<button type='button' class='btn btn-primary btn-lg' id='myLogin'>Admin <i class='fa fa-sign-in' aria-hidden='true'></i></button>");
                            } else if (us.getUserType().equalsIgnoreCase("Cliente")) {
                                out.println("<li><a href='Profile.jsp'>Perfil <i class='fa fa-user' aria-hidden='true'></i></a></li>");
                        %>
                        <form action="Close">
                            <%
                                out.println("<button type='submit' class='btn btn-primary btn-lg'>Log Out <i class='fa fa-sign-in' aria-hidden='true'></i></button>");
                            %>
                        </form>
                        <%
                                request.getRequestDispatcher("Profile.jsp").forward(request, response);
                            }


                        %>
                    </ul>			

                </div>
            </div>
        </nav>
        <div>
            <h1 class="text-center" style="padding: 1%">Estadisticas</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6" style="padding: 5%">
                    <div id="chartContainer" style="height: 500px; width: 100%;"></div>
                </div>
                <div class="col-lg-6" style="padding: 5%">
                    <div id="chartContainer2" style="height: 500px; width: 100%;"></div>
                </div>
            </div>
            <%
                GestionEstadisiticas estad = new GestionEstadisiticas();
                String nombre1 = estad.GetMaxMascotas();
            %>
            <div class="row" style="padding: 5%">
                <h2><strong>¿La persona con mas mascotas es: ?</strong> !<%=nombre1%>¡</h2>
            </div>
        </div>


    </body>
</html>
