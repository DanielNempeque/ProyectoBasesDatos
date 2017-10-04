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
        <title>PET ME</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <script type="text/javascript" src="js/modal.js"></script>
        <link rel="stylesheet" type="text/css" href="css/_navbar.css">
        <link rel="stylesheet" type="text/css" href="css/_style.css">
        <link rel="stylesheet" type="text/css" href="css/_modal.css">
        
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
					<button type="button" class="btn btn-primary btn-lg" id="myLogin">Login <i class="fa fa-sign-in" aria-hidden="true"></i></button>
					<button type="button" class="btn btn-default btn-lg" id="myRegister">Register</button>
				</ul>			
									
			</div>
		</div>
	</nav>
        <!--end navbar-->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" ></li>
			<li data-target="#myCarousel" data-slide-to="2" ></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="Web Pages/img/Laura1.jpg">
				<div class="carousel-caption">
					<img src="img/Recurso3LogoPetmeGrande.png" width="50%">
				</div>
			</div>

			 <!--end active-->
			<div class="item">
				<img src="img/slider2.jpg">
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
		<h1 class="text-center">We are a Vet!</h1>
		<div class="row">
			<div class="col-md-6">
				<h3>Description</h3>
				<p class="text-justify">Semiotics hell of iceland, gastropub brunch occaecat af listicle hot chicken. Activated charcoal vice pickled put a bird on it in, palo santo butcher flexitarian kogi yr copper mug pariatur labore. Dolore cloud bread pickled thundercats cray gentrify unicorn venmo brunch direct trade four loko aute activated charcoal hashtag. Labore subway tile raw denim intelligentsia, pickled unicorn nisi hot chicken fugiat viral distillery cupidatat. Typewriter taxidermy ugh enamel pin slow-carb +1. Narwhal aesthetic biodiesel dreamcatcher dolore. Plaid portland beard, marfa microdosing jean shorts narwhal vinyl ex blue bottle. Neutra deep v jianbing waistcoat subway tile food truck blue bottle nulla do messenger bag selvage meditation. Squid irure veniam scenester sustainable consectetur bushwick ex single-origin coffee.</p>

				<p class="text-justify">Mustache laboris forage, in 8-bit dreamcatcher salvia yuccie edison bulb tbh. Gochujang do ea jianbing fugiat. Tilde copper mug cold-pressed, nostrud affogato flannel ullamco. Meggings palo santo venmo consequat PBR&B do salvia banjo. Est deserunt roof party viral qui fugiat pabst laboris master cleanse officia, craft beer shoreditch gastropub occaecat. Non sed gentrify messenger bag. Four dollar toast knausgaard asymmetrical, ugh gentrify whatever sustainable chartreuse ut occaecat velit bicycle rights. Etsy sed polaroid chambray, craft beer shabby chic blue bottle schlitz. IPhone tote bag glossier try-hard excepteur, chia thundercats disrupt intelligentsia mumblecore. Pour-over chambray mumblecore single-origin coffee farm-to-table ut lyft lomo air plant XOXO occaecat.</p>

			</div>

			<div class="col-md-6" style="margin-top: 5%">
				<img src="img/description.jpg" class="img-responsive">
			</div>
		</div>
	</div>

	<!-- Login -->

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
              <input type="email" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="pswlogin"placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
            <button type="submit" class="btn btn-default btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="#myRegister">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
    </div>
  </div> 
</div>

<!--register-->
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
    </body>
</html>
