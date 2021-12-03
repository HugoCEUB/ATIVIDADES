<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="styleLogin.css">
</head>
<body>
<form action="action_page.php" method="post">
  <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Usuário</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Senha</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit">Acessar</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Manter conectado</label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancelar</button>
    <span class="psw">Esqueceu a <a href="#">senha?</a></span>
  </div>
</form>
</body>
</html>