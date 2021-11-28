<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-25
  Time: 오전 4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container">

    <div class="row">
        <div class="col-lg-12">
            <div class="meeting-single-item">
                <div class="card">
                    <div class="d-flex justify-content-center">
                        <div class="" style="width: 450px;">
                            <form method="POST" action="adminLogin.kgu" id="login_form">
                                <h1 class="h3 mb-3 fw-normal">관리자 로그인</h1>
                                <div class="form-floating">
                                    <input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력하세요">
                                    <label for="id">아이디</label>
                                    <input type="submit" style="display:none">
                                </div>
                                <div class="form-floating">
                                    <input type="password" class="form-control" name="password" id="password"
                                           placeholder="비밀번호를 입력하세요">
                                    <label for="password">비밀번호</label>
                                    <input type="hidden" name="password_hash" id="password_hash" class="iText"
                                           value="VALUE_NOT_EMPTY">
                                </div>
                                <div style="width: 100%">
                                    <input class="w-100 btn btn-lg btn-primary text-center"  type="submit" value="전송">
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
