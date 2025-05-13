<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Kết quả</title></head>
<body>
    <h2>Kết quả đăng nhập</h2>
    <c:choose>
        <c:when test="${requestScope.message == 'Đăng nhập thành công!'}">
            <p style="color:green">${requestScope.message}</p>
        </c:when>
        <c:otherwise>
            <p style="color:red">${requestScope.message}</p>
        </c:otherwise>
    </c:choose>
</body>
</html>