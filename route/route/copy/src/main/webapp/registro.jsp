<%@page import="Utils.Encriptar"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro de Usuario</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    <h1>Registro de Usuario</h1>
                    <form action="registro.jsp" method="POST">
                        <h2>Datos personales</h2>
                        <div class="form-group">
                            <label for="country">País:</label>
                            <input type="text" id="pais" name="pais" required>
                        </div>
                        <div class="form-group">
                            <label for="citizenship">Documento de ciudadanía:</label>
                            <input type="text" id="dni" name="dni" required>
                        </div>
                        <div class="form-group">
                            <label for="first_name">Nombres:</label>
                            <input type="text" id="nombre" name="nombre" required>
                        </div>
                        <div class="form-group">
                            <label for="last_name">Apellidos:</label>
                            <input type="text" id="apellido" name="apellido" required>
                        </div>
                        <div class="form-group">
                            <label for="birthdate">Fecha de nacimiento:</label>
                            <input type="date" id="nacimiento" name="nacimiento" required>
                        </div>
                        <div class="form-group">
                            <label>Género:</label>
                            <input type="radio" id="masculino" name="Genero" value="masculino">
                            <label for="male">Masculino</label>
                            <input type="radio" id="masculino" name="Genero" value="masculino">
                            <label for="female">Femenino</label>
                        </div>
                        <div class="form-group">
                            <label for="phone">Número de celular:</label>
                            <input type="tel" id="cell" name="cell" pattern="[0-9]{10}" required>
                        </div>
                        <h2>Datos de ingreso a tu cuenta</h2>
                        <div class="form-group">
                            <label for="correo">Email:</label>
                            <input type="text" id="correo" name="correo" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña:</label>
                            <input type="password" id="password" name="password" required pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$" title="La contraseña debe tener al menos 1 mayúscula, 1 minúscula, 1 número y 8 caracteres">
                        </div>
                        <a href="index.jsp" class="btn btn-danger">Cancelar <i class="fa fa-ban" aria-hidden="true"></i></a>
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                </div>
                </form>
            </div>
        </div>
    </div>
    <%
        if (request.getParameter("enviar") != null) {
            String pais = request.getParameter("pais");
            String dni = request.getParameter("dni");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String nacimiento = request.getParameter("nacimiento");
            String correo = request.getParameter("correo");
            String cell = request.getParameter("cell");
            String Genero = request.getParameter("Genero");
            String password = request.getParameter("password");

            try {
                Connection con = null;
                Statement st = null;
                Encriptar enc=new Encriptar();

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/mysky?user=root&password=123456");
                st = con.createStatement();
                st.executeUpdate("insert into clientes (pais,dni,nombre,apellido,nacimiento,Genero,cell,correo,password) values('" + pais + "','" + dni + "','" + nombre + "','" + apellido + "','" + nacimiento + "','" + Genero + "','" + cell + "','" + correo + "','" + enc.getMD5(password) + "');");
                request.getRequestDispatcher("loginC.jsp").forward(request, response);
            } catch (Exception e) {
                out.print(e);
            }
        }

    %>
</body>
</html>
