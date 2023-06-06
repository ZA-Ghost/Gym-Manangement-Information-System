<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.io.*, java.util.*, java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <sql:setDataSource var="libraryMIS" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/librarymis"
          user="root"  password=""/>
       
        <sql:update dataSource="${libraryMIS}" var="dbResult">			
	INSERT INTO books (title, author, publisher, isbn, edition, quantity)
        VALUES ('${param.title}', '${param.author}', '${param.publisher}', '${param.isbn}', '${param.isbn}', ${param.quantity})
        </sql:update>
                
      <c:if test="${dbResult>=1}"> <c:redirect url="adminHomePage.html" >
            <c:param name="msg" value="Book Details Have Been Uploaded" />
         </c:redirect>
      </c:if>
            
            
    </body>
</html>
