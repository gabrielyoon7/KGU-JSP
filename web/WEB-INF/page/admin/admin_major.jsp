<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-28
  Time: 오후 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="meeting-single-item">
                <div class="card" id="sideMenu"></div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="meeting-single-item">
                <div class="row " id="majorList">
                    <div class="col-lg-4 templatemo-item-col">
                        <div class="meeting-item">
                            <div class="card text-center">
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#staticBackdrop" onclick="makeSlideUploadModal()">전공 추가
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        makeSlideLists();
    })

    function makeSlideLists() {
        let card = $('#majorList');
        let text = '';
        let major = <%=major%>;
        let num = <%=num%>;
        let majors = <%=majorAllInfo%>;
        for (let i = 0; i < majors.length; i++) {
            text += '<div class="col-lg-4 templatemo-item-col">'
                + '<div class="meeting-item">'
                + '<div class="thumb">'
                + '<div class="price">'
                + '<span>' + majors[i].code + '</span>'
                + '</div>'
                + '<a href="#"><rect width="100%" height="100%" fill="#777"></rect></a>'
                + '</div>'
                + '<div class="down-content">'
                + '<button class="btn btn-danger" onclick="deleteSlide('+i+')">슬라이드 삭제</button>'
                + '</div>'
                + '</div>'
                + '</div>'
        }
        card.prepend(text);
    }

</script>
