<%--
  Created by IntelliJ IDEA.
  User: j.kaisanlahti
  Date: 10.6.2021
  Time: 13.03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String[] cities = {"Helsinki", "Minsk", "Osaka"};

    pageContext.setAttribute("myCities", cities);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Foreach test</title>
</head>
<body>
<h1>Foreach test</h1>
<ul>
    <c:forEach var="tempCity" items="${myCities}">
        <li>${tempCity}</li>
    </c:forEach>
</ul>
</body>
</html>
