<%-- 
    Document   : list
    Created on : Apr 26, 2023, 2:55:31 PM
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
    <center>
        <h1>List of categories</h1>
        <h3><a href="add.jsp">Add new</a></h3>
        <form action="list">
            <input type="submit" name="name" value="OK">
        </form>
        <table border="1px" width="40%">
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Describe</td>
            </tr>
            
            <c:forEach items="${requestScope.data}" var="c">
                <c:set var="id" value="${c.id}"></c:set>
                <tr>
                    <td>${id}</td> 
                    <td>${c.name}</td>
                    <td>${c.describe}</td>
                
                </tr>
            </c:forEach>
        </table>
    </center>
        
    </body>
</html>
