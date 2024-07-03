<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book Details</title>
</head>
<body>
<nav>
    <jsp:include page="navLinks.jsp"/>
</nav>
<table border="1">
    <thead>
    <th>isbn</th>
    <th>title</th>
    <th>author</th>
    <th>publisher</th>
    <th>type</th>
    </thead>
    <tbody>
        <tr>
            <td>${details.isbn}</td>
            <td>${details.title}</td>
            <td>${details.author}</td>
            <td>${details.publisher}</td>
            <td>${details.type}</td>
        </tr>
    </tbody>
</table>
</body>
</html>
