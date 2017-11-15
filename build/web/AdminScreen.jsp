<%-- 
    Document   : AdminScreen
    Created on : 17/10/2017, 09:25:09 PM
    Author     : Daniel Nempeque
--%>

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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css" integrity="sha256-itWEYdFWzZPBG78bJOOiQIn06QCgN/F0wMDcC4nOhxY=" crossorigin="anonymous" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js" integrity="sha256-Nd2xznOkrE9HkrAMi4xWy/hXkQraXioBg9iYsBrcFrs=" crossorigin="anonymous"></script>
        
        
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

        <div class="container">
            <div class="col-lg-6">
                
            </div>
            <div class="col-lg-6">
                
            </div>
        </div>


    </body>
</html>
