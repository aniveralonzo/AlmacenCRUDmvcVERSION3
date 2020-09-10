<%-- 
    Document   : editar
    Created on : 4/09/2020, 20:19:37
    Author     : 50232
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Crud</title>
    </head>
    <body>
        <div class="container mt-4  col-lg-4">
            <div class="card border-info">
                <h4>Actualizar Registro</h4>                
            </div>  
            <div class="card-body">
                <form method="POST">
                    <label>Nombre Comercial </label>
                    <input type="text" name="nombrecomercial" class="form-control" value="${lista[0].nombrecomercial}">
                    <label>Contacto </label>
                    <input type="text" name="contacto" class="form-control" value="${lista[0].contacto}">
                    <label>Direccion </label>
                    <input type="text" name="direccion" class="form-control" value="${lista[0].direccion}">
                    <label>Email </label>
                    <input type="text" name="email" class="form-control" value="${lista[0].email}">
                    <label>Pais </label>
                    <input type="text" name="pais" class="form-control" value="${lista[0].pais}"><br>

                    <input type="submit" name="Actualizar" class="btn btn-success">
                    <a href="index.htm">Regresar</a>
                </form>
            </div>
        </div>

    </body>
</html>
