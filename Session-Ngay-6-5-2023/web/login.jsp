<%-- 
    Document   : login
    Created on : May 6, 2023, 8:39:34 PM
    Author     : Van Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login form</h1>
        <h3 style="color: red">${requestScope.error}</h3>
        <form action="login" method="post">
            enter username: <input type="text" name="user"><br>
            enter password: <input type="password" name="pass"><br>
            <input type="submit" value="LOGIN">
        </form>
    </body>
</html>
