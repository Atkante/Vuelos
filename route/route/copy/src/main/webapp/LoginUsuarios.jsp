<%@page import="java.sql.*"%>
<%@page import="Utils.Encriptar" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <!-- Favicons -->
        <link href="images/favicon-32x32.png" rel="icon">
        <link href="assets/favicon-32x32.jpg" rel="apple-touch-icon">
        <!--End Favicon-->
        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="assetsL/css/login.css">
        <title>Login</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <img src="images/Logo.jpg" alt="login" class="login-card-img">
                    <form method="post" accion="login.jsp">
                        <div class="container mt-5">
                            <div class="row">
                                <div class="col-sm">
                                    <div class="form-group">
                                        <label>Correo</label>
                                        <input type="text" class="form-control" name="user" placeholder="Usuario">
                                    </div>
                                    <div class="form-group">
                                        <label>Contraseña</label>
                                        <input type="password" class="form-control" name="password" placeholder="contraseña">
                                    </div>
                                    <button type="submit" class="btn btn-primary" name="login">Login</button>
                                    <a href="index.html" class="btn btn-danger">Cancelar</a>
                                    </form>
                                    <a href="#!" class="forgot-password-link">¿Olvidaste tu contraseña?</a>
                                    <p class="login-card-footer-text">¿Aun no tiene cuenta? <a href="registro.jsp" class="text-reset"> Registrate aqui.</a></p>
                                    <!-- <nav class="login-card-footer-nav">
                                      <a href="#!">Terms of use.</a>
                                      <a href="#!">Privacy policy</a>
                                    </nav> -->
                                        <%
                                            Connection con = null;
                                            Statement st = null;
                                            ResultSet rs = null;
                                            Encriptar enc = new Encriptar();
                                            if (request.getParameter("login") != null) {
                                                String user = request.getParameter("user");
                                                String password = request.getParameter("password");
                                                HttpSession sesion = request.getSession();
                                                try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    con = DriverManager.getConnection("jdbc:mysql://localhost/mysky?user=root&password=123456");
                                                    st = con.createStatement();
                                                    rs = st.executeQuery("SELECT * FROM `clientes` where correo='" + user + "' and password='" + enc.getMD5(password) + "'; ");
                                                    while (rs.next()) {
                                                        sesion.setAttribute("logueado", "1");
                                                        sesion.setAttribute("user", rs.getString("correo"));
                                                        sesion.setAttribute("id", rs.getString("id"));
                                                        response.sendRedirect("loginC.jsp");
                                                    }
                                                    out.print(" <div class=\"alert alert-danger\" role=\"alert\">Usuario no Valido</div>");
                                                } catch (Exception e) {
                                                }

                                            }
                                        %>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </body>

</html>
