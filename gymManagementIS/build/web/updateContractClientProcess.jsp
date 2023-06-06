<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.io.*, java.util.*" %>
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
	
		<% 
              String ID = request.getParameter("id");
        %>
	
         <sql:setDataSource var="gymMIS" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/gym_management"
          user="root"  password=""/>
        
         
          
         <sql:update dataSource="${gymMIS}" var="dbResult">
					
	UPDATE contract 
        SET Name = ?, Surname = ?, IdentityPassportNumber = ?, CellphoneNumber = ?, EmailAddress = ?, HomeAddress = ?, Price = ?, StartDate = ?, EndDate = ?, Package = ?, Status=?, Comments=?
        WHERE id = ?
		  <sql:param value="${param.name}" />
		  <sql:param value="${param.surname}" />
		  <sql:param value="${param.identity}" />
		  <sql:param value="${param.cellphone}" />
		  <sql:param value="${param.email}" />
		  <sql:param value="${param.address}" />
		  <sql:param value="${param.price}" />
		  <sql:param value="${param.startDate}" />
		  <sql:param value="${param.endDate}" />
		  <sql:param value="${param.packages}" />
		  <sql:param value="${param.status}" />
		  <sql:param value="${param.comments}" />
		  <sql:param value="${param.id}" />
		</sql:update>

		
		
      <c:if test="${dbResult>=1}">
         <c:redirect url="viewContractClientBrief.jsp" >
            <c:param name="msg" value="Client Details Have Been Updated" />
         </c:redirect>
      </c:if>
            
            
    </body>
</html>
