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
<section class="heading-page header-text major-color" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12" id="sectionTitles"></div>
        </div>
    </div>
</section>

<section class="meetings-page" id="meetings">
    <c:choose>
        <%--            account--%>
        <c:when test="${jsp == '\"loginPage\"'}">
            <%@include file="/WEB-INF/page/account/loginPage.jsp" %>
        </c:when>
        <c:when test="${jsp == '\"signupPage\"'}">
            <%@include file="/WEB-INF/page/account/signupPage.jsp" %>
        </c:when>
        <c:when test="${jsp == '\"myPage\"'}">
            <%@include file="/WEB-INF/page/account/myPage.jsp" %>
        </c:when>

        <%--            bbs--%>
        <c:when test="${jsp == '\"bbs-list\"'}">
            <%@include file="/WEB-INF/page/bbs/bbs-list.jsp" %>
        </c:when>
        <c:when test="${jsp == '\"bbs-read\"'}">
            <%@include file="/WEB-INF/page/bbs/bbs-read.jsp" %>
        </c:when>

        <%--            information--%>
        <c:when test="${jsp == '\"information\"'}">
            <%@include file="/WEB-INF/page/information/information.jsp" %>
        </c:when>

        <%--            admin--%>
        <c:when test="${jsp == '\"adminLoginPage\"'}">
            <%@include file="/WEB-INF/page/account/adminLoginPage.jsp" %>
        </c:when>
        <c:when test="${jsp == '\"admin_user\"'}">
            <%@include file="/WEB-INF/page/admin/admin_user.jsp" %>
        </c:when>


        <c:otherwise>
            <div>잘못된 jsp 변수가 넘어왔습니다.</div>
        </c:otherwise>
    </c:choose>

    <%@include file="/WEB-INF/main/footer.jsp" %>
</section>
<%@include file="/WEB-INF/main/settings-bottom.jsp" %>
</body>
<script>
    function makeSection() {
        let num = <%=num%>;
        let tab_id = num.slice(0, -1);
        console.log(tab_id);
        let menuTabs =  <%=menuTabs%>;
        let menuPages =  <%=menuPages%>;
        let section = $('#sectionTitles');
        let text='';
        for(let i = 0 ; i< menuTabs.length; i++){
            if(menuTabs[i].tab_id == tab_id){
                text+='<h6>'+menuTabs[i].tab_title+'</h6>'
                break;
            }
        }
        for(let i = 0 ; i < menuPages.length; i ++){
            if(menuPages[i].page_id == num){
                text+='<h2>'+menuPages[i].page_title+'</h2>'
                break;
            }
        }
        section.append(text);
    }

    $(document).ready(function () {
        makeSection();
    })

</script>
</html>
