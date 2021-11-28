<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-22
  Time: 오전 4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String major = (String)request.getAttribute("major");
    String majorInfo = (String)request.getAttribute("majorInfo");
    String num =  (String)request.getAttribute("num");
    String majorAllInfo = (String) request.getAttribute("majorAllInfo");

            //    System.out.println(major);
    String user =  (String)session.getAttribute("user");
    String type =  (String)session.getAttribute("type");
    String menuTabs =  (String)session.getAttribute("menuTabs");
    String menuPages =  (String)session.getAttribute("menuPages");

%>
<!-- Sub Header -->
<div class="sub-header">
    <div class="container">
        <div class="d-flex justify-content-between">
<%--        <div class="row">--%>
            <div>
<%--            <div class="col-lg-8 col-sm-8">--%>
                <div class="left-content">
                    <a href="main.kgu" style="text-decoration:none ;">
                        <p><span>경기대학교</span> <em>AI컴퓨터공학부</em> <span>홈페이지 V2</span></p>
                    </a>
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
                <nav class="main-nav" id="headerLogo">
                    <!-- ***** Logo Start ***** -->
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav" id="headerMenu">

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
    function headerActionScript() {
        const dropdownOpener = $('.main-nav ul.nav .has-sub > a');

        // Open/Close Submenus
        if (dropdownOpener.length) {
            dropdownOpener.each(function () {
                var _this = $(this);

                _this.on('tap click', function (e) {
                    var thisItemParent = _this.parent('li'),
                        thisItemParentSiblingsWithDrop = thisItemParent.siblings('.has-sub');

                    if (thisItemParent.hasClass('has-sub')) {
                        var submenu = thisItemParent.find('> ul.sub-menu');

                        if (submenu.is(':visible')) {
                            submenu.slideUp(450, 'easeInOutQuad');
                            thisItemParent.removeClass('is-open-sub');
                        } else {
                            thisItemParent.addClass('is-open-sub');

                            if (thisItemParentSiblingsWithDrop.length === 0) {
                                thisItemParent.find('.sub-menu').slideUp(400, 'easeInOutQuad', function () {
                                    submenu.slideDown(250, 'easeInOutQuad');
                                });
                            } else {
                                thisItemParent.siblings().removeClass('is-open-sub').find('.sub-menu').slideUp(250, 'easeInOutQuad', function () {
                                    submenu.slideDown(250, 'easeInOutQuad');
                                });
                            }
                        }
                    }

                    e.preventDefault();
                });
            });
        }
    }

    $(document).ready(function () {
        makeLoginInfo();
        makeHeaderLogo();
        makeHeader();
        // headerActionScript();
        $.getScript('/assets/js/custom.js');
        makeColorSet();
    })


    function makeColorSet(){
        let majorInfo = <%=majorInfo%>;
        let rgb = majorInfo.color;
        let majorColor = document.getElementsByClassName("major-color");
        for( let i = 0; i < majorColor.length; i++ ){
            let component = majorColor.item(i);
            component.style.backgroundImage = 'none';
            component.style.backgroundColor = rgb;
        }
    }

    function makeLoginInfo(){
        let text = '';
        let temp = '';
        let user = <%=user%>;
        let loginInfo = $('#loginInfo');
        if(user == null){
            text+='<li><a href="adminLoginPage.kgu"><i class="fa fa-sign-in"></i> 관리자 로그인</a> <a href="loginPage.kgu"><i class="ms-2 fa fa-sign-in"></i> 구글 로그인</a></li>'
        }
        else {
            if(user.type=='관리자'){
                temp = '<a class="ms-2" href="admin.kgu?num=90">관리 페이지</a>';
            }
            else{
                temp = '<a class="ms-2" href="mypage.kgu">마이 페이지</a>';
            }

            text+='<li><a>안녕하세요 '+user.name+'님!</a> '+temp+' <a href="logout.kgu"><i class="ms-2 fa fa-sign-in"></i> 로그아웃</a></li>'
        }
        loginInfo.append(text);
    }

    function makeHeaderLogo(){
        let majorInfo = <%=majorInfo%>;
        let headerLogo = $('#headerLogo');
        let text='<a href="main.kgu?major='+majorInfo.code+'" class="logo">'+majorInfo.major+'</a>';
        headerLogo.prepend(text);
    }

    function makeHeader(){
        let menuTabs =  <%=menuTabs%>;
        let menuPages =  <%=menuPages%>;
        let major = <%=major%>;
        let majorAllInfo = <%=majorAllInfo%>;
        <%--let type = <%=type%>;--%>
        let text = '';
        let headerMenu = $('#headerMenu');
        for(let i = 0 ; i < menuTabs.length; i++){
            text+='<li class="has-sub">'
                +'<a href="javascript:void(0)">'+menuTabs[i].tab_title+'</a>'
                +'<ul class="sub-menu">';
            for(let j = 0 ; j < menuPages.length; j++){
                if(menuPages[j].tab_id ==menuTabs[i].tab_id){
                    text+='<li><a href="'+menuPages[j].page_path+'?major='+major+'&num='+menuPages[j].page_id+'">'+menuPages[j].page_title+'</a></li>';
                }
            }
            text+='</ul></li>';
        }
        text+='<li class="has-sub">'
            +'<a href="javascript:void(0)">전공 홈페이지</a>'
            +'<ul class="sub-menu">';
        for(let i = 0 ; i < majorAllInfo.length; i++){
            text+='<li><a href="main.kgu?major='+majorAllInfo[i].code+'">'+majorAllInfo[i].major+'</a></li>';
        }
        text+='</ul></li>';
        headerMenu.append(text);
    }
</script>