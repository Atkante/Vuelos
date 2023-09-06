<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <title>editar</title>
    </head>
    <body>
        <%
            String id=request.getParameter("id");
            String nombre=request.getParameter("nombre");
            String precio=request.getParameter("precio");
        %>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form action="editar.jsp" method="get">
                        <div class="form-group">
                            <label for="nombre">Nuevo Destino</label>
                            <input type="text" class="form-control" id="nombre" value="<%=nombre%>" name="nombre" placeholder="Nombre" required="required">
                        </div>
                        <div class="form-group">
                            <label for="precio">Precio de vuelo</label>
                            <input type="text" class="form-control" id="precio" value="<%=precio%>" name="precio" placeholder="Precio" required="required">
                        </div>
                        <a href="loginA.jsp" class="btn btn-danger">Cancelar <i class="fa fa-ban" aria-hidden="true"></i></a>
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                        <input type="hidden" name="id" value="<%=id%>" >
                    </form>
                </div>
            </div>
        </div>
        <%
            if(request.getParameter("enviar")!=null){
                try {
                    Connection con=null;
                    Statement st=null;
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection("jdbc:mysql://localhost/mysky?user=root&password=123456");
                    st=con.createStatement();
                    st.executeUpdate("update destinos set nombre='"+nombre+"',precio='"+precio+"'where id='"+id+"';");
                    request.getRequestDispatcher("loginA.jsp").forward(request, response);
                }catch (Exception e){
                    out.print(e);
                }
            }
            
        %>
    </body>
</html>