<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 4:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>update.jsp</h2>
    <form action="/update" method="post">
    <input type="text" name="custno" value="${hsm.custno}" readonly> <br>
    <input type="text" name="custname" value="${hsm.custname}"> <br>
    <input type="text" name="phone" value="${hsm.phone}"> <br>
    <input type="text" name="address" value="${hsm.address}"> <br>
    <input type="text" name="joindate" value="${hsm.joindate}"> <br>
    <input type="text" name="grade" value="${hsm.grade}"> <br>
    <input type="text" name="city" value="${hsm.city}"> <br>
    <input type="submit" value="수정">
</form>
</body>
</html>
