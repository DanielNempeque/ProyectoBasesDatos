<%-- 
    Document   : Prrofile
    Created on : 14/10/2017, 06:59:41 PM
    Author     : Daniel Nempeque
--%>

<%@page import="Model.Consulta"%>
<%@page import="Model.Consulta"%>
<%@page import="Gestion.GestionConsulta"%>
<%@page import="Gestion.GestionConsulta"%>
<%@page import="Model.Mascota"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Gestion.GestionMascota"%>
<%@page import="Model.Cliente"%>
<%@page import="Gestion.GestionCliente"%>
<%@page import="Model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <title>Pet Me</title>	
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <script type="text/javascript" src="js/modal.js"></script>
        <link rel="stylesheet" type="text/css" href="css/_navbar.css">
        <link rel="stylesheet" type="text/css" href="css/_style.css">
        <link rel="stylesheet" type="text/css" href="css/_profile.css">
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
                <form action="Close" method="GET">
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

                            <%
                                out.println("<button type='submit' class='btn btn-primary btn-lg'>Log Out <i class='fa fa-sign-in' aria-hidden='true'></i></button>");
                            %>
                            <%
                                }


                            %>
                        </ul>			

                    </div>
                </form>

            </div>
        </nav>

        <div class="container-fluid">
            <div class="row content" style="padding: 1%">
                <div class="col-sm-3 sidenav hidden-xs" style="margin-top: 5%; padding: 25px; background-color:#f2f2f2; ">
                    <form>
                        <select class="form-control" name="NombreMascota">

                            <%                            GestionMascota gestMas = new GestionMascota();
                                ArrayList<Mascota> mas = new ArrayList<Mascota>(gestMas.getMascotaidCliente(us.getIdCliente()));
                                out.println("<option>" + "Seleccione su mascota" + "</option>");
                                for (Mascota mascotas : mas) {
                                    out.println("<option>" + mascotas.getNombre() + "</option>");
                                }
                                String NombreCombo = request.getParameter("NombreMascota");
                            %>                     

                        </select>

                        <br>
                        <button type="submit" class="btn btn-primary btn-block btn-lg">Buscar</button>
                        <div class="img-responsive" style="margin: 4%">
                            <img src="img/foto.jpg" alt="" class="img-responsive img-circle center-block" width="60%">
                        </div>
                    </form>

                </div>
                <br>

                <div class="col-sm-7"> 
                    <div class="well">
                        <h4>Propietario</h4>
                        <%
                            GestionCliente gestCli = new GestionCliente();
                            String cli = gestCli.getNombreidCliente(us.getIdCliente());
                            out.println("<p>" + cli + "</p>");

                        %>

                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="well">
                                <h4>Edad</h4>
                                <%                                    for (Mascota mascotas : mas) {
                                        if (mascotas.getNombre().equals(NombreCombo)) {
                                            out.println("<p>" + mascotas.getFechaNacimiento() + "</p>");
                                        }
                                    }


                                %>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="well">
                                <h4>Estado</h4>
                                <%                                    for (Mascota mascotas : mas) {
                                        if (mascotas.getNombre().equals(NombreCombo)) {
                                            out.println("<p>" + mascotas.getDescripcion() + "</p>");
                                        }
                                    }


                                %>
                            </div>
                        </div>
                        <!-- <div class="col-sm-4">
                             <div class="well">
                                <form> 
                                    <h4>Consultas</h4>
                                    <select class="form-control" name="Consulta"> -->

                        <%     /* GestionConsulta gestCon = new GestionConsulta();
                            ArrayList<Consulta> con = new ArrayList<Consulta>(gestCon.GetConsultaIdCliente(us.getIdCliente()));
                            out.println("<option>" + "Seleccione la fecha de la consulta" + "</option>");
                            for (Consulta consulta : con) {
                                out.println("<option>" + consulta.getFecha() + "</option>");
                                out.println("<option>" + consulta.getNombreVet()+ "</option>");
                                out.println("<option>" + consulta.getDescripcionCon()+ "</option>");
                            }
                            String NombreConsulta = request.getParameter("Consulta");*/
                        %>                     

                        <!--  </select>  
                          <br>
                          <button type="submit" class="btn btn-primary btn-block btn-lg">Buscar</button>

                  </div>
              </div>
          </div>-->

                        <div class="col-sm-4">
                            <div class="well">
                                <h4>Especie</h4>
                                <%                                    for (Mascota mascotas : mas) {
                                        if (mascotas.getNombre().equals(NombreCombo)) {
                                            out.println("<p>" + mascotas.getNombreEstado() + "</p>");
                                        }
                                    }


                                %>
                            </div>
                        </div>
                        <!-- <div class="col-sm-4">
                             <div class="well">
                                 <h4>Enfermedades</h4> 
                                 <p>No aplica</p> 
                             </div>
                         </div>-->

                        <div class="col-sm-4">
                            <div class="well">
                                <h4>Peso</h4> 
                                <%                                    for (Mascota mascotas : mas) {
                                        if (mascotas.getNombre().equals(NombreCombo)) {
                                            out.println("<p>" + mascotas.getPeso() + "</p>");
                                        }
                                    }


                                %>
                            </div>
                        </div>

                    </div>

                    <div class="container">
                        <div class="col-sm-8">
                            <h2>Consultas</h2>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>Veterinario</th>
                                        <th>Enfermedad</th>
                                        <th>Descripcion</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Default</td>
                                        <td>Defaultson</td>
                                        <td>def@somemail.com</td>
                                        <td>sin descripcion</td>
                                    </tr>      
                                    <tr class="success">
                                        <td>Success</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                        <td>sin descripcion</td>
                                    </tr>
                                    <tr class="danger">
                                        <td>Danger</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                        <td>sin descripcion</td>

                                    </tr>
                                    <tr class="info">
                                        <td>Info</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                        <td>sin descripcion</td>
                                    </tr>
                                    <tr class="warning">
                                        <td>Warning</td>
                                        <td>Refs</td>
                                        <td>bo@example.com</td>
                                        <td>sin descripcion</td>
                                    </tr>
                                    <tr class="active">
                                        <td>Active</td>
                                        <td>Activeson</td>
                                        <td>act@example.com</td>
                                        <td>sin descripcion</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>



                    <!--<div class="row">
                        <div class="col-sm-8">
                            <div class="well">
                                <h4>Veterinario</h4>
                                <p><%                                    /*for (Mascota mascota : mas) {
                                        if (mascota.getNombre().equals(NombreCombo)){
                                    for (Consulta consulta : con) {
                                        if (consulta.getFecha().equals(NombreConsulta)) {
                                            out.println("<p>" + consulta.getNombreVet() + "</p>");
                                            
                }

            }
        }
    }*/

 /*                              GestionConsulta gestCons = new GestionConsulta();
                                    ArrayList<Consulta> cons = new ArrayList<Consulta>(gestCons.GetConsultaIdCliente(us.getIdCliente()));
                                    for (Mascota mascotas : mas) {
                                        if (mascotas.getNombre().equals(NombreCombo)) {
                                            for (Consulta consulta : cons) {
                                                if(consulta.getId_Animal() == mascotas.getId_Animal()){
                                                     out.println("<p>" + consulta.getNombreVet() + "</p>");
                                                } 
                                            }
                                        }
                                    }*/
                    %></p> 
            </div>
        </div>
        <div class="col-sm-4">
            <div class="well">
                <h4>Observaciones</h4> 
                <p>No aplica</p>
            </div>
        </div>
    </div>
