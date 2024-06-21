<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Campo Verde</title>
        <link href="css/nosotros.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="icon" href="img/logo-icono.png" type="image/x-icon">
    </head>

    <body>
        <header style="background-image: url(img/nosotros.jpg)">
            <section>
                <div class="top-header">
                    <a href="index.jsp"><img class="form-group mb-4" src="img/logo-text-green.png" alt="70" width="330"/></a>
                    <nav class="navbar">
                        <ul>
                            <li><a style="text-decoration: none; color: white;" href="index.jsp">Inicio</a></li>
                            <li><a style="text-decoration: none; color: white;" href="nosotros.jsp">Nosotros</a></li>
                            <li><a style="text-decoration: none; color: white;" href="productos.jsp">Productos</a></li>
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
        <main>

            <section class="content">
                <h2>Nosotros</h2>
                <div class="section" id="principios">
                    <h3>Nuestros principios organizacionales</h3>
                    <div class="info-block">
                        <img src="img/certificacion1.png" alt="Propósito">
                        <p>Texto sobre el propósito de la organización.</p>
                    </div>
                    <div class="info-block">
                        <img src="img/certificacion1.png" alt="Misión">
                        <p>Texto sobre la misión de la organización.</p>
                    </div>
                    <div class="info-block">
                        <img src="img/certificacion1.png" alt="Visión">
                        <p>Texto sobre la visión de la organización.</p>
                    </div>
                    <div class="info-block">
                        <img src="img/certificacion1.png" alt="Valores">
                        <p>Texto sobre los valores de la organización.</p>
                    </div>
                </div>
                <div class="section" id="politicas">
                    <h3>Nuestras políticas</h3>
                    <div class="info-block">
                        <img src="politica1.jpg" alt="Política 1">
                        <p>Descripción de la política 1.</p>
                    </div>
                    <div class="info-block">
                        <img src="politica2.jpg" alt="Política 2">
                        <p>Descripción de la política 2.</p>
                    </div>
                </div>
                <div class="section" id="certificaciones">
                    <h3>Nuestras Certificaciones</h3>
                    <div class="certificates">
                        <img src="img/certificacion4.jpg" alt="Certificación 1">
                        <img src="img/certificacion5.jpg" alt="Certificación 2">
                        <img src="img/certificacion6.jpg" alt="Certificación 3">
                    </div>
                </div>
            </section>
        </main>
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
