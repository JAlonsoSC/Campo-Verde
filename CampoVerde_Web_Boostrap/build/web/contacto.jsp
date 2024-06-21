<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Campo Verde</title>
        <link href="css/contacto.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="icon" href="img/logo-icono.png" type="image/x-icon">
    </head>

    <body>
        <header style="background-image: url(img/contacto.jpg)">
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

        <div class="main-content">
            <h1 class="subtitle">Contacto</h1>
            <h2 class="subtitle">Ponte en contacto con Nosotros</h2>
            <h3 class="subtitle">¿Tienes alguna duda? ó ¿Quieres saber sobre nuestros productos?</h3>
            <div>
                <input class="text-input" type="text" placeholder="Nombres" />
                <input class="text-input" type="text" placeholder="Teléfono" />
                <input class="text-input" type="text" placeholder="Email" />
                <input class="text-input" type="text" placeholder="Empresa" />
                <input class="text-input" type="text" placeholder="Productos" />
                <input class="text-input" type="text" placeholder="Ciudad" />
                <fieldset class="text-input">
                    <legend>Comentario</legend>
                    <textarea class="text-input" style="height: 100px;"></textarea>
                </fieldset>
                <div>
                    <input type="checkbox" /> Acepto los términos y condiciones
                </div>
                <button class="button">Enviar</button>
            </div>
            <div class="map">
                <!-- Aquí se insertaría el mapa -->
            </div>
            <div>
                <div class="icon" style="background: url('path/to/location-dot-regular.png') no-repeat;"></div>
                <span>Dirección</span>
            </div>
            <div>
                <div class="icon" style="background: url('path/to/phone-volume-regular.png') no-repeat;"></div>
                <span>Teléfono</span>
            </div>
            <div>
                <div class="icon" style="background: url('path/to/envelope-regular.png') no-repeat;"></div>
                <span>Correo electrónico</span>
            </div>
        </div>


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