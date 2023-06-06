<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.io.*, java.util.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Client Details</title>
        
         <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }

        th, td {
          text-align: left;
          padding: 8px;
        }

        tr:nth-child(even) {
          background-color: #D6EEEE;
        }
        </style>
  <link rel="stylesheet" href="menuHeader.css">
  
</head>
<body>
    
   <header>
    <nav>
      <ul class="horizontal-menu">
        <li><a href="add_contract_clients.html">Add Client: Contract Client</a></li>
      <li><a href="add_off_contract_clients.html">Add Client: Off-Contract Client</a></li>
      <li><a href="viewContractClientBrief.jsp">View Client: Contract Clients</a></li>
      <li><a href="viewOffContractClientBrief.jsp">View Client: Off-Contract Clients</a></li>
      <li><a href="updateContractClientBrief.jsp">Update Client: Contract Client</a></li>
      <li><a href="updateOffContractClientBrief.jsp">Update Client: Off-Contract Client</a></li>
      </ul>
    </nav>
  
       
    <form class="logout-form" action="logout.jsp" method="POST">
      <button type="submit">Logout</button>
    </form>
  </header>
    
    <br>
         
          
         <sql:setDataSource var="gymMIS" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/gym_management"
          user="root"  password=""/>
 
        <sql:query dataSource="${gymMIS}" var="result">
        SELECT * from contract where id=?;
        <sql:param value="${param.id}" />
        </sql:query>
    
        
        
        <table>
             
            <tr>
                <th>ID No</th>
                <th>Name:</th>
                <th>Surname:</th>
                <th>Address:</th>
		<th>Cellphone Number</th>
                <th>Email Address</th>
                <th>Home Address</th>
                <th>Package</th>
                <th>Price</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Status</th>
                <th>Comments</th>
            </tr>
            
           <c:forEach var="row" items="${result.rows}"> 
		   
            <tr>
            <td><c:out value="${row.id}"/></td>
            <td><c:out value="${row.Name}"/></td>
            <td><c:out value="${row.Surname}"/></td>
			<td><c:out value="${row.IdentityPassportNumber}"/></td>
			<td><c:out value="${row.CellphoneNumber}"/></td>
			<td><c:out value="${row.EmailAddress}"/></td>
            <td><c:out value="${row.HomeAddress}"/></td>
            <td><c:out value="${row.Package}"/></td>
            <td><c:out value="${row.Price}"/></td>
            <td><c:out value="${row.StartDate}"/></td>
			<td><c:out value="${row.EndDate}"/></td>
			<td><c:out value="${row.Status}"/></td>
			<td><c:out value="${row.Comments}"/></td>
			
            </tr>
            </c:forEach>
            
           </table>
        </center>
        
    </body>
</html>
