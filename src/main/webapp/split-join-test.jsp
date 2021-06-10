<%--
  Created by IntelliJ IDEA.
  User: j.kaisanlahti
  Date: 10.6.2021
  Time: 16.24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Split join test</title>
</head>
<body>
<c:set var="data" value="Helsinki,Tallinn,Riga,Vilnius,Minsk" />
<h1>Split join test</h1>
<h2>Split test</h2>
<c:set var="cities" value="${fn:split(data, ',')}" />
<ul>
    <c:forEach var="city" items="${cities}">
        <li>${city}</li>
    </c:forEach>
</ul>
<h2>Join test</h2>
<c:set var="joined" value="${fn:join(cities, ', ')}" />
<p>Result of joining: ${joined}</p>
</body>
</html>
