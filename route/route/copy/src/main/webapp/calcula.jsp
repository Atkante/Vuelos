<%-- 
    Document   : calcula
    Created on : 22/07/2023, 5:33:01
    Author     : jeanv
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>calcula</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mysky?user=root&password=123456");
                String origen = ("origen");
                String destino = ("destino");
                String fechaS = ("fechaS");
                String fechaF = ("fechaF");
                String pasajeros = ("pasajeros");
                String asiento = ("asiento");

                String query = "SELECT * FROM `vuelos` WHERE origen = '" + origen + "' AND destino = '" + destino + "'";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);

                double precio = 0.0;
                if (rs.next()) {
                    precio = rs.getDouble("precio");
                }

                int pasajero = 2; 
                double totalprecio = precio * pasajero;

                System.out.println("Origen: " + origen);
                System.out.println("Destino: " + destino);// Paso 7: Mostrar el resultado en la consola (puedes enviar el resultado a la interfaz web si lo prefieres)
                System.out.println("Fecha Salida: " + fechaF);
                System.out.println("Fecha Llegada: " + fechaS);
                System.out.println("Numero de Asiento: " + asiento);
                System.out.println("Precio por pasajero: " + precio);
                System.out.println("Cantidad de pasajeros: " + pasajeros);
                System.out.println("Precio total: " + totalprecio);

                // Paso 8: Cerrar la conexión y liberar recursos
                rs.close();
                st.close();
                con.close();

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
