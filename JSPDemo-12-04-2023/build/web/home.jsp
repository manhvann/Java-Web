<%-- 
    Document   : home
    Created on : Apr 12, 2023, 12:13:23 AM
    Author     : Van Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Chào bạn đến với trang web của tôi</h1>
        <h2 style="color: chocolate">
            <% 
                String name="Nguyễn Văn Mạnh";
                out.println("Hello "+name);
                out.println("<br>So pi: "+Math.PI);
                double r=2;
                DecimalFormat f= new DecimalFormat(".###");
            %>
        </h2>
        <h2>
            Diện tích là: <%=f.format(Math.PI*r*r)%>
        </h2>
        <h1>Bài 1</h1>
        <form>
            enter radius: <input type="test" name="r"><br>
            <input type="submit" value="Submit">
        </form>
        <%
            if(request.getParameter("r")!=null){
                String r_raw=request.getParameter("r");
                double ra;
                try{
                    ra=Double.parseDouble(r_raw);
                    double s=Math.PI*ra*ra;
        %>
        <h2>Diện tích là:<%= f.format(s)%> </h2>
        <%
            }catch(Exception e){
                System.out.print(e);
            }
            }
        %>
    </body>
</html>
