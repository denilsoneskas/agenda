<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<%--	comentário em JSP aqui: nossa primeira página JSP --%>
	<%
		String mensagem = "Bem vindo ao sistema de agenda do Denilson!";
	%>
	<%
		out.println(mensagem);
	%>
	<br />
	<%
		String desenvolvido = "Desenvolvido por	(Denilson Martins)";
	%>
	<%=desenvolvido%>
	<br />
	<%
		System.out.println("Tudo foi executado!");
	%>
</body>
</html>
