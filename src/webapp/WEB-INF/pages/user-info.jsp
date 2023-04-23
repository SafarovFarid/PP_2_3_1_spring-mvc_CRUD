<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User info</title>
  <br>
</head>
<body>
<form:form action="/saveUser" modelAttribute="user">
    <form:hidden path="id"/>
    Name <form:input path="name"/>
    <br><br>
    Lastname <form:input path="lastName"/>
    <br><br>
    <input type = "submit" value="Add new user">
</form:form>

</body>
</html>
