<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h2>save</h2>
  <form action="/save" method="post">
    <input type="text" name="custname" placeholder="회원성명"> <br>
    <input type="text" name="phone" placeholder="회원전화"> <br>
    <input type="text" name="address" placeholder="회원주소"> <br>
    <input type="text" name="joindate" placeholder="가입일자"> <br>
    <input type="text" name="grade" placeholder="고객등급"> <br>
    <input type="text" name="city" placeholder="도시코드">
    <input type="submit" value="등록">
  </form>
</body>
</html>
