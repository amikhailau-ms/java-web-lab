<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>Интернет-магазин</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <link rel="stylesheet" href="styles/styles.css">
</head>
<body>
<jsp:include page="_header.jsp"></jsp:include>
<jsp:include page="_menu.jsp"></jsp:include>
<p style="color: red;">${errorString}</p>
<div class="page-container">
    <!--<div class="page-form">
        <form name="clientForm" onsubmit="return submitFunc();">
        </form>
    </div>-->
    <div class="page-table">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">ФИО</th>
                <th scope="col">Номер телефона</th>
                <th scope="col">Заказы</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${clients}" var="client">
                <tr>
                    <td>${client.getId()}</td>
                    <td>${client.getName()}</td>
                    <td>${client.getPhone()}</td>
                    <td><a href="${pageContext.request.contextPath}/newWeb_6?command=clientorders&id=${client.getId()}">Перейти</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>