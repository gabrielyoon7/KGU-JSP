<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-27
  Time: 오후 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
</head>
<body>
<form name="loginForm" action="j_security_check" method="post">
    <p> 사용자명: <input type="text" name="j_username" id="name1">
    <p> 비밀번호 : <input type="password" name="j_password" id="password1">
    <p><input type="submit" value="전송">
</form>
<button  onclick="read()">dd</button>
</body>
<script>
    function read(){
        const name = document.getElementById('name1').value;
        const pw = document.getElementById('password1').value;
        alert(name+' '+pw);
    }
</script>
</html>