<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <title>crear</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form action="crearCliente.jsp" method="post">
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required="required">
                        </div>
                        <div class="form-group">
                            <label for="apellido">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" placeholder="apellido" required="required">
                        </div>
                        <div class="form-group">
                            <label for="apellido">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" placeholder="apellido" required="required">
                        </div><div class="form-group">
                            <label for="nombreUsuario">nombreUsuario</label>
                            <input type="text" class="form-control" id="nombreUsuario" name="nombreUsuario" placeholder="nombreUsuario" required="required">
                        </div><div class="form-group">
                            <label for="correo">correo</label>
                            <input type="text" class="form-control" id="correo" name="correo" placeholder="correo" required="required">
                        </div><div class="form-group">
                            <label for="tipoUsuario">tipoUsuario</label>
                            <input type="text" class="form-control" id="tipoUsuario" name="tipoUsuario" placeholder="tipoUsuario" required="required">
                        </div><div class="form-group">
                            <label for="Genero">Genero</label>
                            <input type="text" class="form-control" id="Genero" name="Genero" placeholder="Genero" required="required">
                        </div><div class="form-group">
                            <label for="password">password</label>
                            <input type="text" class="form-control" id="password" name="password" placeholder="password" required="required">
                        </div>
                         <a href="clientes.jsp" class="btn btn-danger">Cancelar <i class="fa fa-ban" aria-hidden="true"></i></a>
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
        <%
            if(request.getParameter("enviar")!=null){
                String nombre=request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String nombreUsuario = request.getParameter("nombreUsuario");
                String correo = request.getParameter("correo");
                String tipoUsuario = request.getParameter("tipoUsuario");
                String Genero = request.getParameter("Genero");
                String password = request.getParameter("password");
                
                try {
                    Connection con=null;
                    Statement st=null;
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection("jdbc:mysql://localhost/mysky?user=root&password=123456");
                    st=con.createStatement();
                    st.executeUpdate("insert into clientes (nombre,apellido,nombreUsuario,correo,tipoUsuario,Genero,password) values('"+nombre+"','"+apellido+"','"+nombreUsuario+"','"+correo+"','"+tipoUsuario+"','"+Genero+"','"+password+"');");
                    request.getRequestDispatcher("clientes.jsp").forward(request, response);
                }catch (Exception e){
                    out.print(e);
                }
            }
            
        %>
    </body>
</html>
