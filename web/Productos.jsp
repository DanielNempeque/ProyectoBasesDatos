<%-- 
    Document   : Productos
    Created on : 12/11/2017, 09:15:12 AM
    Author     : JORDAN
--%>

<%@page import="Gestion.GestionTipo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Producto"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="Gestion.GestionProducto"%>
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
        <%
            if (request.getAttribute("mes") != null) {
        %>

        <script>
            $(document).ready(function () {

                $("#myModal").modal();

            });
        </script>
        <%}%>
        <%
            if (request.getAttribute("producto") != null) {
        %>

        <script>
            $(document).ready(function () {

                $("#myModal2").modal();

            });
        </script>
        <%}%>
    </head>
    <body>
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">    
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Mensaje</h4>
                    </div>
                    <div class="modal-body">
                        <h3><%=request.getAttribute("mes1")%></h3>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>     
        <div class="modal fade" id="myModal2" role="dialog">
            <div class="modal-dialog">    
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Datos</h4>
                    </div>
                    <div class="modal-body">
                        <%
                            if (request.getAttribute("producto") != null) {
                                Producto pro = (Producto) request.getAttribute("producto");
                        %>
                        <form action="ActualizarProducto" method="post">
                            <div class="form-group">
                                <label>ID Producto:</label>
                                <input type="hidden" class="form-control" name="id" value="<%=pro.getIdProducto()%>">
                                <input type="text" class="form-control" name="id" value="<%=pro.getIdProducto()%>" disabled="true">
                            </div>
                            <div class="form-group">
                                <label>Nombre:</label>
                                <input type="text" class="form-control" name="nombre" value="<%=pro.getName()%>">
                            </div>
                            <div class="form-group">
                                <label>URL:</label>
                                <input type="text" class="form-control" placeholder="Direccion de la imagen" name="imagen" value="<%=pro.getImagen()%>">
                            </div>
                            <div class="form-group">
                                <label>Cantidad:</label>
                                <input type="number" class="form-control" placeholder="Cantidad del producto" name="cantidad" value="<%=pro.getQuantity()%>">
                            </div>
                            <div class="form-group">
                                <label>Precio:</label>
                                <input type="number" class="form-control" placeholder="Precio del producto" name="precio" value="<%=pro.getPrice()%>">
                            </div> 
                            <div class="form-group">
                                <label>Tipo de Producto:</label>
                                <select class="form-control" id="sel1" name="tipo">                                            
                                    <%
                                        GestionTipo ges = new GestionTipo();
                                        DefaultTableModel mo;
                                        mo = ges.getAllTypesexcept(pro.getTypeProduct());
                                        for (int x = 0; x < mo.getRowCount(); x++) {
                                    %>
                                    <option value="<%=mo.getValueAt(x, 0)%>"><%=mo.getValueAt(x, 1)%></option>  
                                    <%
                                        }
                                    %>

                                </select>
                            </div>
                            <button type="submit" class="btn btn-success">Guardar</button>
                        </form>
                        <%
                            }%>
                    </div>        
                </div>

            </div>
        </div>  
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
                        <button type="button" class="btn btn-primary btn-lg" onClick="window.location.href = 'Login.jsp'">Login <i class="fa fa-sign-in" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-default btn-lg" onClick="window.location.href = 'Register.jsp'">Register</button>
                    </ul>     

                </div>
            </div>
        </nav>


        <div class="container-fluid" style="padding-top: 50px">
            <div class="row" style="padding: 20px">
                <ul class="nav nav-tabs">
                    <li><a data-toggle="tab" href="#home">Registro</a></li>
                    <li class="active"><a data-toggle="tab" href="#menu1">Consulta</a></li>                    
                </ul>
                <div class="tab-content">
                    <div id="home"  class="tab-pane fade">
                        <h3>Registrar Producto</h3>                       
                        <div class="container">                                
                            <div class="well">

                                <form action="RegistrarProducto">
                                    <div class="form-group">
                                        <label>Nombre:</label>
                                        <input type="text" class="form-control" placeholder="Nombre del producto" name="nombre">
                                    </div>
                                    <div class="form-group">
                                        <label>URL:</label>
                                        <input type="text" class="form-control" placeholder="Direccion de la imagen" name="imagen">
                                    </div>
                                    <div class="form-group">
                                        <label>Cantidad:</label>
                                        <input type="number" class="form-control" placeholder="Cantidad del producto" name="cantidad">
                                    </div>
                                    <div class="form-group">
                                        <label>Precio:</label>
                                        <input type="number" class="form-control" placeholder="Precio del producto" name="precio">
                                    </div> 
                                    <div class="form-group">
                                        <label>Tipo de Producto:</label>
                                        <select class="form-control" id="sel1" name="tipo">                                            
                                            <%
                                                GestionTipo ges = new GestionTipo();
                                                DefaultTableModel mo2;
                                                mo2 = ges.getAllTypes();
                                                for (int x = 0; x < mo2.getRowCount(); x++) {
                                            %>
                                            <option value="<%=mo2.getValueAt(x, 0)%>"><%=mo2.getValueAt(x, 1)%></option>  
                                            <%
                                                }
                                            %>

                                        </select>
                                    </div>
                                    <button type="submit" class="btn btn-success">Registrar Nuevo</button>
                                </form>
                            </div>
                        </div>                                                        
                    </div>
                    <div id="menu1" class="tab-pane fade in active">
                        <h3>Consultar Producto</h3>
                        <div class="container">                                
                            <div class="well">
                                <form action="RProducto" id="consulta">                                    
                                    <div class="form-group">
                                        <label>Nombre:</label>
                                        <input type="text" class="form-control" placeholder="Nombre del producto" name="nombre">
                                    </div>  
                                    <div class="form-group">
                                        <label>Tipo de Producto:</label>
                                        <select class="form-control" id="sel1" name="tipo">
                                            <option value="null">Seleccione Tipo de producto....</option>
                                            <%
                                                mo2 = ges.getAllTypes();
                                                for (int x = 0; x < mo2.getRowCount(); x++) {
                                            %>
                                            <option value="<%=mo2.getValueAt(x, 0)%>"><%=mo2.getValueAt(x, 1)%></option>  
                                            <%
                                                }
                                            %>                                            
                                        </select>
                                    </div>    
                                    <button type="submit" class="btn btn-success">Consultar</button>
                                    <br>
                                    <br>
                                </form>
                                <form action="Mofidicar"> 
                                    <table class="table table-striped">
                                        <tr>
                                            <th>ID</th>
                                            <th>Nombre</th>
                                            <th>Cantidad</th>
                                            <th>Precio</th>
                                        </tr>
                                        <%
                                            if (request.getAttribute("Rproducts") == null) {
                                                GestionProducto gesp = new GestionProducto();
                                                DefaultTableModel pro = gesp.getAllProducts();
                                                for (int p = 0; p < pro.getRowCount(); p++) {
                                        %>                                                 
                                        <tr>
                                            <td ><%=pro.getValueAt(p, 0)%></td>
                                            <td><%=pro.getValueAt(p, 1)%></td>
                                            <td><%=pro.getValueAt(p, 3)%></td>
                                            <td><%=pro.getValueAt(p, 4)%></td>
                                            <td>
                                                <button type="submit" class="btn btn-success btn-xs" name="producto" value="<%=pro.getValueAt(p, 0)%>,1">Modificar</button>
                                                <button type="submit" class="btn btn-danger btn-xs" name="producto" value="<%=pro.getValueAt(p, 0)%>,2">Eliminar</button>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        } else {
                                            ArrayList<Producto> Rpro = (ArrayList<Producto>) request.getAttribute("Rproducts");
                                            for (Producto xxx : Rpro) {
                                        %>
                                        <tr>
                                            <td ><%=xxx.getIdProducto()%></td>
                                            <td><%=xxx.getName()%></td>
                                            <td><%=xxx.getQuantity()%></td>
                                            <td><%=xxx.getPrice()%></td>
                                             <td>
                                                <button type="submit" class="btn btn-success btn-xs" name="producto" value="<%=xxx.getIdProducto()%>,1">Modificar</button>
                                                <button type="submit" class="btn btn-danger btn-xs" name="producto" value="<%=xxx.getIdProducto()%>,2">Eliminar</button>
                                            </td>
                                        </tr>
                                        <%
                                                }
                                            }
                                        %>
                                    </table>
                                </form>
                            </div>
                        </div> 
                    </div>                    
                </div>
            </div>
        </div>
    </body>
</html>
