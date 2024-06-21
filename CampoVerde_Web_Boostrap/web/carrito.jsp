
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <link rel="icon" href="img/logo-icono.png" type="image/x-icon">

    </head>
    <body>
        <header>
            <div class="top-header">
                    <a href="index.jsp"><img class="form-group mb-4" src="img/logo-text-green.png" alt="70" width="330"/></a>
                <nav class="navbar">
                    <ul>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="nosotros.jsp">Nosotros</a></li>
                        <li><a>Productos</a></li>
                        <li><a class="nav-link" href="controllerProducto?accion=productos">Seguir comprando: </a></li>
                        <li><a href="contacto.jsp">Contacto</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul><br>
                    <div class="login-icon">
                        <a href="login.jsp"><i class="fas fa-user"></i></a>
                    </div>
                </nav>
            </div>
        </header>

        <div class="container mt-4">
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover" style="width: 85%; border-collapse: separate; border-spacing: 0 15px;">
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>Nombres</th>
                                <th>Descripción</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>Subtotal</th>
                                <th>Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="carr" items="${carrito}">
                                <tr>
                                    <td style="padding: 10px;">${carr.getItem()}</td>
                                    <td style="padding: 10px;">${carr.getNombre()}</td>
                                    <td style="padding: 10px;">${carr.getDescripcion()}
                                        <img src="ControllerIMG?id=${carr.getIdProducto()}" width="100" height="100">
                                    </td>
                                    <td style="padding: 10px;">${carr.getPrecioDeCompra()}</td>
                                    <td style="padding: 10px;">
                                        <input type="hidden" id="idpro" value="${carr.getIdProducto()}">
                                        <input type="number" id="cantidad" value="${carr.getCantidad()}" class="form-control text-center" min="1">
                                    </td>
                                    <td style="padding: 10px;">${carr.getSubtotal()}</td>
                                    <td style="padding: 10px;">
                                        <input type="hidden" id="idp" value="${carr.getIdProducto()}">
                                        <a href="#" id="btnDelete">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar Compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal:</label>
                            <input type="text" value="$. ${totalPagar}0" readonly="" class="form-control">
                            <label>Descuento:</label>
                            <input type="text" value="$. 0.00" readonly="" class="form-control">
                            <label>Pago Total:</label>
                            <input type="text" value="$. ${totalPagar}0" readonly="" class="form-control">
                        </div>
                        <div class="card-footer">
                            <a href="#" class="btn btn-info btn-block">realizar el pago:</a>
                            <a href="#" class="btn btn-danger btn-block">generar la compra:</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
                integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
                integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funtions.js" type="text/javascript"></script>
    </body>
</html>
