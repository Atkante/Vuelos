<%-- 
    Document   : borrar
    Created on : 16/07/2023, 21:18:40
    Author     : jeanv
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mysql.jdbc.Driver"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/mysky?user=root&password=123456");
                st = con.createStatement();
                st.executeUpdate("delete FROM destinos where id='"+request.getParameter("id")+"';");
                request.getRequestDispatcher("loginA.jsp").forward(request, response);
            } catch (Exception e) {
            }
        %>
    </body>
</html>
