<%-- 
    Document   : welcom
    Created on : Apr 14, 2023, 10:38:37 PM
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
        <%
            if(request.getAttribute("name")!=null){
            String name =(String)request.getAttribute("name");
            %>
                <h1>Hello <%= name %></h1>
        <%
            }
        %>
    
    </body>
</html>
