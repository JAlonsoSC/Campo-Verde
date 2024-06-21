<%-- 
    Document   : listaProductos
    Created on : 29 may. 2024, 15:50:52
    Author     : alons
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lista de Productos</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
                        <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                            Usuario Ingresado
                        </button>
                        <div class="dropdown-menu text-center">
                            <a class="dropdown-item" href="#">
                                <img src="img/6998118.png" alt="60" width="60"/>
                            </a>
                            <a class="dropdown-item" href="#">Usuario</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="login.jsp">Salir</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav> 
        
        
        
        
        
        
    </body>
</html>
