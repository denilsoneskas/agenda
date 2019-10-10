<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Primeira Lógica</title>
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link href="css/jquery-ui.css" rel="stylesheet">
<script	src="js/jquery.js"></script>
<script	src="js/jquery-ui.js"></script>
</head>
<body>
	<div class="container">
		<c:import url="cabecalho.jsp" />
		Primeira lógica feita para MVC, ideia semelhante ao index	
		Selecione uma das opções abaixo: </br>
		<a href="index.jsp"><button class="btn btn-primary">Voltar Index</button></a>
		<a href="adiciona-contato.jsp"><button class="btn btn-primary">Adicionar Novo Contato</button></a>
		<a href="listar-contatos.jsp"><button class="btn btn-primary">Listar contatos</button></a>
		<c:import url="rodape.jsp" />
	</div>
</body>
</html>