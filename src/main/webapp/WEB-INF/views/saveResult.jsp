<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 3:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <script>
    const result = ${result};
    console.log(result);
    if (result > 0) {
      alert("등록 성공");
      location.href = "/";
    }else {
      alert("등록 실패");
      location.href = "/save";
    }
  </script>
</head>
<body>
  <h2>saveResult.jsp</h2>
</body>
</html>
