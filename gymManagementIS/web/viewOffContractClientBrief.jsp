
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Route Management</title>
        
     
    <link rel="stylesheet" href="menuHeader.css">
        <link rel="stylesheet" href="tableCSS.css"> 
        <link rel="stylesheet" href="tableMenuCSS.css">
  
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
    SELECT * from offcontract;
    </sql:query>
           
    
    <div class="search-bar">
        <input type="text" id="searchInput" placeholder="Search">
        </div>
        
        <script src="searchTable.js"></script>
        
        <table id="dataTable">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Contract Type</th>
				<th>Expiry Date</th>
				<th>View</th>
            </tr>   
        
        
           <c:forEach var="row" items="${result.rows}">
           
            
            <tr>
			<td><c:out value="${row.id}"/></td>
            <td><c:out value="${row.Name}"/></td>
            <td><c:out value="${row.Surname}"/></td>
            <td><c:out value="${row.Package}"/></td>
			<td><c:out value="${row.endDate}"/></td>
            <td><a href="viewOffContractClientDetails.jsp?id=<c:out value="${row.id}"/>">View </a></td>
            </tr>
			
            </c:forEach>
           </table>
        
    </body> 
</html>
