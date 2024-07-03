<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book List</title>
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

    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td><c:out value="${book.isbn}"/></td>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.author}"/></td>
            <td><a href="${pageContext.request.contextPath}/admin/books/edit/${book.id}"><button type="submit">Edit</button></a>
                <a href="${pageContext.request.contextPath}/admin/books/bookDetails/${book.id}"><button type="submit">Details</button></a>
                <a href="${pageContext.request.contextPath}/admin/books/delete/${book.id}"><button type="submit">Delete</button></a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>


