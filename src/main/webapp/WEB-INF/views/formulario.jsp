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
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	padding: 100px;
	font-size: 25px;
	background: #f3f3f3;
}
</style>
</head>
<body>

	<form:form id="form" method="POST" modelAttribute="currency"
		action="formulario">

		<p>Valor em Euro:</p>
		<form:input id="euro" onkeydown="clearYenInput()" placeholder="€ 0.00"
			path="euro" value="${euro}" />

		<p>Valor em Iene:</p>
		<form:input id="yen" onkeydown="clearEuroInput()" placeholder="¥ 0.00"
			path="yen" value="${yen}" />

		<hr />

		<form:button>Converter</form:button>
	</form:form>


</body>
<script>
	function clearYenInput() {
		const yenInput = document.getElementById('yen');
		if (yen.value) {
			yen.value = "";
		}
	}
	function clearEuroInput() {
		const euroInput = document.getElementById('euro');
		if (euro.value) {
			euro.value = "";
		}
	}
</script>
</html>