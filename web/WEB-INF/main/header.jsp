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
        headerMenu.append(text);
    }
</script>