<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-22
  Time: 오전 4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String user =  (String)session.getAttribute("user");
%>
<!-- Sub Header -->
<div class="sub-header">
    <div class="container">
        <div class="d-flex justify-content-between">
<%--        <div class="row">--%>
            <div>
<%--            <div class="col-lg-8 col-sm-8">--%>
                <div class="left-content">
                    <p><span>경기대학교</span> <em>AI컴퓨터공학부</em> <span>차세대 홈페이지</span></p>
                </div>
            </div>
            <div>
<%--            <div class="col-lg-4 col-sm-4">--%>
                <div class="right-icons">
                    <ul id="loginInfo"></ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="main.kgu" class="logo">
                        컴퓨터공학전공
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li class="has-sub">
                            <a href="javascript:void(0)">학과소개</a>
                            <ul class="sub-menu">
                                <li><a href="bbs.kgu?mode=list&num=41">학과소개</a></li>
                                <li><a href="bbs.kgu?mode=list&num=42">연혁</a></li>
                                <li><a href="bbs.kgu?mode=list&num=42">교육환경</a></li>
                                <li><a href="bbs.kgu?mode=list&num=42">교육목표</a></li>
                            </ul>
                        </li>                        <li class="has-sub">
                            <a href="javascript:void(0)">교육활동</a>
                            <ul class="sub-menu">
                                <li><a href="bbs.kgu?mode=list&num=41">교육과정</a></li>
                                <li><a href="bbs.kgu?mode=list&num=42">학습활동</a></li>
                                <li><a href="bbs.kgu?mode=list&num=42">동아리소개</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">구성원</a>
                            <ul class="sub-menu">
                                <li><a href="bbs.kgu?mode=list&num=41">교수소개</a></li>
                                <li><a href="bbs.kgu?mode=list&num=42">연구실</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">학과알림</a>
                            <ul class="sub-menu">
                                <li><a href="bbs.kgu?mode=list&num=41">전체공지</a></li>
                                <li><a href="bbs.kgu?mode=list&num=42">학과공지</a></li>
                                <li><a href="bbs.kgu?mode=list&num=43">수업공지</a></li>
                                <li><a href="bbs.kgu?mode=list&num=44">취업공지</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">신청하기</a>
                            <ul class="sub-menu">
                                <li><a href="bbs.kgu?mode=list&num=41">신청 및 접수</a></li>
                                <li><a href="bbs.kgu?mode=list&num=42">졸업논문</a></li>
                                <li><a href="bbs.kgu?mode=list&num=43">학과 자료실</a></li>
                                <li><a href="bbs.kgu?mode=list&num=44">사물함 신청</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">웹진</a>
                            <ul class="sub-menu">
                                <li><a href="bbs.kgu?mode=list&num=41">학과 소식</a></li>
                                <li><a href="bbs.kgu?mode=list&num=42">우수 작품전</a></li>
                                <li><a href="bbs.kgu?mode=list&num=43">수상 소식</a></li>
                            </ul>
                        </li>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->
<script>
    $(document).ready(function () {
        makeLoginInfo();
    })
    function makeLoginInfo(){
        let text = '';
        let user = <%=user%>;
        let loginInfo = $('#loginInfo');
        if(user == null){
            text+='<li><a href="loginPage.kgu"><i class="fa fa-sign-in"></i> 로그인</a></li>'
        }
        else {
            text+='<li><a href="logout.kgu"><i class="fa fa-sign-in"></i> 로그아웃</a></li>'
        }
        loginInfo.append(text);
    }
</script>