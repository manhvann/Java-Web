<%-- 
    Document   : add
    Created on : May 1, 2023, 11:03:37 PM
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
        <h1>Nhập thông tin sinh viên</h1>
        <h2>${requestScope.error}</h2>
        <form action="add">
            Nhập mã sinh viên: <input type="text" name="maSV"><br>
            Nhập tên sinh viên: <input type="text" name="tenSV"><br>
            Nhập quê sinh viên: <input type="text" name="que"><br>
            <input type="submit" value="Gửi">
        </form>
    </body>
</html>
