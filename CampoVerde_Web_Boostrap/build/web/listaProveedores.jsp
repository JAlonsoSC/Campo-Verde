<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="controladores.listaProveedores"%>
<%@ page import="java.util.List" %>
<%@ page import="modelos.Proveedor"%>
<%@ page import="DAO.ProveedorDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lista de Proveedores</title>
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

        <main>
            <div class="col-sm-12 col-md-8 mt-5">
                <h2 class="mb-5 mr-5">Lista de Proveedores</h2>

                <table class="table table-hover mr-5">
                    <thead>
                        <tr>
                            <th>ID Proveedor</th>
                            <th>Nombre</th>
                            <th>Nombre de la Empresa</th>
                            <th>RUC</th>
                            <th>Teléfono</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                        try {
                            DAO.ProveedorDAO proveedorDAO = new DAO.ProveedorDAO();
                            java.util.List<modelos.Proveedor> listaProveedores = proveedorDAO.listaProveedor();
                            for (modelos.Proveedor proveedor : listaProveedores) {
                        %>
                        <tr>
                            <td><%= proveedor.getIDproveedor() %></td>
                            <td><%= proveedor.getnombre() %></td>
                            <td><%= proveedor.getnombreEmpresa() %></td>
                            <td><%= proveedor.getruc() %></td>
                            <td><%= proveedor.gettelefono() %></td>
                        </tr>
                        <% 
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

    </body>
</html>
