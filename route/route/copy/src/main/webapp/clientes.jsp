<%-- 
    Document   : clientes
    Created on : 17/07/2023, 9:26:52
    Author     : jeanv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>clientes</title>
    </head>
    <body>
    </form>
</nav>
<div class="row mt-2">
    <div class="col-sm">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col" colspan="3" class="text-center"><h3>DESTINOS</th>
            <a href="clientes.jsp"</<button><h3>Datos Clientes</button>
                <th scope="col" >
                    <a href="crearCliente.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i>
                </th>
                </tr>
                </thead>
                <thead>
                    <tr>
                        <th scope="col">id</th>
                        <th scope="col">pais </th>
                        <th scope="col">dni </th>
                        <th scope="col">nombre</th>
                        <th scope="col">apellido </th>
                        <th scope="col">nacimiento</th>
                        <th scope="col">Genero</th>
                        <th scope="col">cell</th>
                        <th scope="col">correo</th>
                        <th scope="col">password</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <jsp:include page="cliente"/>
                </tbody>
        </table>
    </div>
</div>
</div>
</body>
</html>
