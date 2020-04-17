<%--
  Created by IntelliJ IDEA.
  User: iamof
  Date: 29.03.2020
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>FILMS</title>
    <link rel="stylesheet" href="<c:url value="/res/style.css"/>" type="text/css"/>
</head>
<body>
    <h2>Films</h2>
    <table>
        <thead>
            <tr>
                <td>id</td>
                <td>title</td>
                <td>year</td>
                <td>genre</td>
                <td>action</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="film" items="${filmsList}">
                <tr>
                    <td>${film.id}</td>
                    <td>${film.title}</td>
                    <td>${film.year}</td>
                    <td>${film.genre}</td>
                    <td>${film.watched}</td>
                    <td>
                        <a href="/edit/${film.id}">edit</a>
                        <a href="/delete/${film.id}">delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <h2>Add</h2>
    <c:url value="/add" var="add"/>
    <a href="${add}">Add new film</a>

    <c:forEach begin="1" end="${pagesCount}" step="1" varStatus="i">
        <c:url value="/" var="url">
            <c:param name="page" value="${i.index}"/>
        </c:url>
        <a href="${url}">${i.index}</a>
    </c:forEach>
</body>
</html>
