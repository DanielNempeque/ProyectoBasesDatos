<%-- 
    Document   : Prrofile
    Created on : 14/10/2017, 06:59:41 PM
    Author     : Daniel Nempeque
--%>

<%@page import="Model.Cliente"%>
<%@page import="Gestion.GestionCliente"%>
<%@page import="Model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

			<div class="collapse navbar-collapse" id="MyNavbar">
				<ul class="nav navbar-nav navbar-right ">
					<li><a href="Shop.jsp">Tienda <i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
					  <%
                                            
                                            HttpSession session1 = request.getSession();
                                            Usuario us = (Usuario) session1.getAttribute("user");
                                            
                                            if (us == null){
                                                
                                                out.println("<button type='button' class='btn btn-primary btn-lg' id='myLogin'>Login <i class='fa fa-sign-in' aria-hidden='true'></i></button>");
                                                out.println("<button type='button' class='btn btn-default btn-lg' id='myRegister'>Register</button>");
                                            
                                            }else if(us.getUserType().equalsIgnoreCase("Administrador")){
                                                out.println("<button type='button' class='btn btn-primary btn-lg' id='myLogin'>Admin <i class='fa fa-sign-in' aria-hidden='true'></i></button>");   
                                            }else if(us.getUserType().equalsIgnoreCase("Cliente")){
                                                out.println("<form action='Close' method='GET'>");
                                                out.println("<button type='button submit' class='btn btn-primary btn-lg' >Log Out <i class='fa fa-sign-in' aria-hidden='true'></i></button>");
                                                out.println("</form>");
                                                out.println("<li><a href='Profile.jsp'>Perfil <i class='fa fa-user' aria-hidden='true'></i></a></li>");
                                                request.getRequestDispatcher("Profile.jsp").forward(request, response);
                                            }
                                                                                       
                                            
                                        %>
				</ul>			
									
			</div>
		</div>
	</nav>
        
        <%
            /*HttpSession sess = request.getSession();
            Usuario  usuario = (Usuario) sess.getAttribute("user");            
            if(usuario != null){
                GestionCliente gest = new GestionCliente();
                Cliente cli = gest.getClienteidCliente(usuario.getIdCliente());
                out.println("<h1>Hola"+cli.getName()+"<h1>");
            }*/
        
        %>

	<div class="container-fluid">
            <div class="row content" style="padding: 1%">
            <div class="col-sm-3 sidenav hidden-xs" style="margin-top: 5%; padding: 25px; background-color:#f2f2f2; ">
                <h2 class="text-center">Nombre mascota</h2>
                <img src="img/foto.jpg" alt="" class="img-responsive img-circle center-block" width="60%">
          </div>
          <br>

          <div class="col-sm-7">
            <div class="well">
                <h4>Propietario</h4>
                <p> Nombre </p>
              
            </div>
            <div class="row">
              <div class="col-sm-4">
                <div class="well">
                  <h4>Fecha de nacimiento</h4>
                  <p>0000/00/00</p> 
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
                  <p>000/00/00</p> 
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-4">
                <div class="well">
                    <h4>Especie</h4>
                    <p>No aplica</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="well">
                  <h4>Enfermedades</h4> 
                  <p>No aplica</p> 
                </div>
              </div>
              <div class="col-sm-4">
                <div class="well">
                  <h4>Peso</h4> 
                  <p>No aplica</p> 
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-8">
                <div class="well">
                    <h4>Veterinario</h4>
                  <p>No aplica</p> 
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
      </div>
        
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
</body>
</html>
