<%-- 
    Document   : Paquete
    Created on : 17/11/2015, 09:28:56 PM
    Author     : JAIR Y BRACES
--%>
<%@page import="Modelo.Persona"%>
<%@page import="Datos.PersonaRepositorio"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>PERSONA QUE ENVIA</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <header class="clase-general">
            <h1>Listado de Paquetes</h1>    
            <ul class="nav nav-tabs">
                <li><a href="index.html">Principal</a></li>
                <li class="active"><a href="Persona.jsp">Lista de Personas</a></li>
                <li class="active"><a href="Paquete.jsp">Paquete</a></li>
                <li><a href="PaqueteNoche.jsp">Paquete Noche</a></li>
                <li><a href="PaqueteOrdinario.jsp">Paquetes Ordinarios</a></li>
                <li><a href="Dos_DiasPaquete.jsp">Dias para enviar el paquete</a></li>
            </ul>
        </header>

        
        <% PersonaRepositorio gente = new PersonaRepositorio(); %>

        <div class="row clearfix">
            <div class="col-md-12">



                <table class="table-responsive table-striped table" >
                    <tr>

                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Ciudad</th> 
                        <th>Estado</th>
                        <th>Caja</th>

                    </tr>


                    <% for (Persona c : gente.getgente()) {%>
                    <tr>
                        <td><%=c.getClass().getSimpleName()%></td>
                        <td><%=c.getNombre()%></td>
                        <td><%=c.getApellidos()%></td> 
                        <td><%=c.getCiudad()%></td> 
                        <td><%=c.getEstado()%></td> 
                        <td><%=c.getCaja()%></td> 
                    </tr>
                    <%}%>


                </table> 
            </div>
        </div> 


        <script src="bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>