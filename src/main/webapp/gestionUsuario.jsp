<%@ page import="mx.edu.utez.pruebagit.dao.UserDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.pruebagit.model.User" %><%--
  Created by IntelliJ IDEA.
  User: milca
  Date: 21/06/2024
  Time: 12:47 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Nombre_usuario</th>
                <th>Correo</th>
                <th>Contraseña</th>
                <th>Actualizar</th>
                <th>Eliminar</th>
            </tr>
        </thead>
        <tbody>
            <%
                //Esta forma de buscar y poner información es la más rudimentaria
                UserDao dao = new UserDao();
                ArrayList<User> lista = dao.getAll(); // Estamos obteniedo la lista
                for(User u : lista){ %>
                    <tr>
                        <td><%=u.getUser_name()%></td>
                        <td><%=u.getEmail()%></td>
                        <td><%=u.getPass()%></td>
                        <td><a href="actualizarUsuario">Actualizar</a></td>
                        <td><a href="borrarUsuario">Borrar</a></td>
                    </tr>
                <% } %>
        </tbody>
    </table>
</body>
</html>
