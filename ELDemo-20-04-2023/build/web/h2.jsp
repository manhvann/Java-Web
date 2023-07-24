<%-- 
    Document   : h2
    Created on : Apr 20, 2023, 12:48:17 AM
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
        <h1>Ví dụ cho Java Bean</h1>
        <form>
            Nhập số 1: <input type="number" name="n1" value="${param.n1}"><br>
            Nhập số 2: <input type="number" name="n2" value="${param.n2}"><br>
            <input type="submit" value="Tính toán">
            
        </form>
        <h2>Tổng: ${param.n1+param.n2}</h2>
        <h2>Trung bình cộng: ${(param.n1+param.n2)/2}</h2>
        <h2>Diện tích tương đương: ${param.n1*param.n1*Math.PI}</h2>
        <h4>Dữ liệu lấy từ server trả về: 
            ${requestScope.name} 
        </h4>
            <h2 style="color: chocolate">Thông tin:  ${requestScope.st}
                
            </h2>
    </body>
</html>
