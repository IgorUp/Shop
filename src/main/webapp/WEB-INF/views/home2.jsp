<%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 13.04.2016
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Manufacturer Manager Home</title>
</head>
<body>
<div align="center">
    <h1>Manufacturer List</h1>
    <h3><a href="newManufacturer">New Manufacturer</a></h3>
    <table border="1">
        <th>No</th>
        <th>Manufacturer</th>
        <th>Button</th>

        <c:forEach var="manufacturer" items="${listManufacturer}" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${manufacturer.manufacturer_name}</td>
                <td>
                    <a href="editManufacturer?id_manufacturer=${manufacturer.id_manufacturer}">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="deleteManufacturer?id_manufacturer=${manufacturer.id_manufacturer}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

