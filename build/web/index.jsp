<%-- 
    Document   : index
    Created on : 30/09/2017, 10:56:49 PM
    Author     : Daniel Nempeque
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
		<!-- Media menu button-->

			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavbar" >
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"> <img class="LogoPrincipal" src="img/Recurso4PerrituNegro.png" width="11%" ></a>
				
			</div>	

		<!-- end media menu button-->

			<div class="collapse navbar-collapse" id="MyNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="shop.html">Shop <i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
					<li><a href="#schedule">Consultas</a></li>
					<li><a href="#sponsors">Random</a></li>
					<button type="button" class="btn btn-primary btn-lg" id="myLogin">Login <i class="fa fa-sign-in" aria-hidden="true"></i>	</button>
					<button type="button" class="btn btn-default btn-lg" id="myRegister">Register</button>
				</ul>			
									
			</div>
		</div>
	</nav>
    </body>
</html>
