<%--
  Created by IntelliJ IDEA.
  User: iamof
  Date: 29.03.2020
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="<c:url value="/res/style.css"/>" type="text/css"/>
</head>
<body>
    <c:url value="/edit" var="var"/>
    <form action="${var}" method="POST">
        <input type="hidden" name="id" value="${film.id}">
        <label for="title">Title</label>
        <input type="text" name="title" id="title">
        <label for="year">Year</label>
        <input type="text" name="year" id="year">
        <label for="genre">Genre</label>
        <input type="text" name="genre" id="genre">
        <label for="watched">Watched</label>
        <input type="text" name="watched" id="watched">
        <input type="submit" value="Edit film">
    </form>
</body>
</html>
