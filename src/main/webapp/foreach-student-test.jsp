<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="fi.hovukas.darby_udemy_jsp_tagdemo.Student" %><%--
  Created by IntelliJ IDEA.
  User: j.kaisanlahti
  Date: 10.6.2021
  Time: 13.18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    List<Student> data = new ArrayList<>();
    data.add(new Student("Matti", "Meikäläinen", false));
    data.add(new Student("Tiina", "Teikäläinen", false));
    data.add(new Student("Hanna", "Heikäläinen", true));

    pageContext.setAttribute("students", data);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Foreach student test</title>
</head>
<body>
<h1>Foreach student test</h1>
<table>
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Gold customer</th>
    </tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>${student.goldCustomer}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
