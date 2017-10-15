<%-- 
    Document   : Shop
    Created on : 14/10/2017, 06:55:44 PM
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
        <script type="text/javascript" src="js/shop.js"></script>
	<link rel="stylesheet" type="text/css" href="css/_navbar.css">
	<link rel="stylesheet" type="text/css" href="css/_style.css">
	<link rel="stylesheet" type="text/css" href="css/_shop.css">
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

  <!-- end Navbar-->
<div class="container-fluid" style="padding-top: 10%">
  
    <div class="menu">
      <div class="mini-menu">
          <ul>
            <li>
                <a href="#">Tipo1</a>
            </li>
            <li>
                <a href="#">Tipo2</a>
            </li>
            <li>
                <a href="#">Tipo3</a>
            </li>
        </ul>
        <div class="menu-search menu-item">
          <form>
            <i class="fa fa-search" aria-hidden="true" style="font-size: 15px;
            padding-right: 3px;"></i><input type="text" name="search" placeholder="Search..">
          </form>
          <br>
          <button class="btn btn-lg btn-default btn-block" style="width: 90%;"> Buscar</button>
        </div>
        <div class="menu-price menu-item" id="">
            <div class="header-item" >Price</div>
              <div class="range">
                <input type="range" name="range" min="1" max="100" value="50" onchange="range.value=value">
                <output id="range">50</output>
              </div>
            
            <div id="slider-range"></div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-3 col-lg-offset-3">
        <h3 class="text-center">item1</h3>
        <img class="center-block" src="img/rope.jpg" width="50%">
        <div class="info">
          <h4>$ 50.000</h4>
          <br>
          <h4><i class="fa fa-credit-card-alt" aria-hidden="true"></i> 36x $ 3.000</h4>
          <h4><i class="fa fa-truck" aria-hidden="true"></i> Envios a todo el pais</h4>
          <br>
          <button class="btn btn-lg btn-block">Comprar</button>
        </div>
      </div>
      <div class="col-lg-3">
        <h3 class="text-center">item1</h3>
        <img class="center-block" src="img/rope.jpg" width="50%">
      </div>
      <div class="col-lg-3">
        <h3 class="text-center">item1</h3>
        <img class="center-block" src="img/rope.jpg" width="50%">
      </div>
    </div>
</div>

</body>
</html>
