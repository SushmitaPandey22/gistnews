<%-- 
    Document   : jsp3
    Created on : 19 Feb, 2020, 7:21:19 PM
    Author     : LENOVO
--%>

<
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="Server1">Click here to open Servlet </a>
        
        <br/>
        
        <form action="Server1" method="get">
            <input type="submit" value="submit using GET"/>
        </form>
        
        <br/>
        
        <form action="Server1" method="post">
            <input type="submit" value="submit using POST"/>
        </form>
    </body>
</html>
