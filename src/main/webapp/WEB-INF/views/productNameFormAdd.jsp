<%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 13.04.2016
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Manufacturer</title>
</head>
<body>
<div align="center">
    <h1>New/Edit Contact</h1>
    <form:form action="addProductName" method="post" modelAttribute="product_name">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Prod:</td>
                <td><form:input path="product_name" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>