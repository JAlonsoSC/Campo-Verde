<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%@page import="modelos.Usuario"%>
<%@page import="controladores.listaUsuario"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page import="controladores.registroUsuario"%>
<%@page import="controladores.listaUsuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lista de clientes</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="icon" href="img/logo-icono.png" type="image/x-icon">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="container-fluid">
                <a class="navbar-brand" href="principal.jsp">Campo Verde</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="principal.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Empleado_lista.jsp">Lista de Empleados</a>
                        </li>
                        <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="listaUsuario.jsp">Lista de Usuarios</a>
                        </li>
                        <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="listaProveedores.jsp">Lista de Proveedores</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Productos
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Productos Agrícolas</a></li>
                                <li><a class="dropdown-item" href="#">Productos Ganaderos</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="dropdown">
                        <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" >
                            <%= session.getAttribute("nombre") != null ? session.getAttribute("nombre") : "Usuario Ingresado" %>
                        </button>
                        <div class="dropdown-menu text-center">
                            <a class="dropdown-item" href="#">
                                <img src="img/6998118.png" alt="60" width="60"/>
                            </a>
                            <a class="dropdown-item" href="#"><%= session.getAttribute("empleado") != null ? session.getAttribute("empleado") : "Usuario Ingresado" %></a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="login.jsp">Salir</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>  

        <div class="col-sm-12 col-md-8 mt-5">
            <h2 class="mb-5 mr-5">Lista de Usuarios Registrados</h2>

            <table class="table table-hover mr-5">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre Completo</th>
                        <th>Apellido</th>
                        <th>Correo Electrónico</th>
                        <th>Contraseña</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        UsuarioDAO usuarioDAO = new UsuarioDAO();
                        List<Usuario> listaUsuario = null;
                        try {
                            listaUsuario = usuarioDAO.listaUsuario();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        if (listaUsuario != null) {
                            for (Usuario usuario : listaUsuario) {
                    %>
                    <tr>
                        <td><%= usuario.getUserID() %></td>
                        <td><%= usuario.getnombreCompleto() %></td>
                        <td><%= usuario.getapellido() %></td>
                        <td><%= usuario.getcorreo() %></td>
                        <td><%= usuario.getcontrasena() %></td>
                    </tr>
                    <%
                            }
                        }
                    %>
                </tbody>
                </tbody>
            </table>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>    
    </body>
</html>


