<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <title>editarCliente</title>
    </head>
    <body>
        <%
            
            String pais = request.getParameter("pais");
            String dni = request.getParameter("dni");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String nacimiento = request.getParameter("nacimiento");
            String correo = request.getParameter("correo");
            String cell = request.getParameter("cell");
            String Genero = request.getParameter("Genero");
            String password = request.getParameter("password");
            String id = request.getParameter("id");
        %>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    <form action="editarCliente.jsp" method="get">
                        <div class="form-group">
                            <label for="pais">Nuevo pais</label>
                            <input type="text" class="form-control" id="pais" value="<%=pais%>" name="pais" placeholder="pais" required="required">
                        </div>
                        <div class="form-group">
                            <label for="dni">Nuevo dni</label>
                            <input type="text" class="form-control" id="dni" value="<%=dni%>" name="dni" placeholder="dni" required="required">
                        </div>
                        <div class="form-group">
                            <label for="nombre">Nuevo nombre</label>
                            <input type="text" class="form-control" id="nombre" value="<%=nombre%>" name="nombre" placeholder="nombre" required="required">
                        </div>
                        <div class="form-group">
                            <label for="apellido">Nuevo apellido</label>
                            <input type="text" class="form-control" id="apellido" value="<%=apellido%>" name="apellido" placeholder="apellido" required="required">
                        </div>
                        <div class="form-group">
                            <label for="Genero">Nuevo Genero</label>
                            <input type="text" class="form-control" id="Genero" value="<%=Genero%>" name="Genero" placeholder="Genero" required="required">
                        </div>
                        <div class="form-group">
                            <label for="cell">Nuevo cell</label>
                            <input type="text" class="form-control" id="cell" value="<%=cell%>" name="cell" placeholder="TipoUsuario" required="required">
                        </div>
                        <div class="form-group">
                            <label for="email">Nuevo correo</label>
                            <input type="text" class="form-control" id="correo" value="<%=correo%>" name="correo" placeholder="correo" required="required">
                        </div>
                        <div class="form-group">
                            <label for="password">Nueva password</label>
                            <input type="password" class="form-control" id="password" value="<%=password%>" name="password" placeholder="password" required="required">
                        </div>
                        <a href="clientes.jsp" class="btn btn-danger">Cancelar <i class="fa fa-ban" aria-hidden="true"></i></a>
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                        <input type="hidden" name="id" value="<%=id%>" >
                    </form>
                </div>
            </div>
        </div>
        <%
            if (request.getParameter("enviar") != null) {
                try {
                    Connection con = null;
                    Statement st = null;

                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/mysky?user=root&password=123456");
                    st = con.createStatement();
                   String query = "UPDATE clientes SET pais=?, dni=?, nombre=?, apellido=?, nacimiento=?, Genero=?, cell=?, correo=?, password=? WHERE id=?";
                    request.getRequestDispatcher("clientes.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e);
                }
            }

        %>
    </body>
</html>
