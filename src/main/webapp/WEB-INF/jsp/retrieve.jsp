<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Retrieve Mascota</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
    	<h1>Mascotas existentes</h1>
    	<a href="/create">Create</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Especie</th>
                    <th>Nombre</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${mascotas}" var="mascota">
                    <tr>
                        <td>${mascota.id}</td>
                        <td>${mascota.especie}</td>
                        <td>${mascota.nombre}</td>
						<td>
							<a href="/update/${mascota.id}">Update</a>
							<a href="/delete/${mascota.id}">Delete</a>
						</td>                        
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>