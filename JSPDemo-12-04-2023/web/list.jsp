<%-- 
    Document   : list
    Created on : Apr 13, 2023, 7:15:47 PM
    Author     : Van Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="model.Student" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Đây là danh sách sinh viên </h1>
        <table border="1px" >
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Date of birth</th>
                <th>Gender</th>
            </tr>
            <%
                List<Student> list= (List<Student>) request.getAttribute("data");
                for(Student i: list){
                    %>
                    <tr>
                        <td><%= i.getId()%></td>
                        <td><%= i.getName()%></td>
                        <td><%= i.getDob()%></td>
                        <td>
                            <img <%= (i.getGender()?"src='images/nam.png'":
                                    "src='images/nu.png'")%> width="30px" height="30px"/>
                        </td>
                    </tr>
                    <%
                }
            %>
        </table>
    </body>
</html>
