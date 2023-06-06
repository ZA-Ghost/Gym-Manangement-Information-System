<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.io.*, java.util.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
       <sql:setDataSource var="gymMIS" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/gym_management"
          user="root"  password=""/>
 
        <sql:query dataSource="${gymMIS}" var="result">
        SELECT * from logindetails where username =? and password = ?;
        <sql:param value="${param.username}" />
        <sql:param value="${param.password}" />
        </sql:query>
        
        
        
          <c:if test="${!empty result.rows}">
        <c:redirect url="adminHomePage.html">
            <c:param name="msg" value="You Are Logged In" />
        </c:redirect>
    </c:if>
   
        
    </body>
</html>
