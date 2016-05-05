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
    <link href="<c:url value="/resources/boot/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>
<div align="center">
    <h1>Производители</h1>
    <h3><button type="button" class="btn btn-primary" onClick='location.href="newProductNameAdd"'>Добавить производителя</button></h3>
    <table class="table table-hover" id="grid">
        <thead>
        <tr>
        <th data-type="number">No</th>
        <th data-type="string">Продукт</th>
        <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product_name" items="${listProductName}" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${product_name.product_name}</td>
                <td>
                    <a href="editProductName?id=${product_name.id}">Редактировать</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="deleteProductName?id=${product_name.id}">Удалить</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <button type="button" class="btn btn-danger" onClick='location.href="/bsuir"'>Назад</button>
</div>
<script>
    // сортировка таблицы
    // использовать делегирование!
    // должно быть масштабируемо:
    // код работает без изменений при добавлении новых столбцов и строк

    var grid = document.getElementById('grid');

    grid.onclick = function(e) {
        if (e.target.tagName != 'TH') return;

        // Если TH -- сортируем
        sortGrid(e.target.cellIndex, e.target.getAttribute('data-type'));
    };

    function sortGrid(colNum, type) {
        var tbody = grid.getElementsByTagName('tbody')[0];

        // Составить массив из TR
        var rowsArray = [].slice.call(tbody.rows);

        // определить функцию сравнения, в зависимости от типа
        var compare;

        switch (type) {
            case 'number':
                compare = function(rowA, rowB) {
                    return rowA.cells[colNum].innerHTML - rowB.cells[colNum].innerHTML;
                };
                break;
            case 'string':
                compare = function(rowA, rowB) {
                    return rowA.cells[colNum].innerHTML > rowB.cells[colNum].innerHTML ? 1 : -1;
                };
                break;
        }

        // сортировать
        rowsArray.sort(compare);

        // Убрать tbody из большого DOM документа для лучшей производительности
        grid.removeChild(tbody);

        // добавить результат в нужном порядке в TBODY
        // они автоматически будут убраны со старых мест и вставлены в правильном порядке
        for (var i = 0; i < rowsArray.length; i++) {
            tbody.appendChild(rowsArray[i]);
        }

        grid.appendChild(tbody);

    }
</script>
<script src="<c:url value="/resources/boot/js/bootstrap.min.js"/>"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<c:url value="/resources/boot/js/ie10-viewport-bug-workaround.js"/>"></script>
</body>
</html>

