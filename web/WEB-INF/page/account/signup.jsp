<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-25
  Time: 오후 7:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String google_id = (String) session.getAttribute("google_id");
    String google_name = (String) session.getAttribute("google_name");
    String google_email = (String) session.getAttribute("google_email");
    String google_imageUrl = (String) session.getAttribute("google_imageUrl");
    String majorList = (String) request.getAttribute("majorList");
%>
<div class="container">

    <div class="row">
        <div class="col-lg-12">
            <div class="meeting-single-item">
                <div class="card">

                    <form action="#" method="post">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="google_email" placeholder="name@kyonggi.ac.kr" value="<%=google_email%>" readonly>
                            <label for="google_email">학교 메일(Google)</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="name" placeholder="실제 이름을 적어주세요.">
                            <label for="name">이름</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="univ_id" placeholder="ex)201700000">
                            <label for="univ_id">학번</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="date" class="form-control" id="birthday" placeholder="">
                            <label for="birthday">생년월일</label>
                        </div>
                        <div class="form-group position-relative mb-3">
                            <label for="gender" class="form-label">성별</label>
                            <div id="gender">
                                <div class="form-check">
                                    <input id="male" name="gender" type="radio" class="form-check-input" value="남" required>
                                    <label class="form-check-label" for="male">남</label>
                                </div>
                                <div class="form-check">
                                    <input id="female" name="gender" type="radio" class="form-check-input" value="여" required>
                                    <label class="form-check-label" for="female">여</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="phone" placeholder="ex) 010-0000-0000">
                            <label for="phone">전화번호(-을 포함해서 적어주세요)</label>
                        </div>
                        <div class="form-floating mb-3">
                            <select class="form-select" id="type" aria-label="Floating label select example">
                                <option selected>골라주세요</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                            <label for="type">회원 구분</label>
                        </div>
                        <div class="form-floating mb-3">
                            <select class="form-select" id="major" aria-label="Floating label select example">
                                <option selected>전공 선택</option>
                            </select>
                            <label for="major">전공</label>
                        </div>
                        <input type="submit" value="회원가입하기">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        makeMajorList();
    })
    function makeMajorList(){
        let majorList = <%=majorList%>;
        let major = $('#major');
        let text = '';
        for(let i = 0 ; i<majorList.length; i++){
            text+='<option value="'+majorList[i].code+'">'+majorList[i].major+'</option>'
        }
        major.append(text);
    }
</script>
