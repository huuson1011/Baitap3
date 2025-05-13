<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Login Form</title></head>
<body>
    <h2>Login Form</h2>
    <form method="post" action="login">
        Username: <input type="text" name="username" /><br/>
        Password: <input type="password" name="password" /><br/>
        <input type="submit" value="Login"/>
    </form>

    <c:if test="${not empty requestScope.message}">
        <p style="color:red">${requestScope.message}</p>
    </c:if>
</body>
</html>