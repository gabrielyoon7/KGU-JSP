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
            <%@include file="/WEB-INF/page/admin/adminLoginPage.jsp" %>
        </c:when>
        <c:when test="${jsp == '\"admin_main\"'}">
            <%@include file="/WEB-INF/page/admin/admin_main.jsp" %>
        </c:when>
        <c:when test="${jsp == '\"admin_major\"'}">
            <%@include file="/WEB-INF/page/admin/admin_major.jsp" %>
        </c:when>
        <c:when test="${jsp == '\"admin_slider\"'}">
            <%@include file="/WEB-INF/page/admin/admin_slider.jsp" %>
        </c:when>


        <c:otherwise>
            <div>잘못된 jsp 변수가 넘어왔습니다.</div>
        </c:otherwise>
    </c:choose>

    <%@include file="/WEB-INF/main/footer.jsp" %>
</section>
<!-- Modal start-->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" id="modal-header"></div>
            <div class="modal-body" id="modal-body"></div>
            <div class="modal-footer" id="modal-footer"></div>
        </div>
    </div>
</div>
<%-- Modal end--%>
<%@include file="/WEB-INF/main/settings-bottom.jsp" %>
</body>
<script>
    function makeSection() {
        let num = <%=num%>;
        let tab_id = num.slice(0, -1);
        // console.log(tab_id);
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

<script>
    $(document).ready(function () {
        makeSidePageMenu();
    })

    function makeSidePageMenu(){
        let menuPages =  <%=menuPages%>;
        let sideMenu = $('#sideMenu');
        let text='<div class="list-group ">';
        let major = <%=major%>;
        let num = <%=num%>;
        let tab_id = parseInt(parseInt(num)/10);
        for(let j = 0 ; j < menuPages.length; j++){
            // console.log(menuPages[j].tab_id);
            // console.log(tab_id);

            if(menuPages[j].tab_id == tab_id){
                text+='<a class="text-black border-top border-bottom" href="'+menuPages[j].page_path+'?major='+major+'&num='+menuPages[j].page_id+'">'
                    +'<div class="d-flex w-100 py-2"><h5>● '+menuPages[j].page_title+'</h5></div>'
                    +'</a>';
            }
        }
        text+='</div>'
        console.log(text);
        sideMenu.append(text);
    }

</script>
</html>
