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
    <title>Form</title>
</head>
<body>
<h1>Student Registration Form Page</h1>
<hr>
<form:form action="studentProcessForm"  modelAttribute="student" method = "POST">
    <h3>Student First Name:--></h3>
    <input type="text" name="firstName" placeholder="what's your first name">
    <br><br>
    <h3>Student Last Name:--></h3>
    <input type="text" name="lastName" placeholder="what's your last name">
    <br><br>
    <h3>Select Country:--></h3>
    <form:select path="country">
        <form:options items="${student.countryOptions}"/>
    </form:select>
    <br><br>
    <h3>Favorite Language:--></h3>
    <form:radiobuttons path = "favoriteLanguage" items = "${student.languageList}" />
    <br><br>
    <h3>Operating Systems:--></h3>
    <form:checkboxes path = "operatingSystems" items = "${student.os}" />
    <br><br>
    <input type = "submit" value = "Register" />
</form:form>



</body>
</html>