</div>
</div>
</div>-->
                    <!--       <br>
                           <br>
                           <br>
                           <div class="container-fluid">
                               <div class="row content" style="padding: 1%">
                                   <div class="col-sm-3 sidenav hidden-xs" style="margin-top: 5%; padding: 25px; background-color:#f2f2f2; ">
                                       <h2 class="text-center">Putis</h2>
                                       <img src="img/putis.jpg" alt="" class="img-responsive img-circle center-block" width="60%">
                                   </div>
                                   <br>
   
                                   <div class="col-sm-7">
                                       <div class="well">
                                           <h4>Propietario: Eduard Camilo Rincón</h4>
   
                                       </div>
                                       <div class="row">
                                           <div class="col-sm-4">
                                               <div class="well">
                                                   <h4>Fecha de nacimiento</h4>
                                                   <p>2016/03/14</p> 
                                               </div>
                                           </div>
                                           <div class="col-sm-4">
                                               <div class="well">
                                                   <h4>Estado</h4>
                                                   <p>No aplica</p> 
                                               </div>
                                           </div>
                                           <div class="col-sm-4">
                                               <div class="well">
                                                   <h4>Consultas</h4>
                                                   <p>2016/05/20</p> 
                                                   <p>2016/07/19</p> 
                                                   <p>2017/04/27</p> 
                                               </div>
                                           </div>
                                       </div>
                                       <div class="row">
                                           <div class="col-sm-4">
                                               <div class="well">
                                                   <h4>Especie</h4>
                                                   <p>Hámster enano de Roborovski</p>
                                               </div>
                                           </div>
                                           <div class="col-sm-4">
                                               <div class="well">
                                                   <h4>Enfermedades</h4> 
                                                   <p>Rinitis</p> 
                                               </div>
                                           </div>
                                           <div class="col-sm-4">
                                               <div class="well">
                                                   <h4>Peso</h4> 
                                                   <p>250 g</p> 
                                               </div>
                                           </div>
                                       </div>
                                       <div class="row">
                                           <div class="col-sm-8">
                                               <div class="well">
                                                   <h4>Veterinario: Pablito Pérez García</h4> 
                                               </div>
                                           </div>
                                           <div class="col-sm-4">
                                               <div class="well">
                                                   <h4>Observaciones</h4> 
                                                   <p>No aplica</p>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               </
                           </div>
                    -->





                    <div class="container">
                        <div class="col-sm-8" >
                            <h1>Actualización de datos</h1>
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#ingresa">Agregar Mascota</a>
                                        </h4>
                                    </div>
                                    <div id="ingresa" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <form method="get" action="CreateMascota">
                                                <div class="form-group">
                                                    <div class="form-group">
                                                        <label for="nomMascota">Nombre Mascota</label>
                                                        <input type="text" class="form-control" id="NombreMasc" name="NombreMascota" placeholder="Nombre Mascota">
                                                        <%/*
                                               if (documento != "" && documento != null) {
                                                   GestionMascota gest = new GestionMascota();
                                                   ArrayList<Mascota> mascotas = new ArrayList(gest.getMascotaDocCliente(documento));
                                                   for (Mascota mas : mascotas) {
                                                       out.println("<option>" + mas.getNombre() + "</option>");
                                                   }
                                               }*/

                                                        %>

                                                    </div>

                                                </div>
                                                <div class="form-group">
                                                    <label for="datepicker">Fecha de nacimiento</label>
                                                    <div id="datepicker" class="input-group date" data-date-format="yyyy-mm-dd">
                                                        <input name="fecha" class="form-control" type="text" readonly />
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="descripcion">Estado</label>
                                                        <select class="form-control" name="Estado">
                                                            <%   /*                                            GestionEnfermedad enf = new GestionEnfermedad();
                                                           ArrayList<TipoEnfermedad> tip = new ArrayList<TipoEnfermedad>(enf.GetTipoEnfermedad());
                                                           for (TipoEnfermedad enfermedades : tip) {
                                                               out.println("<option>" + enfermedades.getNombre() + "</option>");
                                                           }*/
                                                            %>

                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="form-group">
                                                            <label for="nomMascota">Peso</label>
                                                            <input type="text" class="form-control" id="NombreMasc" name="peso" placeholder="Peso">
                                                            <%/*
                                                   if (documento != "" && documento != null) {
                                                       GestionMascota gest = new GestionMascota();
                                                       ArrayList<Mascota> mascotas = new ArrayList(gest.getMascotaDocCliente(documento));
                                                       for (Mascota mas : mascotas) {
                                                           out.println("<option>" + mas.getNombre() + "</option>");
                                                       }
                                                   }*/

                                                            %>
                                                        </div>
                                                        
                                                    <div class="form-group">
                                                        <label for="descripcion">Especie</label>
                                                        <select class="form-control" name="Especie">
                                                            <%   /*                                            GestionEnfermedad enf = new GestionEnfermedad();
                                                           ArrayList<TipoEnfermedad> tip = new ArrayList<TipoEnfermedad>(enf.GetTipoEnfermedad());
                                                           for (TipoEnfermedad enfermedades : tip) {
                                                               out.println("<option>" + enfermedades.getNombre() + "</option>");
                                                           }*/
                                                            %>

                                                        </select>
                                                    </div>

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
                                                    <%/*
                                                        String docPersona = request.getParameter("NombreEnf");

                                                        Enfermedad enfer = enf.getEnfermedadNombre(docPersona);

                                                        if (enfer == null) {
                                                            out.println("<h4>NO se encontro la enfermedad</h4>");
                                                        } else if (enfer != null) {
                                                            out.println("<br><strong>Nombre: </strong>" + enfer.getNombre());
                                                            out.println("<br><strong>Tipo Enfermedad: </strong>" + enfer.getNombretipoE());
                                                            out.println("<br><strong>Descripcion: </strong>" + enfer.getDescripcion());
                                                        }*/

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
                                                    <% /*                                       GestionEnfermedad gest = new GestionEnfermedad();
                                                        ArrayList<Enfermedad> enfermedades = new ArrayList<Enfermedad>(gest.GetEnfermedades());
                                                        for (Enfermedad enferm : enfermedades) {
                                                            out.print("<tr>");
                                                            out.print("<td class='text-justify'>" + enferm.getNombre() + "</td>");
                                                            out.print("<td class='text-justify'>" + enferm.getNombretipoE() + "</td>");
                                                            out.print("<td class='text-justify'>" + enferm.getDescripcion() + "</td>");
                                                            out.print("</tr>");
                                                        }*/
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
                                                <div class="form-inline">
                                                    <form action="DeleteEnfermedad" method="GET">
                                                        <label for="idEnfe">Nombre Enfermedad</label>
                                                        <input type="text" class="form-control" id="idEnfe" name="NombreEliminaEnf" placeholder="Nombre enfermedad">
                                                        <input name="Submit" class="btn btn-primary" type="submit" value="Buscar">
                                                    </form>                                    
                                                </div>
                                            </div>
                                        </div>
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
