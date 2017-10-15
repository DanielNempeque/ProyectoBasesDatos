<%-- 
    Document   : Prrofile
    Created on : 14/10/2017, 06:59:41 PM
    Author     : Daniel Nempeque
--%>

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
                    <a class="navbar-brand" href=""> <img class="LogoPrincipal" src="img/Recurso4PerrituNegro.png" width="35%" ></a>
				
			</div>	

		<!-- end media menu button-->

			<div class="collapse navbar-collapse" id="MyNavbar">
				<ul class="nav navbar-nav navbar-right ">
					<li><a href="Shop.jsp">Tienda <i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
					<li><a href="Profile.jsp">Perfil <i class="fa fa-user" aria-hidden="true"></i></a></li>
					<button type="button" class="btn btn-primary btn-lg" onClick="window.location.href='Login.jsp'">Login <i class="fa fa-sign-in" aria-hidden="true"></i></button>
					<button type="button" class="btn btn-default btn-lg" onClick="window.location.href='register.html'">Register</button>
				</ul>			
									
			</div>
		</div>
	</nav>

	<div class="container-fluid" >
		<div class="col-lg-3" id="profile">
			<img src="img/profile.jpg" width="180px" height="180px" class="img-circle center-block" id="fotoperfil">
			<h3 class="text-center">Nombre animal</h3>
			<label>Raza:</label>
			<p>Raza animal</p>
			<label>Sexo:</label>
			<p>Sexo animal</p>
			<label>Edad:</label>
			<p>edad</p>
			<label>Tipo Sangre:</label>
			<p>Tipo Sangre</p>
			

		</div>
	</div>		
</body>
</html>