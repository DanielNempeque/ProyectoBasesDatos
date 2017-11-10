<%-- 
    Document   : Doctor
    Created on : 9/11/2017, 03:47:40 PM
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
                                                out.println("<li><a href='#' id='perfil'>Perfil <i class='fa fa-user' aria-hidden='true'></i></a></li>");
                                                out.println("<button type='button' class='btn btn-primary btn-lg' id='myLogin'>Login <i class='fa fa-sign-in' aria-hidden='true'></i></button>");
                                                out.println("<button type='button' class='btn btn-default btn-lg' id='myRegister'>Register</button>");
                                            
                                            }else if(us.getUserType().equalsIgnoreCase("Administrador")){
                                                request.getRequestDispatcher("Doctor.jsp").forward(request, response);
                                            }else if(us.getUserType().equalsIgnoreCase("Cliente")){
                                                out.println("<li><a href='Profile.jsp'>Perfil <i class='fa fa-user' aria-hidden='true'></i></a></li>");
                                                request.getRequestDispatcher("Profile.jsp").forward(request, response);
                                            }
                                            
                                            
                                            
                                        %>
				</ul>			
									
			</div>
		</div>
	</nav>
    </body>
</html>
