<%-- 
    Document   : add
    Created on : Apr 26, 2023, 3:06:59 PM
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
        <h1>Add new a category</h1>
        <h3 style="color: red">${requestScope.error}</h3>
        <form action="add">
            enter ID: <input type="number" name="id"><br>
            enter Name: <input type="text" name="name"><br>
            enter Describe: <input type="text" name="describe"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>
