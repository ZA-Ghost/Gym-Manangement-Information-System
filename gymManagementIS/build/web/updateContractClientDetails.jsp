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
        <title>Admin: Update Client Details</title>
        <style>
            
     body {
      font-family: Arial, sans-serif;
    }
    
    .form-container {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #f7f7f7;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    
    .form-container h2 {
      text-align: center;
    }
    
    .form-group {
      margin-bottom: 15px;
    }
    
    .form-group label {
      display: block;
      font-weight: bold;
    }
    
    .form-group input,
    .form-group select {
      width: 100%;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
    
    .form-group select {
      height: 34px;
    }
    
    .form-group .price-select {
      width: auto;
    }
    
    .form-group .date-input {
      width: 150px;
    }
    
    .form-group .submit-button {
      margin-top: 10px;
    }
    
    .form-group .submit-button input {
      width: auto;
      cursor: pointer;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 4px;
      padding: 10px 20px;
      font-size: 16px;
    </style><link rel="stylesheet" href="menuHeader.css">
  
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
        
		<c:forEach var="row" items="${result.rows}"> 
    <div class="form-container">
    <form action="updateContractClientProcess.jsp" method="POST">
	<div class="form-group">
        <label for="id">ID:</label>
        <input type="text" id="id" name="id" value="<c:out value="${row.id}"/>" readonly >
      </div>
      <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<c:out value="${row.Name}"/>" >
      </div>
      <div class="form-group">
        <label for="surname">Surname:</label>
        <input type="text" id="surname" name="surname" value="<c:out value="${row.Surname}"/>" >
      </div>
      <div class="form-group">
        <label for="identity">Identity/Passport Number:</label>
        <input type="text" id="identity" name="identity" value="<c:out value="${row.IdentityPassportNumber}"/>" >
      </div>
      <div class="form-group">
        <label for="cellphone">Cellphone Number:</label>
        <input type="tel" id="cellphone" name="cellphone" value="<c:out value="${row.CellphoneNumber}"/>" >
      </div>
      <div class="form-group">
        <label for="email">Email Address:</label>
        <input type="email" id="email" name="email" value="<c:out value="${row.EmailAddress}"/>" >
      </div>
      <div class="form-group">
        <label for="address">Home Address:</label>
        <input type="text" id="address" name="address" value="<c:out value="${row.HomeAddress}"/>" >
      </div>
      <div class="form-group">
        <label for="package">Package:</label>
        <input type="text" id="package" name="packages" value="<c:out value="${row.Package}"/>" >
        
      </div>
      <div class="form-group">
        <label for="price">Price:</label>
        <input type="text" id="price" name="price" value="<c:out value="${row.Price}"/>"  readonly class="price-select">
         
         
        </select>
      </div>
      <div class="form-group">
        <label for="start-date">Start Date:</label>
        <input type="date" id="startDate" name="startDate" value="<c:out value="${row.startDate}"/>"  class="date-input">
      </div>
      <div class="form-group">
        <label for="end-date">End Date:</label>
        <input type="date" id="endDate" name="endDate" value="<c:out value="${row.endDate}"/>" class="date-input">
      </div>
	   <div class="form-group">
        <label for="status">Status:</label>
        <input type="text" id="status" name="status" value="<c:out value="${row.Status}"/>" >
      </div>
	  
	  <div class="form-group">
        <label for="comments">Comments:</label>
        <input type="text" id="comments" name="comments" value="<c:out value="${row.Comments}"/>" >>
      </div>
	  
      <div class="form-group submit-button">
        <input type="submit" value="Submit">
      </div>
    </form>
	  </c:forEach>
  </div>
</body>
</html>
