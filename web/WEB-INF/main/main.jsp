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
    String majorList = (String) request.getAttribute("majorList");
    String bannerList = (String) request.getAttribute("bannerList");
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
    <div class="bg-danger" id="bg-video"></div>

    <div class="video-overlay header-text">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="caption">
                        <h6>안녕하세요</h6>
                        <h2>AI컴퓨터공학부 201713919 윤주현입니다</h2>
                        <p>
                            기존 <a rel="nofollow" href="http://cs.kyonggi.ac.kr:8080" target="_blank">학과 홈페이지</a>
                            를 관리하면서 문제라고 생각되던 구조를 대폭 개선하여
                            <br>
                            처음부터 재설계를 해봤습니다.
                            <br>
                            프로젝트 관리를 하면서 느꼈던 근본적인 문제를 해결하기 위해 기존 기능을 유지하되,
                            <br>
                            기능 동작에 관련된 코드를 모조리 다시 설계했습니다.
                        </p>
                        <div class="main-button-red">
                            <div class="scroll-to-section"><a href="https://github.com/gabrielyoon7/KGU-JSP-201713919">Github
                                Repository로 이동하기</a></div>
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
                                <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non
                                    vestibulum.</p>
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
                                <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non
                                    vestibulum.</p>
                            </div>
                        </div>
                    </a>
                    <a href="https://lms.kyonggi.ac.kr/">
                        <div class="item">
                            <div class="icon">
                                <img src="/assets/images/service-icon-03.png" alt="">
                            </div>
                            <div class="down-content">
                                <h4>LMS</h4>
                                <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non
                                    vestibulum.</p>
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
                                <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non
                                    vestibulum.</p>
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
                                <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non
                                    vestibulum.</p>
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
                                <p>Suspendisse tempor mauris a sem elementum bibendum. Praesent facilisis massa non
                                    vestibulum.</p>
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
                    영역1
                </div>
            </div>
            <div class="col-lg-6">
                <div class="categories m-0">
                    영역2
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
                            <h3>APPLY FOR BACHELOR DEGREE</h3>
                            <p>You are allowed to use this edu meeting CSS template for your school or university or
                                business. You can feel free to modify or edit this layout.</p>
                            <div class="main-button-red">
                                <div class="scroll-to-section"><a href="#contact">Join Us Now!</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="item">
                            <h3>APPLY FOR BACHELOR DEGREE</h3>
                            <p>You are not allowed to redistribute the template ZIP file on any other template website.
                                Please contact us for more information.</p>
                            <div class="main-button-yellow">
                                <div class="scroll-to-section"><a href="#contact">Join Us Now!</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="accordions is-first-expanded">
                    <article class="accordion">
                        <div class="accordion-head">
                            <span>About Edu Meeting HTML Template</span>
                            <span class="icon">
                        <i class="icon fa fa-chevron-right"></i>
                    </span>
                        </div>
                        <div class="accordion-body">
                            <div class="content">
                                <p>If you want to get the latest collection of HTML CSS templates for your websites, you
                                    may visit <a rel="nofollow" href="https://www.toocss.com/" target="_blank">Too CSS
                                        website</a>. If you need a working contact form script, please visit <a
                                            href="https://templatemo.com/contact" target="_parent">our contact page</a>
                                    for more info.</p>
                            </div>
                        </div>
                    </article>
                    <article class="accordion">
                        <div class="accordion-head">
                            <span>HTML CSS Bootstrap Layout</span>
                            <span class="icon">
                        <i class="icon fa fa-chevron-right"></i>
                    </span>
                        </div>
                        <div class="accordion-body">
                            <div class="content">
                                <p>Etiam posuere metus orci, vel consectetur elit imperdiet eu. Cras ipsum magna,
                                    maximus at semper sit amet, eleifend eget neque. Nunc facilisis quam purus, sed
                                    vulputate augue interdum vitae. Aliquam a elit massa.<br><br>
                                    Nulla malesuada elit lacus, ac ultricies massa varius sed. Etiam eu metus eget nibh
                                    consequat aliquet. Proin fringilla, quam at euismod porttitor, odio odio tempus
                                    ligula, ut feugiat ex erat nec mauris. Donec viverra velit eget lectus sollicitudin
                                    tincidunt.</p>
                            </div>
                        </div>
                    </article>
                    <article class="accordion">
                        <div class="accordion-head">
                            <span>Please tell your friends</span>
                            <span class="icon">
                        <i class="icon fa fa-chevron-right"></i>
                    </span>
                        </div>
                        <div class="accordion-body">
                            <div class="content">
                                <p>Ut vehicula mauris est, sed sodales justo rhoncus eu. Morbi porttitor quam velit, at
                                    ullamcorper justo suscipit sit amet. Quisque at suscipit mi, non efficitur
                                    velit.<br><br>
                                    Cras et tortor semper, placerat eros sit amet, porta est. Mauris porttitor sapien et
                                    quam volutpat luctus. Nullam sodales ipsum ac neque ultricies varius.</p>
                            </div>
                        </div>
                    </article>
                    <article class="accordion last-accordion">
                        <div class="accordion-head">
                            <span>Share this to your colleagues</span>
                            <span class="icon">
                        <i class="icon fa fa-chevron-right"></i>
                    </span>
                        </div>
                        <div class="accordion-body">
                            <div class="content">
                                <p>Maecenas suscipit enim libero, vel lobortis justo condimentum id. Interdum et
                                    malesuada fames ac ante ipsum primis in faucibus.<br><br>
                                    Sed eleifend metus sit amet magna tristique, posuere laoreet arcu semper. Nulla
                                    pellentesque ut tortor sit amet maximus. In eu libero ullamcorper, semper nisi quis,
                                    convallis nisi.</p>
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
                    <h2>Our Popular Courses</h2>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="owl-courses-item owl-carousel">
                    <div class="item">
                        <img src="assets/images/course-01.jpg" alt="Course One">
                        <div class="down-content">
                            <h4>Morbi tincidunt elit vitae justo rhoncus</h4>
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
                                        <span>$160</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-02.jpg" alt="Course Two">
                        <div class="down-content">
                            <h4>Curabitur molestie dignissim purus vel</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>$180</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-03.jpg" alt="">
                        <div class="down-content">
                            <h4>Nulla at ipsum a mauris egestas tempor</h4>
                            <div class="info">
                                <div class="row">
                                    <div class="col-8">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <span>$140</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-04.jpg" alt="">
                        <div class="down-content">
                            <h4>Aenean molestie quis libero gravida</h4>
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
                                        <span>$120</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-01.jpg" alt="">
                        <div class="down-content">
                            <h4>Lorem ipsum dolor sit amet adipiscing elit</h4>
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
                                        <span>$250</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-02.jpg" alt="">
                        <div class="down-content">
                            <h4>TemplateMo is the best website for Free CSS</h4>
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
                                        <span>$270</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-03.jpg" alt="">
                        <div class="down-content">
                            <h4>Web Design Templates at your finger tips</h4>
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
                                        <span>$340</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-04.jpg" alt="">
                        <div class="down-content">
                            <h4>Please visit our website again</h4>
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
                                        <span>$360</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-01.jpg" alt="">
                        <div class="down-content">
                            <h4>Responsive HTML Templates for you</h4>
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
                                        <span>$400</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-02.jpg" alt="">
                        <div class="down-content">
                            <h4>Download Free CSS Layouts for your business</h4>
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
                                        <span>$430</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-03.jpg" alt="">
                        <div class="down-content">
                            <h4>Morbi in libero blandit lectus cursus</h4>
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
                                        <span>$480</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/images/course-04.jpg" alt="">
                        <div class="down-content">
                            <h4>Curabitur molestie dignissim purus</h4>
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
                                        <span>$560</span>
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
                        <h2>A Few Facts About Our University</h2>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="count-area-content percentage">
                                    <div class="count-digit">94</div>
                                    <div class="count-title">Succesed Students</div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="count-area-content">
                                    <div class="count-digit">126</div>
                                    <div class="count-title">Current Teachers</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="count-area-content new-students">
                                    <div class="count-digit">2345</div>
                                    <div class="count-title">New Students</div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="count-area-content">
                                    <div class="count-digit">32</div>
                                    <div class="count-title">Awards</div>
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
                                    <h2>Let's get in touch</h2>
                                </div>
                                <div class="col-lg-4">
                                    <fieldset>
                                        <input name="name" type="text" id="name" placeholder="YOURNAME...*" required="">
                                    </fieldset>
                                </div>
                                <div class="col-lg-4">
                                    <fieldset>
                                        <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*"
                                               placeholder="YOUR EMAIL..." required="">
                                    </fieldset>
                                </div>
                                <div class="col-lg-4">
                                    <fieldset>
                                        <input name="subject" type="text" id="subject" placeholder="SUBJECT...*"
                                               required="">
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <textarea name="message" type="text" class="form-control" id="message"
                                                  placeholder="YOUR MESSAGE..." required=""></textarea>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="button">SEND MESSAGE NOW</button>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="right-info">
                    <ul>
                        <li>
                            <h6>Phone Number</h6>
                            <span>010-020-0340</span>
                        </li>
                        <li>
                            <h6>Email Address</h6>
                            <span>info@meeting.edu</span>
                        </li>
                        <li>
                            <h6>Street Address</h6>
                            <span>Rio de Janeiro - RJ, 22795-008, Brazil</span>
                        </li>
                        <li>
                            <h6>Website URL</h6>
                            <span>www.meeting.edu</span>
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
        // makeBanner();
    })

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

</html>