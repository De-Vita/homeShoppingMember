<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 4:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <table>
    <tr>
      <th>custno</th>
      <th>custname</th>
      <th>phone</th>
      <th>address</th>
      <th>joindate</th>
      <th>grade</th>
      <th>city</th>
    </tr>
    <tr>
      <td>${hsm.custno}</td>
      <td>${hsm.custname}</td>
      <td>${hsm.phone}</td>
      <td>${hsm.address}</td>
      <td>${hsm.joindate}</td>
      <td>${hsm.grade}</td>
      <td>${hsm.city}</td>
    </tr>
  </table>
</body>
</html>
