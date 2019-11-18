<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" http-equiv="pragma" content="no-cache">
<title>Agenda do Denilson - Estudos para JavaWeb</title>
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
</head>
<body>
	<div class="container">
		<c:import url="cabecalho.jsp" />
		<h2>Opções de utilização</h2><br>
		<a href="adiciona-contato.jsp"><button class="btn btn-primary">Adicionar Contato</button></a> <br> <br>
		<a href="mvc?logica=ListaContatosLogic"><button class="btn btn-primary">Listar contatos</button></a> <br>
		<br>
		<c:import url="rodape.jsp" />
	</div>
	<footer>
		<script src="js/jquery.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</footer>
</body>
</html>