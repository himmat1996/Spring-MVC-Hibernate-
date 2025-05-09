<%--
  Created by IntelliJ IDEA.
  User: himmat
  Date: 22/9/20
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Customer Form</title>
    <style>
        .error{color: red}
    </style>
</head>
<body>
<i>Fill out form. Asterisk(*) means required.</i>
<h1>Customer Registration Form Page</h1>
<hr>
<form:form action="customerProcessForm" modelAttribute="customer">

    First name: <form:input path="firstName" />

    <br><br>

    Last name (*): <form:input path="lastName" />
    <form:errors path="lastName" cssClass="error" />

    <br><br>

    Free passes  (*): <form:input path="freePasses" />
    <form:errors path="freePasses" cssClass="error" />

    <br><br>

    Postal Code: <form:input path="postalCode" />
    <form:errors path="postalCode" cssClass="error" />

    <br><br>

    Course Code: <form:input path="courseCode" />
    <form:errors path="courseCode" cssClass="error" />

    <br><br>

    <input type="submit" value="Submit" />

</form:form>



</body>
</html>