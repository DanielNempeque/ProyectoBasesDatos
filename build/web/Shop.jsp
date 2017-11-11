<%-- 
    Document   : Shop
    Created on : 14/10/2017, 06:55:44 PM
    Author     : Daniel Nempeque
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Producto"%>
<%@page import="Gestion.GestionProducto"%>
<%@page import="Gestion.GestionTipo"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="Gestion.GestionTag"%>
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
<body style="overflow: visible">
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
          <!--<li><a href="Profile.jsp">Perfil <i class="fa fa-user" aria-hidden="true"></i></a></li>-->
          <button type="button" class="btn btn-primary btn-lg" onClick="window.location.href='Login.jsp'">Login <i class="fa fa-sign-in" aria-hidden="true"></i></button>
          <button type="button" class="btn btn-default btn-lg" onClick="window.location.href='Register.jsp'">Register</button>
        </ul>     
                  
      </div>
    </div>
  </nav>

  <!-- end Navbar-->
<div class="container-fluid" style="padding-top: 4%">
  <div class="row">
    <div class="col-sm-3">
      <div class="mini-menu">
        <h4>Filtros</h4>
        <div class="menu-search menu-item">
            <form action="RNombre" method="GET">
            <i class="fa fa-search" aria-hidden="true" style="font-size: 15px;
            padding-right: 3px;"></i><input type="text" name="nombre" placeholder="Search..">
            <br>
            <button class="btn btn-lg btn-default btn-block" style="width: 90%;" onclick="submit"> Buscar</button>
          </form>          
        </div> 
        
            
                <div class="range">
                <%GestionProducto Ma = new GestionProducto();%>
                <input type="range" name="range" min=<%=Ma.getMin()%> max=<%=Ma.getMax()%> value="<%=Ma.getMax()/2%>" onchange="range.value=value;range2.value = value">
                <form action="RPrecio" method="GET">                    
                    <input type="text" id="range" name="Dinero" value="<%=Ma.getMax()/2%>" disabled="true">
                    <button type="submit" name="Dinero" id="range2" value="<%=Ma.getMax()/2%>">Filtrar</button>
                </form>
                
                </div> 
                
         
      <h4>Tipos de producto</h4>
      
          <form action="RTipo" method="GET">
              <div class="btn-group-vertical center-block">  
              <%
              GestionTipo ges = new GestionTipo();
              DefaultTableModel mo;
              mo = ges.getAllTypes();
              for(int x = 0;x<mo.getRowCount();x++)
              {
              %>
              <button type="submit" class="btn btn-primary" name="tipo" value=<%=mo.getValueAt(x, 0)%>> <%=mo.getValueAt(x, 1)%></button>               
              <%
                  }
              %>  
              </div>
          </form>                
    </div>    
  </div>
    <div class="col-sm-9">
        <div class="col-sm-12">
            <div class="alert alert-success">                
                <%                    
                    int y = 0;
                    ArrayList<Producto> productsShop = null;
                    if(request.getAttribute("productsShop")==null)
                    {
                        y = 0;
                        request.setAttribute("productsShop", null);
                    }
                    else
                    {
                        productsShop = (ArrayList<Producto>)request.getAttribute("productsShop");
                        request.setAttribute("productsShop", productsShop);
                        y = productsShop.size();
                    }
                    
                    
                    %>
                <strong><button type="button" class="btn btn-success btn-block" data-toggle="collapse" data-target="#demo"><i class="fa fa-shopping-cart" aria-hidden="true"></i>   
                        Carrito de compras               <span class="badge"> <%=y%> </span></button></strong>
                <div id="demo" class="collapse">
                    <table class="table table-striped">
                        <thead>
                          <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Precio</th>
                          </tr>
                        </thead>
                        <tbody>
                          
                              <%
                                  int total = 0;
                                  if(productsShop == null)
                                  {
                                      
                                  }
                                  else
                                  {
                                  for(Producto xxx:productsShop)
                                  {
                                      total = total + xxx.getPrice();
                                  %>
                                  <tr>
                                      <td> <%=xxx.getIdProducto()%> </td>
                                      <td><%=xxx.getName()%></td>
                                      <td><%=xxx.getPrice()%></td>
                                 </tr>      
                          <%
                              }
                                    }
                              %>
                              <tr>
                                      <td> ---------------- </td>
                                      <td>Total</td>
                                      <td><%=total%></td>
                                 </tr>
                        </tbody>
                      </table>
                </div>
            </div>
        </div>
        <form action="AProducto" method="post">
        <%            
            if(request.getAttribute("products")==null)
            {
            GestionProducto gesP = new GestionProducto();
            DefaultTableModel moP;            
            moP = gesP.getAllProducts();
            for(int x=0;x<moP.getRowCount();x++)
            {
            %>
            <div class="col-sm-4">                 
                <h4><%=moP.getValueAt(x,0)+" "+moP.getValueAt(x,1)%></h4>
                <img class="center-block" src="<%=moP.getValueAt(x,2)%>" width="50%" height="150px">
              <div class="info">
                  <h5>Cantidad <%=moP.getValueAt(0,3)%></h5>
                  <h5>$ <%=moP.getValueAt(x, 4)%></h5>
                <br>
                <h5><i class="fa fa-credit-card-alt" aria-hidden="true"></i> 36x $ 3.000</h5>
                <h5><i class="fa fa-truck" aria-hidden="true"></i> Envios a todo el pais</h5>
                <br>                
                <button type="submit" class="btn btn-success btn-block" name="producto" value="<%=moP.getValueAt(x,0)%>">Comprar</button>
              </div>
            </div>  
        <%
            }
}
else
{
    ArrayList<Producto> products = (ArrayList<Producto>)request.getAttribute("products");
for(Producto xxx:products)            
            {                            
    %>
    <div class="col-sm-4">                 
                <h4> <%=xxx.getIdProducto()+" "+xxx.getName()%> </h4>
                <img class="center-block" src="<%=xxx.getImagen()%>" width="50%" height="150px">
              <div class="info">
                  <h5>Cantidad <%=xxx.getQuantity()%></h5>
                  <h5>$ <%=xxx.getPrice()%></h5>
                <br>
                <h5><i class="fa fa-credit-card-alt" aria-hidden="true"></i> 36x $ 3.000</h5>
                <h5><i class="fa fa-truck" aria-hidden="true"></i> Envios a todo el pais</h5>
                <br>
                <button type="submit" class="btn btn-success btn-block" name="producto" value="<%=xxx.getIdProducto()%>">Comprar</button>
              </div>
            </div>  
    <%
}
}
            %>  
            </form>
    </div>
  </div>
</div>
</div>
</body>
</html>
