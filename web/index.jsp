<%-- 
    Document   : index
    Created on : 30/09/2017, 10:56:49 PM
    Author     : Daniel Nempeque
--%>

<%@page import="Model.Usuario"%>
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
        <nav class="navbar navbar-inverse navbar-fixed-top" style="height: 10%">
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

	<!--Image Slider-->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" ></li>
			<li data-target="#myCarousel" data-slide-to="2" ></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="img/Laura1.jpg">
				<div class="carousel-caption">
                                    <img src="img/Recurso 8Logo1.png" width="50%">
				</div>
			</div>

			 <!--end active-->
			<div class="item">
				<img src="img/pato.png.jpeg">
			</div>
			<div class="item">
				<img src="img/slider3.jpg">
			</div>
		</div>
		<!--Start Slider-->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previus</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>


	</div>


	<!-- Description -->
	<div class="container" id="about">
		<h1 class="text-center">Pet Me!</h1>
                <h1 class="text-center">Una veterinaria comprometida con el cuidado de nuestras mascotas de compañia</h1>
		<div class="row">
			<div class="col-md-6">
				<h3>Sobre nosotros</h3>
				<p class="text-justify">Somos una clínica Veterinaria dedicada a la atención de pequeños animales de compañía y prestamos servicios especializados. 
                                    Además buscamos mejorar el nivel de la Medicina Veterinaria colocando al servicio de los médicos veterinarios y estudiantes nuestras instalaciones 
                                    y conocimientos para su apoyo, tareas que con espíritu de servicio y vocación académica realizamos con el ánimo de contribuir a la
                                    reflexión y la acción sobre la responsabilidad de la veterinaria en la sociedad actual Colombiana.</p>

			</div>

			<div class="col-md-6" style="margin-top: 5%">
				<img src="img/Screenshot_2017-05-19-16-21-43.png" class="img-responsive center-block" width="200" height="200">
			</div>
		</div>
	</div>
        <!--more description-->
        <div class="container" id="about_dos">
                        <div class="col-md-6" style="margin-top: 5%">
				<img src="img/Onix.jpg" class="img-responsive" width="400" height="400">
			</div>
			<div class="row">
			<div class="col-md-6"> 
				<h3>Nuestra visión</h3>
				<p class="text-justify">Atendiendo nuestro compromiso de prestación de servicios Médicos Veterinarios especializados, 
                                    buscamos en 2018 ser la clínica veterinaria de mayor reconocimiento a nivel local, 
                                    contribuyendo con esto a mejorar la calidad de vida de nuestras mascotas para alegría de sus propietarios.</p>
                                <p class="text-justify"> Estos son los valores con los que trabajamos para brindar un buen servicio
                                    Dedicación y Laboriosidad.
                                    Ética profesional y Respeto por los animales.
                                    Gran compromiso y Responsabilidad.
                                    Trabajo en equipo.</p>

			</div>

			
		</div>
	</div>
        <div class="jumbotron text-center">
  <h1>SERVICIOS</h1>
  <p>En PET ME tenemos servicios especializados en el cuidado de tu animal de compañia</p> 
</div>
  
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <img src="img/salud_icono.png" class="img-responsive center-block" width="100" height="100">
      <h3>Cosultas</h3>
      <p>Diagnosticamos a tu mascota para prevenir y darle los cuidados que necesite.</p>
      <p>Contamos con personal especializado para suplir cualquier necesidad.</p>
    </div>
    <div class="col-sm-4">
      <img src="img/pet_adopt.png" class="img-responsive" width="340" height="340">
      <h3>Adopciones</h3>
      <p>Tu primera opción a la hora de incluir un nuevo integrante a tu familia.</p>
      <p>Contamos con una gran nomina de adopciones con animales de diferentes especies, que buscan 
      un hogar donde puedan pasar el resto de su vida.</p>
    </div>
    <div class="col-sm-4">
       <img src="img/petshop.png" class="img-responsive center-block" width="110" height="110">
      <h3>Pet shop</h3>        
      <p>En nuestra tienda encontrarás todo lo que necesitas para tu mascota accesorios, medicinas</p>
      <p>Todos nuestros porductos, accesorios y medicamentos cumplen los más altos estandares de calidad pensando en tu seguridad y la de tu mascota</p>
    </div>
  </div>
</div>

 


<!--register-->
<form action="Register" method="GET">
    <div class="modal fade" id="register" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color:red;"><span class="glyphicon glyphicon-lock"></span> Register</h4>
        </div>
        <div class="modal-body">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter username">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="fa fa-envelope"></span> Mail</label>
              <input type="email" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="psw1" placeholder="Enter password">
              <br>
              <input type="password" class="form-control" id="psw2" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>¿Deseas recibir correos?</label>
            </div>
            <button type="submit" class="btn btn-default btn-success btn-block" id="regi"><span class="glyphicon glyphicon-off"></span> Register</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
    </div>
  </div>
    
</form>
<form action="Login" method="POST">
    <div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color:red;"><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" placeholder="Username" name="txtUsr">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="psw1" placeholder="Password" name="txtPass">
            </div>
            <button type="submit" class="btn btn-default btn-success btn-block" id="regi"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
    </div>
  </div>
    
</form>
 
    </body>
</html>
