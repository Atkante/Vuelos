<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Reservas</title>
        <meta name="author" content="chiphysi" />
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">

        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/modernizr-2.6.2.min.js"></script>


    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            if (sesion.getAttribute("logueado") == null || sesion.getAttribute("logueado").equals("0")) {
                response.sendRedirect("LoginUsuarios.jsp");
            }

        %>

        <div class="gtco-loader"></div>

        <div id="page">


            <nav class="gtco-nav" role="navigation">
                <div class="gtco-container">

                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <div id="gtco-logo"><a href="index.html">SkyRoute</em></a></div>
                        </div>
                        <div class="col-xs-8 text-right menu-1">
                            <ul>
                                <li><a href="loginC.jsp">Inicio</a></li>
                                <li><a href="reserva.jsp">Reserva</a></li>
                                <li><a href="contactos.jsp">Contactos</a></li>
                                <li><a><form class="form-inline" action="logout.jsp"></a></li>
                                <a href="datosUsuario.jsp"><i class="fa fa-user-circle" aria-hidden="true"></i><%=sesion.getAttribute("user")%></a>
                                <button class="btn btn-outline-danger my-2 my-sm-0 ml-2 " type="submit">Log out</button>
                                </form>
                            </ul>
                        </div>
                    </div>

                </div>
            </nav>

            <header id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(images/img_bg_2.jpg)">
                <div class="overlay"></div>
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-12 col-md-offset-0 text-left">


                            <div class="row row-mt-10em">
                                <div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
                                    <h1><center>Aqui podras ver detalladamente los vuelos que tengas reservado</BR></h1>	
                                </div>
                            </div>
                            <center>



                                <div class="row">


                                    <div class="span12">

                                        <div class="caption">

                                            <div class="well well-small btn btn-primary"  >
                                                <div style="text-align: center;"><h2> Reservas registradas</h2>	</div>
                                                <hr class="soft"/>
                                                <div class="row-fluid">



                                                    <center>
                                                        <a href="mostrarRese.jsp" class="btn btn-danger">Mostrar Reserva <i class="fa fa-ban" aria-hidden="true"></i></a>

                                                    <br>
                                                    <br>
                                                    <br>	

                                                    <center>
                                                        <!-- <button class="btn btn"><a href="admin.php"><font size="4"  face="Showcard Gothic" color="0D6BCE" >Volver</font></a></button> -->
                                                    </center>	  


                                                    <div class="span8">



                                                    </div>	
                                                </div>	
                                                <br/>


                                            </div>






                                        </div>

                                    </div>
                                </div>











                            </center>												

                        </div>
                    </div>
                </div>
            </header>


            <!-- <footer id="gtco-footer" role="contentinfo">
                    <div class="gtco-container">
    
                            <div class="row copyright">
                                    <div class="col-md-12">
                                            <p class="pull-left">
                                                    <small class="block">&copy; 2018</small> 
                                                    <small class="block">SISTEMA RESERVAS AVIÃN <a href="https://www.facebook.com/jhonatan.cardona.9237" target="_blank">Chiphysi Programacion</a></small>
                                            </p>
                                            <p class="pull-right">
                                                    <ul class="gtco-social-icons pull-right">
                                                            <li><a href="https://www.youtube.com/channel/UC87BrnQy7Y6iipGvQ6sAJfQ"><i class="icon-twitter"></i></a></li>
                                                            <li><a href="https://www.facebook.com/jhonatan.cardona.9237"><i class="icon-facebook"></i></a></li>
                                                            <li><a href="https://www.youtube.com/channel/UC87BrnQy7Y6iipGvQ6sAJfQ"><i class="icon-linkedin"></i></a></li>
                                                            <li><a href="https://www.youtube.com/channel/UC87BrnQy7Y6iipGvQ6sAJfQ"><i class="icon-dribbble"></i></a></li>
                                                    </ul>
                                            </p>
                                    </div>
                            </div>
    
                    </div>
            </footer> -->


        </div>

        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
        </div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.countTo.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/magnific-popup-options.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>

