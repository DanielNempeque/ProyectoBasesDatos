<%-- 
    Document   : Login
    Created on : 11/10/2017, 08:20:18 PM
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
		
	</head>
	<body>
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
		<!-- Media menu button-->

			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavbar" >
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"> <img class="LogoPrincipal" src="img/Recurso4PerrituNegro.png" width="40%" ></a>
				
			</div>	

		<!-- end media menu button-->

			<div class="collapse navbar-collapse" id="MyNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="shop.html">Tienda <i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
					<li><a href="profile.html">Perfil <i class="fa fa-user" aria-hidden="true"></i></a></li>
					<button type="button" class="btn btn-primary btn-lg" onClick="window.location.href='Login.jsp'">Login <i class="fa fa-sign-in" aria-hidden="true"></i></button>
					<button type="button" class="btn btn-default btn-lg" onClick="window.location.href='register.html'">Register</button>
				</ul>			
									
			</div>
		</div>
	</nav>

		<!--Login Form-->

		<div class="container-fluid">
			<div class="login"> 
				<div class="col-lg-4 col-lg-offset-4">
					<h1 class="text-center"><strong>Login</strong></h1>
					<form method="get" action="">
			            <div class="form-group">
			              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
			              <input type="email" class="form-control" id="usrname" placeholder="Enter email">
			            </div>
			            <div class="form-group">
			              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
			              <input type="password" class="form-control" id="pswlogin"placeholder="Enter password">
			            </div>
			            <div class="checkbox">
			              <label><input type="checkbox" value="" checked>Remember me</label>
			            </div>
			            <button type="submit" class="btn btn-default btn-primary btn-block"><span class="glyphicon glyphicon-log-in"></span> Login</button>						
					</form>
				</div>
			</div>
			
		</div>
		
	</body>
</html>
