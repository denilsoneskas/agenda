<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@	taglib tagdir="/WEB-INF/tags" prefix="agenda"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" http-equiv="pragma" content="no-cache">
<title>Adicionar Contato</title>
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link href="css/jquery-ui.css" rel="stylesheet">
<script	src="js/jquery.js"></script>
<script	src="js/jquery-ui.js"></script>
</head>
</head>
<body>
	<div class="container">
		<c:import url="cabecalho.jsp" />
		<h2>Adicionar Contato a Agenda</h2>
		<form action="adicionaContato">
			<div class="form-group">
	    		<input type="text" class="form-control" id="nome" aria-describedby="emailHelp" placeholder="Digite o Nome do Contato" name="nome" required>
	    		<small id="nomeHelp" class="form-text text-muted">Digite Nome e sobrenome.</small>
	  		</div>
			<div class="form-group">
	    		<input type="text" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Digite o Email do Contato" name="email">
	    		<small id="emailHelp" class="form-text text-muted">Digite o email exemplo: email@email.com</small>
	  		</div>
			<div class="form-group">
	    		<input type="text" class="form-control" id="endereco" aria-describedby="emailHelp" placeholder="Digite o Endereço do Contato" name="endereco">
	    		<small id="enderecoHelp" class="form-text text-muted">Digite o Endereco exemplo: Rua das Flores, 89.</small>
	  		</div>
			<div class="form-group">
	    		<agenda:campoData id="dataNascimento" />
	    		<small id="dataNascimentoHelp" class="form-text text-muted">Digite a data de Nascimento exemplo: dd/mm/aaaa.</small>
	  		</div>
			<input class="btn btn-primary" type="submit" value="Gravar" />
		</form>
		<br>
		<a href="index.jsp"><button class="btn btn-primary">Voltar o Index</button></a>
		<c:import url="rodape.jsp" />
	</div>
	<footer>
		<script src="js/jquery.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</footer>
</body>
</html>