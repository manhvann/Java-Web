<%-- 
    Document   : h3
    Created on : Apr 24, 2023, 10:35:50 AM
    Author     : Van Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ví du cho JSTL</h1>
        <c:set var="s" value="${requestScope.st}"></c:set>
        <h2>Hello ${s.name}</h2>
        <img src="${(s.gender?'images/nam.png':'images/nu.png')}" alt="alt"/>
        <c:if test="${(s.mark>=5)}">
            <h3>Pass</h3>
        </c:if>
            <c:if test="${(s.mark<5)}">
            <h3>Fail</h3>
        </c:if>
            <h1>Danh sach sinh vien</h1>
            <table border="1px" width="40%">
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>MARK</th>
                    <th>RANK</th>
                </tr>
                <c:forEach items="${requestScope.data}" var="i">
                   <tr>
                    <td>${i.id}</td>
                    <td>${i.name}</td>
                    <td>
                        <img src="${(i.gender?'images/nam.png':'images/nu.png')}" alt="alt" width="30px" height="30px"/>
                        
                    </td>
                    <td>${i.mark}</td>
                    <td>
                        <c:choose>
                            <c:when test="${i.mark<5}">
                            <h3>Trung bình</h3>
                            </c:when>

                            <c:when test="${i.mark>=5 && i.mark<8}">
                            <h3>Khá</h3>
                            </c:when>

                            <c:when test="${i.mark>=8}">
                            <h3>Gioi</h3>
                            </c:when>
                        </c:choose>
                    </td>
                    
                   </tr>
                </c:forEach>
                
            </table>
    </body>
</html>
