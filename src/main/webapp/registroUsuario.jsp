<%--
  Created by IntelliJ IDEA.
  User: milca
  Date: 18/06/2024
  Time: 12:26 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="sign_in">
    <label>Ingrese su nombre de usuario: </label>
    <input type="text" name="user_name">
    <br>
    <label>Ingrese su contraseña: </label>
    <input type="password" name="pass1">
    <br>
    <label>Ingrese su contraseña nuevamente: </label>
    <input type="password" name="pass2">
    <br>
    <label>Ingrese su correo: </label>
    <input type="email" name="email">
    <br>
    <input type="submit" value="Registrarse">
</form>
</body>
</html>
