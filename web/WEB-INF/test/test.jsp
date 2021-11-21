<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-22
  Time: 오전 1:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String data = (String)request.getAttribute("test");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%=data%>
</body>
</html>
