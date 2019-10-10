<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" http-equiv="pragma" content="no-cache">
<title>Mostrar contatos salvos</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
</head>
<body>
	<!--	cria	o	DAO	-->
	<jsp:useBean id="dao" class="agenda.jdbc.dao.ContatoDao" />
	<div class="container">
		<c:import url="cabecalho.jsp" />
		<table	class="table table-condensed table-striped table-bordered table-hover">
			<th>Contato</th>
			<th>Email</th>
			<th>Endereço</th>
			<th>Data de Nascimento</th>
			<th>Ação</th>
			<!--	percorre	contatos	montando	as	linhas	da	tabela	-->
			<c:forEach var="contato" items="${dao.lista}">
				<tr>
					<td>${contato.nome}</td>
					<td>
						<c:if test="${not empty	contato.email}">
							${contato.email}
						</c:if>
						<c:if	test="${empty contato.email}">
							E-mail não informado
						</c:if>
					</td>
					<td>
						<c:if test="${not empty	contato.endereco}">
							${contato.endereco}
						</c:if>
						<c:if	test="${empty contato.endereco}">
							Endereço não informado
						</c:if>
					</td>
					<td>
						<fmt:formatDate	value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>
					</td>
					<td>
						<a href="mvc?logica=RemoveContatoLogica&id=${contato.id}">Remover</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<a href="index.jsp"><button class="btn btn-primary">Voltar o Index</button></a>
		<a href="adiciona-contato.jsp"><button class="btn btn-primary">Adicionar Contato</button></a>
		<c:import url="rodape.jsp" />
	</div>
	<footer>
		<script src="js/jquery.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</footer>
</body>
</html>