<%--
  Created by IntelliJ IDEA.
  User: himmat
  Date: 22/9/20
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main menu</title>
</head>
<body>
<h1>Student show page</h1>
<hr>
<h4> Student First Name : ${student.firstName}</h4>
<h4> Student Last Name : ${student.lastName}</h4>
<h4> Student Country : ${student.country}</h4>
<h4> Student Favorite Language : ${student.favoriteLanguage}</h4>
<h4>Student operating Systems</h4>
<ul>
    <c:forEach var="temp" items="${student.operatingSystems}">

        <li> ${temp} </li>

    </c:forEach>
</ul>


</body>
</html>
