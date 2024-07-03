<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Author Form</title>
</head>
<body>
<nav>
    <jsp:include page="navLinks.jsp"/>
</nav>
<form:form method="post" action ="/admin/books/edit" modelAttribute="book">
    <form:hidden path="id"/>
    <label for="isbn">isbn</label>
    <form:input path="isbn" id ="isbn" required="true"/>
    <form:errors path="isbn" cssClass="error"/>

    <label for="title">title</label>
    <form:input path="title" id ="title" required="true"/>
    <form:errors path="title" cssClass="error"/>

    <label for="author">author</label>
    <form:input path="author" id ="author" required="true"/>
    <form:errors path="author" cssClass="error"/>

    <label for="publisher">publisher</label>
    <form:input path="publisher" id ="publisher" required="true"/>
    <form:errors path="publisher" cssClass="error"/>

    <label for="type">type</label>
    <form:input path="type" id ="type" required="true"/>
    <form:errors path="type" cssClass="error"/>

    <button type="submit">Submit</button>
</form:form>
</body>
</html>

