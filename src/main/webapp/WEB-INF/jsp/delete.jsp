<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Delete Mascota</title>
	</head>
	<body>
		<h1>Delete Mascota</h1>
		
		<form:form action="/doDelete" modelAttribute="mascota" method="post">
			<p>Id: <form:input type="text" readonly="true" path="id"/></p>
			<p>Especie: <form:input type="text" readonly="true" path="especie"/></p>
			<p>Nombre: <form:input type="text" readonly="true" path="nombre"/></p>
			<p><input type="submit" value="Delete"/></p>
		</form:form>
	</body>
</html>