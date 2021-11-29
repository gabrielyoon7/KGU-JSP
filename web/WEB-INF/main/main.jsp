<%--
  Created by IntelliJ IDEA.
  User: gabri
  Date: 2021-11-15
  Time: 오후 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String slider = (String) request.getAttribute("slider");
//    String bannerList = (String) request.getAttribute("bannerList");
%>


<!DOCTYPE html>
<html lang="en">
<%@include file="settings-top.jsp" %>
<body>
<%@include file="header.jsp" %>
<!-- ***** Main Banner Area Start ***** -->
<section class="section main-banner" id="top" data-section="section1">
    <%--    <video autoplay muted loop id="bg-video">--%>
    <%--        <source src="assets/images/course-video.mp4" type="video/mp4"/>--%>
    <%--    </video>--%>
    <div id="bg-video"></div>

    <div class="video-overlay header-text">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="caption">
                        <h6>안녕하세요</h6>
                        <h2>AI컴퓨터공학부 201713919 윤주현입니다</h2>
                        <p>
                            기존 <a rel="nofollow" href="http://cs.kyonggi.ac.kr:8080" target="_blank">학과 홈페이지</a>
                            를 관리하면서 문제라고 생각되던 구조를 대폭 개선하여 처음부터 재설계를 해봤습니다.
                            <br>
                            프로젝트 유지보수를 하면서 느꼈던 근본적인 문제를 해결하기 위해 구조에 관련된 코드를 모조리 처음부터 다시 설계했습니다.
                            <br>
                            단, 프로젝트 규모 상 구조 개선과 직접적인 연관이 되는 기능만 컨셉을 일부 구현하고 연관이 없는 기능은 생략했습니다.
                        </p>
                        <div class="main-button-red">
                            <a href="https://github.com/gabrielyoon7/KGU-JSP-201713919"><div class="scroll-to-section">Github
                                Repository로 이동하기</div></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Main Banner Area End ***** -->

