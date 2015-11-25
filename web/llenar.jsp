<%-- 
    Document   : llenar
    Created on : 23-nov-2015, 18:06:22
    Author     : SIM-12
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2> usuarios</h2>
        <form action="/usuarios/formulario/nuevo" method="POST">
            <fieldset>
                <legend>Datos del usuario:</legend>
                <div>
                    <label>Id: <input type="text" name="id"></label>
                </div>
                <div>
                    <label>Nombre: <input type="text" name="nombre"></label>
                </div>
                <div>
                    <label>Apellido: <input type="text" name="apellido"></label>
                </div>
                <div>
                    <label>Ciudad: <input type="text" name="ciudad"></label>
                </div>
                <div>
                    <label>Estado <input type="text" name="estado"></label>
                </div>
                <div>
                    <label>Caja: <input type="text" name="caja"></label>
                </div>
                <div>
                    <button type="submit">Guardar</button>
                </div>
            </fieldset>
        </form>
    </body>
</html>
