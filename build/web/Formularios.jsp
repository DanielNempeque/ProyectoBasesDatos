<%-- 
    Document   : Formularios
    Created on : 13/10/2017, 10:13:41 PM
    Author     : JORDAN
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
        <nav class="navbar navbar-inverse navbar-fixed-top" style="height: 10%">
		<div class="container-fluid">
		<!-- Media menu button-->

                <div class="navbar-header" style="width: 20%">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavbar" >
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
                    <a class="navbar-brand" href=""> <img class="LogoPrincipal" src="img/Recurso4PerrituNegro.png" width="40%" ></a>
				
			</div>	

		<!-- end media menu button-->

			<div class="collapse navbar-collapse" id="MyNavbar">
				<ul class="nav navbar-nav navbar-right ">
					<li><a href="shop.html">Tienda <i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
					<li><a href="profile.html">Perfil <i class="fa fa-user" aria-hidden="true"></i></a></li>
					<button type="button" class="btn btn-primary btn-lg" onClick="window.location.href='Login.jsp'">Login <i class="fa fa-sign-in" aria-hidden="true"></i></button>
					<button type="button" class="btn btn-default btn-lg" onClick="window.location.href='register.html'">Register</button>
				</ul>			
									
			</div>
		</div>
	</nav>
	
    </body>
<div class="container-fluid" style="padding-top: 10%">
	<div class="row">
		<div class="col-sm-4">
			<div class="panel panel-default">
    		<div class="panel-heading">Secciones</div>
    		<div class="panel-body">
			<div class="panel-group">
    			<div class="panel panel-default">
     				 <div class="panel-heading">
       					 <h4 class="panel-title">
     						<a data-toggle="collapse" href="#collapse1">Animales</a>
       					 </h4>
      				 </div>
     				 <div id="collapse1" class="panel-collapse collapse">
        				<div class="panel-body">
        					<div class="list-group">
							    <a href="#" class="list-group-item">Registro Animales</a>
							    <a href="#" class="list-group-item">Consulta de animales</a>
							    <a href="#" class="list-group-item">Eliminacion de animales</a>
  							</div>
        				</div>       					
      				 </div>
    			</div>
  			</div>          
			<div class="panel-group">
    			<div class="panel panel-default">
     				 <div class="panel-heading">
       					 <h4 class="panel-title">
     						<a data-toggle="collapse" href="#collapse2">Clientes</a>
       					 </h4>
      				 </div>
     				 <div id="collapse2" class="panel-collapse collapse">
        				<div class="panel-body">
        					<div class="list-group">
							    <a href="#" class="list-group-item">Registro de clientes</a>
							    <a href="#" class="list-group-item">Consulta de clientes</a>
							    <a href="#" class="list-group-item">Eliminacion de clientes</a>
  							</div>
        				</div>       					
      				 </div>
    			</div>
  			</div> 
  			<div class="panel-group">
    			<div class="panel panel-default">
     				 <div class="panel-heading">
       					 <h4 class="panel-title">
     						<a data-toggle="collapse" href="#collapse3">#</a>
       					 </h4>
      				 </div>
     				 <div id="collapse3" class="panel-collapse collapse">
        				<div class="panel-body">
        					<div class="list-group">
							    <a href="#" class="list-group-item">First item</a>
							    <a href="#" class="list-group-item">Second item</a>
							    <a href="#" class="list-group-item">Third item</a>
  							</div>
        				</div>       					
      				 </div>
    			</div>
  			</div>   
		</div>
		</div>
  			</div>
		<div class="col-sm-8">			
			<div class="panel panel-default">
    			<div class="panel-heading">Registro de clientes</div>
    			<div class="panel-body">
    				<form>
    					  <div class="form-group">
						    <label >Nombre</label>
						    <input type="text" class="form-control">
						  </div>
						  <div class="form-group">
						    <label >Numero de documento</label>
						    <input type="text" class="form-control">
						  </div>
						  <div class="form-group">
						    <label >Telefono</label>
						    <input type="text" class="form-control">
						  </div>
						  <div class="form-group">
						    <label for="email">Email address:</label>
						    <input type="email" class="form-control" id="email">
						  </div>
						  <div class="form-group">
						    <label >Fecha de nacimiento</label>
						    <input type="Date" class="form-control">
						  </div>
						  <div class="form-group">
					     	 <label for="sel1">Genero</label>
					      	 <select class="form-control" id="sel1">
					      	 	<option>Seleccione uno ..... </option>
					        	<option>Masculino</option>
					        	<option>Femenino</option>					        
					      	 </select>     
					      </div>	
					      <div class="form-group">
						    <label >Usuario</label>
						    <input type="text" class="form-control">
						  </div>					  
						  <div class="form-group">
						    <label for="pwd">Contraseña</label>
						    <input type="password" class="form-control" id="pwd">
						  </div>						  
						  <button type="submit" class="btn btn-default">Submit</button>
					</form>
    			</div>
  			</div>
  			<div class="panel panel-default">
    			<div class="panel-heading">Consulta de clientes</div>
    			<div class="panel-body">
    				<form>
    					  <div class="form-group">
						    <label >Nombre</label>
						    <input type="text" class="form-control">
						  </div>
						  <button type="submit" class="btn btn-default">Buscar</button>
				    </form>
						  <table class="table table-striped">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>						  
					
    			</div>
  			</div>
		</div>
	</div>
</div>

</body>
</html>