<section class="services">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="owl-service-item owl-carousel" id="banner">
                    <a href="http://swaig.kyonggi.ac.kr:8080">
                        <div class="item">
                            <div class="icon">
                                <img src="/assets/images/service-icon-03.png" alt="">
                            </div>
                            <div class="down-content">
                                <h4>SWAIG 홈페이지</h4>
                                <p>SWAIG(SW·AI Growing) 홈페이지</p>
                            </div>
                        </div>
                    </a>
                    <a href="https://kutis.kyonggi.ac.kr/webkutis/view/indexWeb.jsp">
                        <div class="item">
                            <div class="icon">
                                <img src="/assets/images/service-icon-03.png" alt="">
                            </div>
                            <div class="down-content">
                                <h4>KUTIS</h4>
                                <p>경기대학교 종합정보서비스</p>
                            </div>
                        </div>
                    </a>
                    <a href="https://lms.kyonggi.ac.kr/">
                        <div class="item">
                            <div class="icon">
                                <img src="/assets/images/service-icon-03.png" alt="">
                            </div>
                            <div class="down-content">
                                <h4>경기대 LMS</h4>
                                <p>경기대학교 학습 관리 시스템</p>
                            </div>
                        </div>
                    </a>
                    <a href="https://www.facebook.com/kgucs/">
                        <div class="item">
                            <div class="icon">
                                <img src="/assets/images/service-icon-03.png" alt="">
                            </div>
                            <div class="down-content">
                                <h4>Facebook</h4>
                                <p>AI컴퓨터공학부 공식 페이스북</p>
                            </div>
                        </div>
                    </a>
                    <a href="https://swuniv.kyonggi.ac.kr/introduction/organization">
                        <div class="item">
                            <div class="icon">
                                <img src="/assets/images/service-icon-03.png" alt="">
                            </div>
                            <div class="down-content">
                                <h4>소프트웨어중심대학사업단</h4>
                                <p>소프트웨어중심대학 홈페이지</p>
                            </div>
                        </div>
                    </a>
                    <a href="https://sites.google.com/kyonggi.ac.kr/ccsri">
                        <div class="item">
                            <div class="icon">
                                <img src="/assets/images/service-icon-03.png" alt="">
                            </div>
                            <div class="down-content">
                                <h4>콘텐츠융합소프트웨어연구소</h4>
                                <p>경기대학교 콘텐츠융합소프트웨어 연구소</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="upcoming-meetings" id="meetings">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mb-5">
                <div class="slider_position mb-5">
                    <%--                                    carousel start--%>
                    <div id="myCarousel" class="h-100 carousel slide card border border-primary"
                         data-bs-ride="carousel" style="margin-bottom : 0px; height:399px;">
                        <div class="carousel-indicators" id="carouselButton">
                            <%--   슬라이더 사진 개수와 동일한 버튼 만들어 줘야함 makecarouselCard에 있음--%>
                        </div>
                        <div class="carousel-inner h-100 " id="carouselCard">
                            <%--     makecarouselCard에 있음--%>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel"
                                data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel"
                                data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                    <%--                                    carousel end--%>
                </div>
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2>최근 게시글</h2>
                    </div>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="categories m-0">
                    <ul class="nav nav-tabs" id="myTab1" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab1" data-bs-toggle="tab" data-bs-target="#home1" type="button" role="tab" aria-controls="home" aria-selected="true">학과공지</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab1" data-bs-toggle="tab" data-bs-target="#profile1" type="button" role="tab" aria-controls="profile" aria-selected="false">수업공지</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab1" data-bs-toggle="tab" data-bs-target="#contact1" type="button" role="tab" aria-controls="contact" aria-selected="false">취업공지</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent1">
                        <div class="tab-pane fade show active" id="home1" role="tabpanel" aria-labelledby="home-tab1">
                            <div>게시글1</div>
                            <div>게시글2</div>
                        </div>
                        <div class="tab-pane fade" id="profile1" role="tabpanel" aria-labelledby="profile-tab1">2</div>
                        <div class="tab-pane fade" id="contact1" role="tabpanel" aria-labelledby="contact-tab1">3</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="categories m-0">
                    <ul class="nav nav-tabs" id="2" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab2" data-bs-toggle="tab" data-bs-target="#home2" type="button" role="tab" aria-controls="home" aria-selected="true">학과소식</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab2" data-bs-toggle="tab" data-bs-target="#profile2" type="button" role="tab" aria-controls="profile" aria-selected="false">우수작품전</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab2" data-bs-toggle="tab" data-bs-target="#contact2" type="button" role="tab" aria-controls="contact" aria-selected="false">수상소식</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent2">
                        <div class="tab-pane fade show active" id="home2" role="tabpanel" aria-labelledby="home-tab2">1</div>
                        <div class="tab-pane fade" id="profile2" role="tabpanel" aria-labelledby="profile-tab2">2</div>
                        <div class="tab-pane fade" id="contact2" role="tabpanel" aria-labelledby="contact-tab2">3</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="apply-now" id="apply">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 align-self-center">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="item">
                            <h3>경기대학교에 오신 것을 환영합니다.</h3>
                            <p>경기도 수원시 영통구 광교산로와 서울특별시 서대문구 경기대로에 위치한 사립종합대학입니다.</p>
                            <div class="main-button-red">
                                <div class="scroll-to-section"><a class="major-color" href="#">입학처 바로가기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="item">
                            <h3>소프트웨어경영대학 AI컴퓨터공학부</h3>
                            <p>컴퓨터과학과가 1980년도에 문을 연지 벌써 30년이 되었습니다. 그동안 2300여명의 졸업생을 배출하면서 컴퓨터 관련 전공으로는 규모가 전국에서 몇 손가락 안에 드는 학과가 되었습니다. 우리 학과는 열 한 분의 교수님들과 400여 명의 학생들이 우의와 신뢰로 배움과 가르침에 매진하고 있습니다.</p>
                            <div class="main-button-yellow">
                                <div class="scroll-to-section"><a class="major-color" href="#">오시는 길</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="accordions is-first-expanded">
                    <article class="accordion">
                        <div class="accordion-head">
                            <span>AI컴퓨터공학부</span>
                            <span class="icon">
                        <i class="icon fa fa-chevron-right"></i>
                    </span>
                        </div>
                        <div class="accordion-body">
                            <div class="content">
                                <p>컴퓨터과학과는 최고수준의 개인용 컴퓨터와 프로젝터 환경을 갖춘 4개의 실습실을 보유하고 있으며, 반 이상의 수업이 실습실에서 진행됩니다. 또한 팀프로젝트 진행을 위한 회의 공간과 세미나실을 제공하여 활발한 커뮤니케이션을 통한 창의적 인재를 양성하는데 힘을 쏟고 있습니다.</p>
                            </div>
                        </div>
                    </article>
                    <article class="accordion">
                        <div class="accordion-head">
                            <span>학과소개</span>
                            <span class="icon">
                        <i class="icon fa fa-chevron-right"></i>
                    </span>
                        </div>
                        <div class="accordion-body">
                            <div class="content">
                                <p>컴퓨터와 소프트웨어는 4차 산업혁명의 시대에 사회의 모든 부분을 구성하고 담당하고 있습니다. 컴퓨터과학과는 이러한 컴퓨터와 소프트웨어를 다루는 능력을 교육하여 미래 지능형 사회를 이끌어갈 인재를 양성합니다. 정부와 기업, 가정, 사회와 개인 생활의 모든 분야에서 소프트웨어는 핵심적인 역할을 하고 있습니다. 소프트웨어 개발자는 이러한 소프트웨어를 개발하고 관리하고 운영하는 역할을 하는 미래 사회의 핵심 인력입니다.</p>
                            </div>
                        </div>
                    </article>
                    <article class="accordion">
                        <div class="accordion-head">
                            <span>수요 지향적 소프트웨어 엔지니어 양성</span>
                            <span class="icon">
                        <i class="icon fa fa-chevron-right"></i>
                    </span>
                        </div>
                        <div class="accordion-body">
                            <div class="content">
                                <p>- 컴퓨터 과학의 기본개념과 구성원리 이해
                                    - 프로그래밍 능력과 도구의 활용 능력
                                    - 수요지향적 기술의 습득과 실무능력 향상
                                    - 다양한 분야와의 융·복합을 통한 새로운 소프트웨어 지식 창출</p>
                            </div>
                        </div>
                    </article>
                    <article class="accordion last-accordion">
                        <div class="accordion-head">
                            <span>국제적 경쟁력을 갖춘 글로벌 우수 인재 양성</span>
                            <span class="icon">
                        <i class="icon fa fa-chevron-right"></i>
                    </span>
                        </div>
                        <div class="accordion-body">
                            <div class="content">
                                <p>- 국제적인 수준의 프로그래밍 능력
                                    - 국제적인 IT 관련 표준과 용어의 이해
                                    - 국제적 표준을 이용한 설계 및 기술적 표현 능력 향상</p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="our-courses" id="courses">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading">
                    <h2>학부 주요 강좌 소개</h2>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="owl-courses-item owl-carousel">
                    <div class="item">
                        <img src="assets/images/course-01.jpg" alt="Course One">
                        <div class="down-content">
                            <h4>웹프로그래밍</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>1학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-02.jpg" alt="Course Two">
                        <div class="down-content">
                            <h4>지능웹설계</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>2학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-03.jpg" alt="">
                        <div class="down-content">
                            <h4>컴퓨터공학개별진로연구</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>2학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-04.jpg" alt="">
                        <div class="down-content">
                            <h4>데이터마이닝</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>1학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-01.jpg" alt="">
                        <div class="down-content">
                            <h4>자료구조론</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>1학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-02.jpg" alt="">
                        <div class="down-content">
                            <h4>자바프로그래밍</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>1학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-03.jpg" alt="">
                        <div class="down-content">
                            <h4>인공지능</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>1학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-04.jpg" alt="">
                        <div class="down-content">
                            <h4>객체지향프로그래밍</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>2학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-01.jpg" alt="">
                        <div class="down-content">
                            <h4>데이터베이스</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>2학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-02.jpg" alt="">
                        <div class="down-content">
                            <h4>머신러닝</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>2학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-03.jpg" alt="">
                        <div class="down-content">
                            <h4>분산및병렬처리</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>2학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-04.jpg" alt="">
                        <div class="down-content">
                            <h4>모바일프로그래밍</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>2학기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="our-facts">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>2021년도 경기대학교<br>AI컴퓨터공학부 현황</h2>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="count-area-content percentage">
                                    <div class="count-digit">94</div>
                                    <div class="count-title">취업률</div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="count-area-content">
                                    <div class="count-digit">500명</div>
                                    <div class="count-title">재학생</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="count-area-content new-students">
                                    <div class="count-digit">1234억원</div>
                                    <div class="count-title">예산</div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="count-area-content">
                                    <div class="count-digit">234개</div>
                                    <div class="count-title">수상실적</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 align-self-center">
                <div class="video">
                    <a href="https://www.youtube.com/watch?v=HndV87XpkWg" target="_blank"><img
                            src="assets/images/play-icon.png" alt=""></a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="contact-us" id="contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 align-self-center">
                <div class="row">
                    <div class="col-lg-12">
                        <form id="contact" action="" method="post">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h2>찾아오시는 길</h2>
                                </div>
                                <div class="col-lg-12">
                                    <div id="map"></div><br>
                                    <script>
                                        function initMap() {
                                            var map = new google.maps.Map(document.getElementById('map'), {
                                                center: {lat: 37.30069004788188, lng: 127.03655392727285},
                                                zoom: 16
                                            });
                                            var marker = new google.maps.Marker({
                                                position: {lat: 37.30069004788188, lng: 127.03655392727285},
                                                map: map
                                            });
                                        }
                                    </script>
                                    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBqeRrYz4_XJFY_vA9aqDbIiuU_Zs5odVA&callback=initMap"
                                            async defer></script>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="right-info major-color">
                    <ul>
                        <li>
                            <h6>연락처</h6>
                            <span>031-249-9670</span>
                        </li>
                        <li>
                            <h6>이메일</h6>
                            <span>aics8305@kyonggi.ac.kr</span>
                        </li>
                        <li>
                            <h6>주소</h6>
                            <span>(16227) 경기도 수원시 영통구 광교산로 154-42 육영관 8304호</span>
                        </li>
                        <li>
                            <h6>홈페이지 주소</h6>
                            <span>http://cs.kyonggi.ac.kr</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</section>
