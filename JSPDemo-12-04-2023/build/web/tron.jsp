<%-- 
    Document   : tron
    Created on : Apr 13, 2023, 6:21:15 PM
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
        <h1>Bài 1</h1>
        <form action="tinh" method="post">
            enter radius: <input type="test" name="r"><br>
            <input type="submit" value="Submit">
        </form>
        <%
            if(request.getAttribute("dt")!=null){
                String ss=(String)request.getAttribute("dt"); //Đối tượng được gửi từ Servlet sang jsp là object nên phải ép kiểu mình muốn
        %>
        <h2>Diện tích: <%= ss%></h2>
        <%
            }
        %>
    </body>
</html>
