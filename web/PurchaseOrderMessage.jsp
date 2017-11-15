<%-- 
    Document   : PurchaseOrderMessage
    Created on : 9/11/2017, 12:11:59 AM
    Author     : JORDAN
--%>

<%@page import="Model.Factura"%>
<%@page import="Model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Purchase Message</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="js/shop1.js"></script>
    </head>   
    <script>
$(document).ready(function(){
    
        $("#myModal").modal();
    
});
</script>
    <body>
        <%
            if(request.getAttribute("mensaje").equals("No hay productos en el carro de compras") || request.getAttribute("mensaje").equals("El cliente no se encuentra en la base de datos"))
            {
                %>            
       <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" onClick="window.location.href='Shop.jsp'">&times;</button>
          <h4 class="modal-title">Mensaje</h4>
        </div>
        <div class="modal-body">
          <h3><%=request.getAttribute("mensaje")%></h3>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" onClick="window.location.href='Shop.jsp'">Close</button>
        </div>
      </div>
      
    </div>
  </div>        
          <%
              }else
{
%>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            <button type="submit" class="close" data-dismiss="modal" onclick="document.terminar.submit()">&times;</button>
          <h4 class="modal-title">Detalles de compra</h4>
        </div>
        <div class="modal-body">
            <h3><%=request.getAttribute("mensaje")%></h3>
            <div class="well">
                <h5>Informacion del cliente</h5>
                <%
                    Cliente cli = (Cliente) request.getAttribute("cli");
                    %>
                    <h6><%=cli.getIdClient()%></h6>
                    <h6><%=cli.getName()%></h6>
                    <h6><%=cli.getDocument()%></h6>
            </div>
            <div class="well">
                <h5>Informacion del cliente</h5>
                <%
                    Factura fac = (Factura) request.getAttribute("fac");
                    %>
                    <h6>Medio Pago: <%=fac.getId_mediopago()%></h6>
                    <h6>Fecha:      <%=fac.getFecha()%></h6>
                    <h6>Total:      <%=fac.getTotal()%></h6>
                    <h6>Impuesto:   <%=fac.getImpuesto()%></h6>
                    
            </div>
            <%
                                int y = 0;
                                ArrayList<Producto> productsShop = null;
                                if (request.getSession().getAttribute("productsShop") == null) {
                                    y = 0;
                                    request.getSession().setAttribute("productsShop", null);
                                } else {
                                    productsShop = (ArrayList<Producto>) request.getSession().getAttribute("productsShop");                                    
                                    y = productsShop.size();
                                }


                            %>
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
                                            if (productsShop == null) {

                                            } else {
                                                for (Producto xxx : productsShop) {
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
        <div class="modal-footer">        
            <form action="TerminarCompra" method="post" name="terminar">
                <button type="submit" class="btn btn-success" data-dismiss="modal" onclick="document.terminar.submit()">Aceptar</button>
            </form>
        </div>
      </div>
      
    </div>
  </div> 
       <%
           }
%>
    </body>
</html>
