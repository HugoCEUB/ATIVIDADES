<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dados do aluno</title>
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
	<p>Preencha seus dados pessoais:</p>
	<form action="ServletControlador" method="post">
		<div class="container">
		<input type="hidden" name="acao" value="confirmarCadastro"><br>
		Nome: <input type="text" name="nomeAluno"><br>
		Disciplina: <input type="text" name="disciplina"><br>
		Nota 1: <input type="text" name="nota1"><br>
		Nota 2: <input type="text" name="nota2"><br>
		Nota 3: <input type="text" name="nota3"><br>
		Nota 4: <input type="text" name="nota4"><br>
		<button type="submit">Cadastrar</button>
		</div>
	</form>
	<br><br>
	<div class="navbar">
		<a href="ServletControlador">Voltar ao menu principal</a>
	</div>
</body>
</html>