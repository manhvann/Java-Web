<%-- 
    Document   : home
    Created on : May 1, 2023, 4:29:11 PM
    Author     : Van Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Danh sách sinh viên</h1>
        <h2><a href="add.jsp" style="color: blue">Add New</a></h2>
        <table border="1px" width="40%">
            <center>
                <tr>
                    <td>Ma Sinh Vien</td>
                    <td>Ten</td>
                    <td>Que quan</td>
                </tr>
                
                        <c:forEach items="${requestScope.data}" var="c">
                        
                            
                        <c:set var="maSV" value="${c.maSV}"></c:set>
                        <tr>
                        <td>${maSV}</td>
                        <td>${c.tenSV}</td>
                        <td>${c.que}</td>
                        </tr>
                        </c:forEach>
                    
                
            </center>
            
        </table>
    </body>
</html>
