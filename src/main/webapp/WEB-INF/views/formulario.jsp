<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo</title>
<style>
body {
	display: flex;
	justify-content: center;
	margin: 0 auto;
	align-items: center;
	width: 100vh;
	height: 100vh;
}

#form {
	padding: 100px;
	font-size: 25px;
	background: #f3f3f3;
}
</style>
</head>
<body>

	<form:form id="form" method="POST" modelAttribute="currency"
		action="formulario">
		<p>Valor em dolar:</p>
		<form:input path="value" />

		<form:button>Enviar</form:button>

		<p>Valor em real: R$ ${mensagem}</p>
	</form:form>

</body>
</html>