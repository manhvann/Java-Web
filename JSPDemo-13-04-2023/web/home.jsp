<%-- 
    Document   : home
    Created on : Apr 13, 2023, 7:40:44 PM
    Author     : Van Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <div id="menu_tab">
            <%@include file="menu.jsp" %>
        </div>
        
        <div class="clr"></div>
        <div>
            
        </div>
        <div class="doraemon">
            <%@include file="doraemon.jsp" %>
            <%@include file="index.html" %>
        </div>
         <div class="clr"></div>
        <div class="footer">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
