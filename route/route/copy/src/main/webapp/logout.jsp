<%-- 
    Document   : logout
    Created on : 16/07/2023, 23:07:56
    Author     : jeanv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession sesion=request.getSession();
            sesion.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>