<%@include file="settings-bottom.jsp" %>
</body>
<script>
    $(document).ready(function () {
        makeCarouselCard();
        makeBackgroundColor();
        // makeBanner();
    })

    function makeBackgroundColor(){
        let majorInfo = <%=majorInfo%>;
        let rgb = majorInfo.color;
        document.getElementById("bg-video").style.backgroundColor = rgb;
    }

    function makeCarouselCard() { // 슬라이더 카드 만드는 함수
        var list = $('#carouselCard');
        var list2 = $('#carouselButton');
        var text = '';
        var text2 = '';
        var sliderList = <%=slider%>;
        if (sliderList.length == 0) { // 데이터가 없을 시 디폴트 화면 구성
            text2 += '<button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 0"></button>'
            text += '<div class="h-100 carousel-item active">';
            text += '<svg class="carousel-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>'
            text += '<div class="container"> <div class="carousel-caption"> <h1 class="text-white">등록된 대문이 없습니다.</h1> <p>관리자 모드에서 대문을 추가해주시기 바랍니다.</p> </div> </div>'
            text += '</div>';
        }
        for (var j = 0; j < sliderList.length; j++) {
            if (j == 0) {
                text2 += '<button type="button" data-bs-target="#myCarousel" data-bs-slide-to="' + j + '" class="active" aria-current="true" aria-label="Slide ' + j + '"></button>'
            } else {
                text2 += '<button type="button" data-bs-target="#myCarousel" data-bs-slide-to="' + j + '" aria-current="true" aria-label="Slide ' + j + '"></button>'
            }
        }
        list2.append(text2);
        for (var i = 0; i < sliderList.length; i++) {

            if (i == 0) {
                text += '<div class="carousel-item active">'
            } else {
                text += '<div class="carousel-item">'
            }
            text += '<img class="carousel-img" width="100%" height="100%" src = "' + sliderList[i].slider_img + '">'
            text += '</div>';
        }
        list.append(text);
    }

    <%--function makeBanner(){--%>
    <%--    let banner = $('#banner');--%>
    <%--    let text = '';--%>
    <%--    let majorList = <%=majorList%>;--%>
    <%--    let bannerList = <%=bannerList%>;--%>

    <%--    for(let i = 0 ; i < majorList.length; i++){--%>
    <%--        text+='<div class="item">'--%>
    <%--            +'<div class="icon">'--%>
    <%--            +'<img src="/assets/images/service-icon-01.png" alt="">'--%>
    <%--            +'</div>'--%>
    <%--            +'<div class="down-content">'--%>
    <%--            +'<a href="main.kgu?major='+majorList[i].code+'">'--%>
    <%--            +'<h4>'+majorList[i].major+'</h4>'--%>
    <%--            +'<p>전공 홈페이지로 이동하기</p>'--%>
    <%--            +'</a>'--%>
    <%--            +'</div>'--%>
    <%--            +'</div>'--%>
    <%--    }--%>
    <%--    for(let i = 0 ; i < bannerList.length; i++){--%>
    <%--        text+='<div class="item">'--%>
    <%--            +'<div class="icon">'--%>
    <%--            +'<img src="/assets/images/service-icon-02.png" alt="">'--%>
    <%--            +'</div>'--%>
    <%--            +'<div class="down-content">'--%>
    <%--            +'<a href="'+bannerList[i].link+'">'--%>
    <%--            +'<h4>'+bannerList[i].title+'</h4>'--%>
    <%--            +'<p>'+bannerList[i].description+'</p>'--%>
    <%--            +'</a>'--%>
    <%--            +'</div>'--%>
    <%--            +'</div>'--%>
    <%--    }--%>

    <%--    banner.append(text);--%>
    <%--}--%>
</script>
<style>
    #map{
        height: 400px;
        width: 100%;
    }
</style>
</html>