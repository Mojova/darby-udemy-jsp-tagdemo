<%--
  Created by IntelliJ IDEA.
  User: j.kaisanlahti
  Date: 10.6.2021
  Time: 16.17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Function test</title>
</head>
<body>
<c:set var="data" value="luv2code" />
<h1>Function test</h1>
<p>Length of string <strong>${data}</strong>: ${fn:length(data)}</p>
<p>Uppercase version of the string <strong>${data}</strong>: ${fn:toUpperCase(data)}</p>
<p>Does the string <strong>${data}</strong> start with <strong>luv</strong>?: ${fn:startsWith(data, "luv")}</p>
</body>
</html>
