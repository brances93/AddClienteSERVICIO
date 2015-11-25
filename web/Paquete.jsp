<%-- 
    Document   : Paquete
    Created on : 17/11/2015, 09:28:56 PM
    Author     : JAIR Y BRACES
--%>

<%@page import="Modelo.Paquete"%>
<%@page import="Datos.PaqueteRepositorios"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PAQUETE DE ENVIO</title>
    <link href="WEB-INF/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>

    <body>
<header class="clase-gener">     
 <h1>Listado de Paquetes</h1>    
    <ul class="nav nav-tabs">
      <li><a href="index.html">Principal</a></li>
      <li class="active"><a href="Persona.jsp">Lista de Personas</a></li>
       <li class="active"><a href="Paquete.jsp">Paquete</a></li>
      <li class="active" ><a href="PaqueteNoche.jsp">Paquete Noche</a></li>
      <li class="active" ><a href="PaqueteOrdinario.jsp">Paquetes Ordinarios</a></li>
      <li class="active"><a href="Dos_DiasPaquete.jsp">Dias para enviar el paquete</a></li>
    </ul>
</header>

        
        <% PaqueteRepositorios data =  new PaqueteRepositorios(); %>

            <div class="row clearfix">
              <div class="col-md-12">
                    
                    
                
            <table class="table-responsive table-striped table" >
                <tr>
                    
                    <th>Codigo</th>
                    <th>Remitente</th>
                    <th>Destinatario</th> 
                    <th>Peso</th>
                    <th>Costo</th>
                
                </tr>


                <% for (Paquete c: data.getPaquete()) {%>
                <tr>
                    <td><%=c.getClass().getSimpleName()%></td>
                    <td><%=c.getCodigo()%></td>
                    <td><%=c.getRemitente()%></td> 
                    <td><%=c.getDestinatarios() %></td> 
                    <td><%=c.getPeso() %></td> 
                    <td><%=c.getCosto() %></td> 
                </tr>
          <%}%>
 
          
            </table> 
          </div>
          </div> 
  

    <script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>