<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="Style/styleLogin.css">
<link rel="stylesheet" href="Style/styleMenu.css">
<script src="script.js"></script>
</head>
<body>
<form action="Login" method="get">
  <div class="container">
    <label for="uname"><b>Usuário</b></label>
    <input type="text" name="uname" required>

    <label for="psw"><b>Senha</b></label>
    <input type="password" name="psw" required>

    <button type="submit">Acessar</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Manter conectado</label>
  </div>
</form>
</body>
</html>