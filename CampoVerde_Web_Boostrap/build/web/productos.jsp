<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Campo Verde</title>
        <link href="css/productos.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <header style="background-image: url(img/productos.jpg)">
            <section>
                <div class="top-header">
                    <a href="index.jsp"><img class="form-group mb-4" src="img/logo-text-green.png" alt="70" width="330"/></a>
                    <nav class="navbar">
                        <ul>
                            <li><a style="text-decoration: none; color: white;" href="index.jsp">Inicio</a></li>
                            <li><a style="text-decoration: none; color: white;" href="nosotros.jsp">Nosotros</a></li>
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Dropdown button
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </div>
                            <li><a class="nav-link" href="controllerProducto?accion=Carrito"><i class="fas fa-cart-plus">(<label style="color: black">${contador}</label>)</i>Carrito</a></li>
                            <li><a style="text-decoration: none; color: white;" href="contacto.jsp">Contacto</a></li>
                            <li><a style="text-decoration: none; color: white;" href="#">Blog</a></li>
                        </ul><br>
                        <div class="login-icon">
                            <a href="login.jsp"><i class="fas fa-user"></i></a>
                        </div>
                    </nav>
                </div>
            </section>
        </header>
        <div class="container mt-4">
            <div class="row">
                <c:forEach var="p" items="${productos}">
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <label>${p.getNombres()}</label>
                            </div>
                            <div class="card-body">
                                <label>$. ${p.getPrecio()}</label>
                                <img src="ControllerIMG?id=${p.getId()}" width="200" height="180">
                            </div>
                            <div class="card-footer text-center">
                                <label>${p.getDescripcion()}</label>
                                <div >
                                    <a href="controllerProducto?accion=Agregar&id=${p.getId()}" class="btn btn-outline-info">Agregar carrito</a>
                                    <a href="controllerProducto?accion=Comprar&id=${p.getId()}" class="btn btn-danger">Comprar</a>
                                </div>
                            </div>
                        </div>
                    </div> 
                </c:forEach>
            </div>
        </div>

        <section class="main-content1">
            <h2>Nuestros productos</h2>
            <div class="product">
                <img src="img/certificacion4.jpg" alt="Producto Agrícola">
                <p>Productos Agrícolas</p>
            </div>
            <div class="product1">
                <img src="img/certificacion5.jpg" alt="Producto Ganadería">
                <p>Productos de Ganadería</p>
            </div>
        </section>

        <footer>
            <h2>Campo Verde</h2>
            <p>Ubicación</p>
            <nav class="navbar navbar-expand-lg">
                <ul>
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="nosotros.jsp">Nosotros</a></li>
                    <li><a href="productos.jsp">Productos</a></li>
                    <li><a href="contacto.jsp">Contacto</a></li>
                    <li><a href="#">Blog</a></li>
                </ul>
                <div class="social-media">
                    <a href="https://www.facebook.com/" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                    <a href="Twitter.com" target="_blank"><i class="fa-brands fa-twitter"></i></a>
                    <a href="https://www.instagram.com/" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                    <a href="https://www.tiktok.com/explore" target="_blank"><i class="fa-brands fa-tiktok"></i></a>
                </div>
            </nav>
            <p>Todos los derechos reservados 2024</p>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
                integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
                integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
    </body>

</html>
