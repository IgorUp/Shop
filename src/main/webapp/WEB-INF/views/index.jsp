<%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 13.04.2016
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Start</title>
    <link href="<c:url value="/resources/boot/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>
<div align="center">
    <table class="table" align="center" border="1">
        <th>Button</th>
            <tr>
                <td>
                    <a href="home">home</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="home2">home2</a>
                </td>
            </tr>
    </table>
</div>
<script src="<c:url value="/resources/boot/js/bootstrap.min.js"/>"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<c:url value="/resources/boot/js/ie10-viewport-bug-workaround.js"/>"></script>
</body>
</html>

