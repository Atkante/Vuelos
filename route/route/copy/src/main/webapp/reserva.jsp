<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Reserva de Vuelo</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    <h1>Reserva de Vuelo</h1>
                    <form onsubmit="return calculatePrice()" method="POST">
                        <div class="form-group">
                            <label for="origen">Origen:</label>
                            <select id="origin" name="origen" required>
                                <option value="" disabled selected>Selecciona origen</option>
                                <option value="New York-USA">New York-USA</option>
                                <option value="Paris-Francia">Paris-Francia</option>
                                <option value="Grecia-Europa">Grecia-Europa</option>
                                <option value="Ecuador-Quito">Ecuador-Quito</option>
                            </select>


                            <label for="destino">Destino:</label>
                            <select id="destino" name="destino" required>
                                <option value="" disabled selected>Selecciona destino</option>
                                <option value="Seul-Corea del Sur">Seul-Corea del Sur</option>
                                <option value="Sydney-Australia">Sydney-Australia</option>
                                <option value="España-Europa">España-Europa</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="fechaS">Fecha y hora de salida:</label>
                            <input type="datetime-local" id="fechaS" name="fechaS" required>

                            <label for="fechaF">Fecha y hora de llegada:</label>
                            <input type="datetime-local" id="fechaF" name="fechaF" required>
                        </div>
                        <div class="form-group">
                            <label for="pasajeros">Cantidad de personas:</label>
                            <input type="number" id="pasajeros" name="pasajeros" min="1" required>
                        </div>
                        <div class="form-group">
                            <label for="asiento">Numero de asiento:</label>
                            <input type="number" id="asiento" name="asiento" min="1" max="110" required>
                        </div>

                        <a href="calcula.jsp"<button type="submit">Calcular Precio</button><a/>
                            <a href="loginC.jsp" class="btn btn-danger">Cancelar <i class="fa fa-ban" aria-hidden="true"></i></a>
                    </form>
                    <div id="result"></div>
                </div>
            </div>
        </div>
        <script src="script.js"></script>

    </body>
</html>

