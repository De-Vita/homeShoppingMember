<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 3:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>list.jsp</h2>
    <table style="text-align: center">
        <tr>
            <th>custno</th>
            <th>custname</th>
<%--            <th>phone</th>--%>
<%--            <th>address</th>--%>
<%--            <th>joindate</th>--%>
<%--            <th>grade</th>--%>
<%--            <th>city</th>--%>
        </tr>
        <c:forEach items="${hsmList}" var="hsm">
            <tr>
                <td>${hsm.custno}</td>
                <td>${hsm.custname}</td>
<%--                <td>${hsm.phone}</td>--%>
<%--                <td>${hsm.address}</td>--%>
<%--                <td>${hsm.joindate}</td>--%>
<%--                <td>${hsm.grade}</td>--%>
<%--                <td>${hsm.city}</td>--%>
                <td>
                    <button onclick="detail_cust(${hsm.custno})">조회</button>
                </td>
                <td>
                    <button onclick="update_cust(${hsm.custno})">수정</button>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
<script>
    const detail_cust = (custno) => {
      location.href = "/detail?custno="+custno;
    }
    const update_cust = (custno) => {
      location.href = "/update?custno="+custno;
    }
</script>
</html>
