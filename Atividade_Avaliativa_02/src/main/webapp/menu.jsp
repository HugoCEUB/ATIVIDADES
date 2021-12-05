<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<link rel="stylesheet" href="Style/styleLogin.css">
<link rel="stylesheet" href="Style/styleMenu.css">
</head>
<body>
<%
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("autentica.jsp");
	}
%>
<header>
	<jsp:include page="header.jsp">
		<jsp:param value="Professor" name="uname"/>
	</jsp:include>
</header>
<div class="navbar">
  <a class="active" href="autentica.jsp">Home</a>
  <a href="ServletControlador?acao=listar">Consultar disciplinas e notas</a>
  <a href="ServletControlador?acao=cadastroDisciplina">Cadastrar disciplina e nota</a>
</div>
<form class="container" action="Logout">
	<input type="submit" value="Logout">
</form>
</body>
</html>