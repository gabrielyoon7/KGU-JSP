<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-25
  Time: 오전 4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<meta name="google-signin-client_id"
      content="332973322660-geb01f3mfi84uin8c12li2rokap45jve.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script>
    function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
        var id_token = googleUser.getAuthResponse().id_token;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'googleLogin.kgu');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            console.log('Signed in as: ' + xhr.responseText);
            if (xhr.responseText == 'success'){
                window.location.href = 'main.kgu';

            }
            else if (xhr.responseText == 'register'){
                window.location.href = 'signupPage.kgu'
            }
            else {
                alert("잘못된 정보");
            }
        };
        xhr.send('idtoken=' + id_token);
    }
</script>


<div class="container">

    <div class="row">
        <div class="col-lg-12">
            <div class="meeting-single-item">
                <div class="card">
                    <div class="d-flex justify-content-center">
                        <div class="" style="width: 450px;">
                            <form method="POST" action="#" id="login_form">
                                <h1 class="h3 mb-3 fw-normal">로그인</h1>

                                <div class="form-floating">
                                    <input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력하세요">
                                    <label for="id">아이디</label>
                                    <input type="submit" onclick="letsSubmit()" style="display:none">
                                </div>
                                <div class="form-floating">
                                    <input type="password" class="form-control" name="password" id="password"
                                           placeholder="비밀번호를 입력하세요">
                                    <label for="password">비밀번호</label>
                                    <input type="hidden" name="password_hash" id="password_hash" class="iText"
                                           value="VALUE_NOT_EMPTY">
                                </div>

                                <div class="checkbox mb-3">
                                    <label>
                                        <p>
                                            <span id="wrong_password">초기 비밀번호는 생년월일(6자리)입니다.</span>
                                        </p>
                                        <a href="#">
                                            <div>아직 회원가입을 안하셨나요?</div>
                                        </a>
                                    </label>
                                </div>
                                <div style="width: 100%">
                                    <a href="#" class="w-100 btn btn-lg btn-primary text-center" onclick="letsSubmit()"
                                       style="text-decoration: none;">로그인</a>
                                </div>
                                <p class="mt-5 mb-3 text-muted"><a href="main.kgu">AI컴퓨터공학부 윤주현 &copy;2021</a></p>
                            </form>
                        </div>
                    </div>
                    <%--        구글 로그인 버튼 --%>
                    <div class="g-signin2 d-flex justify-content-center" data-onsuccess="onSignIn"></div>
                    <%--구글 로그인 버튼 끝--%>

                </div>
            </div>
        </div>
    </div>
</div>



<script>

    $(document).ready(function () {
        makeHeaderProfile(); //profile 제작
    })

    function makeHeaderProfile() {

    }


    function signOut() {
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function () {
            console.log('User signed out.');
            window.location.href = 'logout.kgu';
        });
    }

</script>

<%--구글 로그아웃 관련 설정 시작. 절대 건들지 마세요.--%>
<script>
    //절대 건들지 마세요. (위치 수정 금지)
    function onLoad() {
        gapi.load('auth2', function () {
            gapi.auth2.init();
        });
    }
</script>
<script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
<%--구글 로그아웃 관련 설정 끝 --%>