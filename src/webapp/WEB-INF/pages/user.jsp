<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>
<h2>All users</h2>
<br>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>LastName</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="user" items="${users}">

        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.lastName}</td>
            <td>
                <a href="/update/${user.id}">update</a>
                <a href="/delete/${user.id}">delete</a>
            </td>
        </tr>

    </c:forEach>
</table>
<br>

<input type="button" value="Add" onclick="window.location.href='addNewUser'">

</body>
</html>
