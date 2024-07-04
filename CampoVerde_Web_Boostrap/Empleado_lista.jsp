<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List"%>
<%@ page import="modelos.Empleado"%>
<%@ page import="DAO.EmpleadoDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lista de Empleados</title>
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

        <div class="container-fluid">
            <div class="row">
                <div class="card col-sm-12 col-md-3 mb-3">
                    <div class="card-body">
                        <form action="controlador" method="post">
                            <div class="form-group mb-4">
                                <label for="Dni">Dni</label>
                                <input type="text" id="Dni" value="${empty param.Dni ? '' : param.Dni}" name="Dni" class="form-control" required pattern="\d+">
                            </div>
                            <div class="form-group mb-4">
                                <label for="Nombres">Nombres</label>
                                <input type="text" id="Nombres" value="${empty param.Nombres ? '' : param.Nombres}" name="Nombres" class="form-control" required>
                            </div>
                            <div class="form-group mb-4">
                                <label for="Telefono">Telefono</label>
                                <input type="text" id="Telefono" value="${empty param.Telefono ? '' : param.Telefono}" name="Telefono" class="form-control" required pattern="\d+">
                            </div>
                            <div class="form-group mb-4">
                                <label for="correo">Correo:</label>
                                <input type="email" id="Correo" value="${empty param.Correo ? '' : param.Correo}" name="Correo" class="form-control" required>
                            </div>
                            <div class="form-group mb-4">
                                <label for="cargo">Cargo: </label>
                                <input type="text" id="Cargo" value="${empty param.Cargo ? '' : param.Cargo}" name="Cargo" class="form-control" required>
                            </div>
                            <div class="form-group mb-4">
                                <label for="User">Usuario</label>
                                <input type="text" id="User" value="${empty param.User ? '' : param.User}" name="User" class="form-control" required>
                            </div>
                            <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        </form>
                    </div>                  
                </div>

                <div class="col-sm-12 col-md-9">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>DNI</th>
                                <th>NOMBRES</th>
                                <th>TELEFONO</th>
                                <th>CORREO</th>
                                <th>CARGO</th>
                                <th>USUARIO</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead> 
                        <tbody>
                            <%
                                 EmpleadoDAO empleadoDAO = new EmpleadoDAO();
                                 List<Empleado> listarEmpleados = empleadoDAO.listarEmpleado();
                                 for (Empleado empleado : listarEmpleados) {
                            %>
                            <tr>
                                <td><%= empleado.getDni() %></td>
                                <td><%= empleado.getNombres() %></td>
                                <td><%= empleado.getTelefono() %></td>
                                <td><%= empleado.getCorreo() %></td>
                                <td><%= empleado.getCargo() %></td>
                                <td><%= empleado.getUser() %></td>
                                <td>
                                    <div>
                                        <a href="controlador?accion=Editar&IdEmpleado=<%= empleado.getIdEmpleado() %>" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal<%= empleado.getIdEmpleado() %>">Editar</a>

                                        <!-- Modal para editar empleado -->
                                        <div class="modal fade" id="exampleModal<%= empleado.getIdEmpleado() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Editar Empleado</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form action="controlador?accion=Actualizar&IdEmpleado=<%= empleado.getIdEmpleado()%>" method="post">
                                                            <input type="hidden" name="accion" value="Actualizar">
                                                            <input type="hidden" name="IdEmpleado" value="<%= empleado.getIdEmpleado() %>">
                                                            <div class="form-group mb-4">
                                                                <label for="Dni<%= empleado.getIdEmpleado() %>">DNI</label>
                                                                <input type="text" id="Dni<%= empleado.getIdEmpleado() %>" value="<%= empleado.getDni() %>" name="Dni" class="form-control" required pattern="\d+">
                                                            </div>
                                                            <div class="form-group mb-4">
                                                                <label for="Nombres<%= empleado.getIdEmpleado() %>">Nombres</label>
                                                                <input type="text" id="Nombres<%= empleado.getIdEmpleado() %>" value="<%= empleado.getNombres() %>" name="Nombres" class="form-control" required>
                                                            </div>
                                                            <div class="form-group mb-4">
                                                                <label for="Telefono<%= empleado.getIdEmpleado() %>">Teléfono</label>
                                                                <input type="text" id="Telefono<%= empleado.getIdEmpleado() %>" value="<%= empleado.getTelefono() %>" name="Telefono" class="form-control" required pattern="\d+">
                                                            </div>
                                                            <div class="form-group mb-4">
                                                                <label for="correo<%= empleado.getIdEmpleado() %>">Correo:</label>
                                                                <input type="email" id="Correo<%= empleado.getIdEmpleado() %>" value="<%= empleado.getCorreo() %>" name="Correo" class="form-control" required>
                                                            </div>
                                                            <div class="form-group mb-4">
                                                                <label for="cargo<%= empleado.getIdEmpleado() %>">Cargo: </label>
                                                                <input type="text" id="Cargo<%= empleado.getIdEmpleado() %>" value="<%= empleado.getCargo() %>" name="Cargo" class="form-control" required>
                                                            </div>
                                                            <div class="form-group mb-4">
                                                                <label for="User<%= empleado.getIdEmpleado() %>">Usuario</label>
                                                                <input type="text" id="User<%= empleado.getIdEmpleado() %>" value="<%= empleado.getUser() %>" name="User" class="form-control" required>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                                <button type="submit" class="btn btn-success">Actualizar</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <a href="controlador?accion=Eliminar&IdEmpleado=<%= empleado.getIdEmpleado() %>" class="btn btn-danger">Eliminar</a>
                                    </div>
                                </td>
                            </tr>
                            <%
                                 }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    </body>
</html>
