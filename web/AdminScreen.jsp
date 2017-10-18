<%-- 
    Document   : AdminScreen
    Created on : 17/10/2017, 09:25:09 PM
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
        
        <script type="text/javascript" src="js/adminscreen.js"></script>
        <link rel="stylesheet" type="text/css" href="css/_navbar.css">
        <link rel="stylesheet" type="text/css" href="css/_style.css">
        <link rel="stylesheet" type="text/css" href="css/_adminscreen.css">
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
                        <li><a href="Profile.jsp">Perfil <i class="fa fa-user" aria-hidden="true"></i></a></li>
                        <button type="button" class="btn btn-primary btn-lg" onClick="window.location.href='login.jsp'">Login <i class="fa fa-sign-in" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-default btn-lg" onClick="window.location.href='Register.jsp'">Register</button>
                    </ul>           
                                        
                </div>
            </div>
        </nav>
        
        <div class="tab">
            <button  id="defaultOpen" class="tablinks" onclick="openCity(event, 'London')">London</button>
            <button class="tablinks" onclick="openCity(event, 'Paris')">Paris</button>
            <button class="tablinks" onclick="openCity(event, 'Tokyo')">Tokyo</button>            
            </div>

            <div id="London" class="tabcontent">
              <h3>London</h3>
              <p>London is the capital city of England.</p>
            </div>

            <div id="Paris" class="tabcontent">
              <h3>Paris</h3>
              <p>Paris is the capital of France.</p> 
            </div>

            <div id="Tokyo" class="tabcontent">
              <h3>Tokyo</h3>
              <p>Tokyo is the capital of Japan.</p>
            </div>


    </body>
</html>
