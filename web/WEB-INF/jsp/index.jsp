<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Crud</title>
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a href="agregar.htm">Nuevo registro</a>                
                </div>                
                <div class="card-body">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRE COMERCIAL</th>
                                <th>CONTACTO </th>
                                <th>DIRECCION</th>
                                <th>EMAIL </th>
                                <th>PAIS</th>

                                <th>acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.id}</td>
                                <td>${dato.nombrecomercial}</td>
                                <td>${dato.contacto}</td>
                                <td>${dato.direccion}</td>
                                <td>${dato.email}</td>
                                <td>${dato.pais}</td>
                                <td>
                                    <a href="editar.htm?id=${dato.id}">Editar</a>
                                    <a href="delete.htm?id=${dato.id}" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>    
                        </tbody>
                    </table>

                </div>
            </div>                        
        </div>
    </body>

</html>
