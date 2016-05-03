<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Manager Home</title>
		<link href="<c:url value="/resources/boot/css/bootstrap.min.css" />" rel="stylesheet">
    </head>
    <body>
    	<div align="center">
	        <h1>User List</h1>
	        <h3><a href="newUser">New Contact</a></h3>
	        <table class="table table-hover">
	        	<th>No</th>
	        	<th>Role</th>
	        	<th>Name</th>
	        	<th>Surname</th>
	        	<th>Passport id</th>
	        	<th>Telephone</th>
				<th>Button</th>
	        	
				<c:forEach var="user" items="${listUser}" varStatus="status">
	        	<tr>
	        		<td>${status.index + 1}</td>
					<td>${user.role}</td>
					<td>${user.name}</td>
					<td>${user.surname}</td>
					<td>${user.passport_id}</td>
					<td>${user.phone_number}</td>
					<td>
						<a href="editUser?id_user=${user.id_user}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="deleteUser?id_user=${user.id_user}">Delete</a>
					</td>
							
	        	</tr>
				</c:forEach>	        	
			</table>
    	</div>
		<script src="<c:url value="/resources/boot/js/bootstrap.min.js"/>"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="<c:url value="/resources/boot/js/ie10-viewport-bug-workaround.js"/>"></script>
    </body>
</html>
