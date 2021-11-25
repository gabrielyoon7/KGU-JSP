<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-22
  Time: 오전 4:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    /**
     * for page.jsp
     * */
    String jsp = (String) request.getAttribute("jsp");
%>
<!DOCTYPE html>
<html lang="en">
<%@include file="/WEB-INF/main/settings-top.jsp" %>
<body>
<%@include file="/WEB-INF/main/header.jsp" %>
<section class="heading-page header-text" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h6>나중에 수정 예정1</h6>
                <h2>나중에 수정 예정2</h2>
            </div>
        </div>
    </div>
</section>

<section class="meetings-page" id="meetings">
    <c:choose>
        <%--            account--%>
        <c:when test="${jsp == '\"loginPage\"'}">
            <%@include file="/WEB-INF/page/account/loginPage.jsp" %>
        </c:when>
        <c:when test="${jsp == '\"signup\"'}">
            <%@include file="/WEB-INF/page/account/signup.jsp" %>
        </c:when>

        <%--            bbs--%>
        <c:when test="${jsp == '\"bbs-list\"'}">
            <%@include file="/WEB-INF/page/bbs/bbs-list.jsp" %>
        </c:when>
        <c:when test="${jsp == '\"bbs-read\"'}">
            <%@include file="/WEB-INF/page/bbs/bbs-read.jsp" %>
        </c:when>

        <c:otherwise>
            <div>잘못된 jsp 변수가 넘어왔습니다.</div>
        </c:otherwise>
    </c:choose>

    <%@include file="/WEB-INF/main/footer.jsp" %>
</section>
<%@include file="/WEB-INF/main/settings-bottom.jsp" %>
</body>
</html>
