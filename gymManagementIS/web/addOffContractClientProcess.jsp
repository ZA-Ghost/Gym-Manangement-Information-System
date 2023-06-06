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
         <sql:setDataSource var="gymMIS" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/gym_management"
          user="root"  password=""/>
        
         
          
         <sql:update dataSource="${gymMIS}" var="dbResult">
					
		INSERT INTO  offcontract (Name, Surname, IdentityPassportNumber, CellphoneNumber, EmailAddress, HomeAddress, Package, Price, StartDate, EndDate)
		  VALUES ('${param.name}', '${param.surname}', '${param.identity}', '${param.cellphone}', '${param.email}', 
                  '${param.address}', '${param.packages}',  '${param.price}', '${param.startDate}', '${param.endDate}') ;
		</sql:update>

		
		
      <c:if test="${dbResult>=1}">
         <c:redirect url="viewOffContractClientBrief.jsp" >
            <c:param name="msg" value="Client Details Have Been Uploaded" />
         </c:redirect>
      </c:if>
            
            
    </body>
</html>
