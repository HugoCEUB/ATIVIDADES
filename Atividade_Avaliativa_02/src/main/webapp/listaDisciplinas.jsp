<%@page import="java.util.List"%>
<%@page import="model.CadastrarDisciplinaNota"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Alunos</title>
<link rel="stylesheet" href="Style/styleLogin.css">
<link rel="stylesheet" href="Style/styleMenu.css">
</head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
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
	<table id="customers">
		<tr>
			<th>Nome</th>
			<th>Disciplina</th>
			<th>1° Nota</th>
			<th>2° Nota</th>
			<th>3° Nota</th>
			<th>4° Nota</th>
			<th>Situação</th>
		</tr>
		<%
		List<CadastrarDisciplinaNota> lista = (List<CadastrarDisciplinaNota>) request.getAttribute("lista");
		for (CadastrarDisciplinaNota cadastrarDisciplinaNota: lista){
		%>
		<tr>
			<td><%= cadastrarDisciplinaNota.getNomeAluno() %></td>
			<td><%= cadastrarDisciplinaNota.getDisciplina() %></td>
			<td><%= cadastrarDisciplinaNota.getNota1() %></td>
			<td><%= cadastrarDisciplinaNota.getNota2() %></td>
			<td><%= cadastrarDisciplinaNota.getNota3() %></td>
			<td><%= cadastrarDisciplinaNota.getNota4() %></td>
		</tr>
		<%
		}
		%>
		<br><br>
		<div class="navbar">
			<a href="ServletControlador">Voltar ao menu principal</a>
		</div>
	</table>
</body>
</html>