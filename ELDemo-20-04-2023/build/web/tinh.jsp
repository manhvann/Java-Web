<%-- 
    Document   : tinh
    Created on : Apr 25, 2023, 7:20:11 PM
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
       <h1>Đổi tiền</h1>
       <h3 style="color: red">${requestScope.error}</h3>
        <form action="tinh">
            Nhập tiền việt: <input type="text" name="money"><br>
            <input type="radio" name="change" checked value="0"> sang USD
            <input type="radio" name="change" value="1"> sang YEN
            <br>
            <input type="submit" value="Đổi">
        </form>
       <h2 style="color: blue">Tien doi:  ${requestScope.money}</h2>
    </body>
</html>
