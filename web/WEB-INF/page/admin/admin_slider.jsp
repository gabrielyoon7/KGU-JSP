<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-29
  Time: 오전 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String slideList = (String)request.getAttribute("slideList");
%>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="meeting-single-item">
                <div class="card" id="sideMenu"></div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="meeting-single-item">
                <div class="row grid" id="slideList">
                    <div class="col-lg-4 templatemo-item-col">
                        <div class="meeting-item">
                            <div class="card text-center">
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" onclick="makeAddSlide()">슬라이드 추가</button>
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
    function makeSlideLists(){
        let card = $('#slideList');
        let text='';
        let slides = <%=slideList%>;
        for(let i = 0 ; i < slides.length; i++){
            text+='<div class="col-lg-4 templatemo-item-col">'
                +'<div class="meeting-item">'
                +'<div class="thumb">'
                +'<div class="price">'
                +'<span>'+slides[i].slider_major+'</span>'
                +'</div>'
                +'<a href="meeting-details.html"><img src="'+slides[i].slider_img+'" alt=""></a>'
                +'</div>'
                +'<div class="down-content">'
                +'<button class="btn btn-danger" onclick="deleteSlide()">슬라이드 삭제</button>'
                +'</div>'
                +'</div>'
                +'</div>'
        }
        card.prepend(text);
    }

    function makeAddSlide(){
        let modalHeader = $('#modal-header');
        let headerText='';
        modalHeader.prepend(headerText);
        let modalBody = $('#modal-body');
        let bodyText='';
        modalBody.append(bodyText);
        let modalFooter = $('#modal-footer');
        let footerText='';
        modalFooter.append(footerText);
    }

    function deleteSlide(){

    }
</script>