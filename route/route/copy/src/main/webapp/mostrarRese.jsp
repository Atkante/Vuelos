

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <title>ListadoRese</title>
    </head>
    <body>
                </form>
            </nav>
            <div class="row mt-2">
                <div class="col-sm">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col" colspan="3" class="text-center"><h3>RESERVA</th>                                            <th scope="col" >
                                </th>
                                <a href="loginC.jsp" class="btn btn-danger">Regresar <i class="fa fa-ban" aria-hidden="true"></i></a>
                            </tr>
                        </thead>
                        <thead>
                            <tr>
                                <th scope="col">id</th>
                                <th scope="col">origen</th>
                                <th scope="col">destino</th>
                                <th scope="col">fecha salida</th>
                                <th scope="col">fecha llegada</th>
                                <th scope="col">cantidad personas</th>
                                <th scope="col">precio</th>
                                <th scope="col">asiento</th>
                                <th scope="col">telefono</th>
                                <th scope="col">correo</th>
                                <th scope="col">total</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <jsp:include page="reser"/>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>