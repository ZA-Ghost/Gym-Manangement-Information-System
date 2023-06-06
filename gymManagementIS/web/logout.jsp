
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        
    
 
    </head>
    <body>
        
   <%
    // Remove or invalidate the user session
    session.invalidate();
    // Redirect the user to the login page or any other desired page
    response.sendRedirect("index.html");	
	%>

    </body> 
</html>
