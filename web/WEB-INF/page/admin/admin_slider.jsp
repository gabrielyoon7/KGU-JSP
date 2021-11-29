<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-29
  Time: 오전 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String slideList = (String) request.getAttribute("slideList");
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
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#staticBackdrop" onclick="makeAddSlide()">슬라이드 추가
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
        let card = $('#slideList');
        let text = '';
        let slides = <%=slideList%>;
        for (let i = 0; i < slides.length; i++) {
            text += '<div class="col-lg-4 templatemo-item-col">'
                + '<div class="meeting-item">'
                + '<div class="thumb">'
                + '<div class="price">'
                + '<span>' + slides[i].slider_major + '</span>'
                + '</div>'
                + '<a href="meeting-details.html"><img src="' + slides[i].slider_img + '" alt=""></a>'
                + '</div>'
                + '<div class="down-content">'
                + '<button class="btn btn-danger" onclick="deleteSlide()">슬라이드 삭제</button>'
                + '</div>'
                + '</div>'
                + '</div>'
        }
        card.prepend(text);
    }

    function makeAddSlide() {
        let modalHeader = $('#modal-header');
        let headerText = '대문 슬라이드 등록하기';
        modalHeader.prepend(headerText);
        let modalBody = $('#modal-body');
        let bodyText = '<div id="fileUploadSection">'
            + '<input type="file" name="uploadFile" id="uploadFile" accept="image/*">'
            + '<button class="btn btn-secondary" onclick="uploadFile()">업로드</button>'
            + '</div>';
        modalBody.append(bodyText);
        let modalFooter = $('#modal-footer');
        let footerText = '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button> <button type="button" class="btn btn-primary">추가</button>';
        modalFooter.append(footerText);
    }

    function uploadFile() {
        let file_id; //나중에 파일 상세정보를 uploadedFile로부터 역참조 하고싶은 경우에 사용하라고 만들어둠 (다운로드에서 사용하는 기능)
        let file_folder; //다운로드에서 쓸 경로
        let file_path; //파일이 업로드된 상대경로

        let formData = new FormData();
        let folder = '/uploaded/slider';//업로드 된 파일 folder 경로 설정은 여기에서 해줍니다. (마지막에 /가 오면 절대 안됩니다.)
        if ($('input[name=uploadFile]')[0].files[0] != null) {
            formData.append("file_data", $('input[name=uploadFile]')[0].files[0]);
            formData.append("file_type", "image"); //전송하려는 파일 타입 설정 (제한이 없으려면 null로 한다.)

            let check = confirm('해상도가 일정한 이미지를 올리시나요?');
            if (check) {
                $.ajax({
                    url: 'upload.kgu?folder=' + folder,
                    type: "post",
                    async: false,
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (data) {//데이터는 주소
                        if (data == 'fail') {
                            alert('실패');
                        } else {
                            var fileLog = data.split("-/-/-");
                            file_id = fileLog[0];
                            file_folder = folder;
                            file_path = folder + '/' + fileLog[1];
                            let a = '';
                            a += '<div>파일제출</div><div>' + fileLog[1] + '</div>';
                            a += '<div><a href="download.kgu?id=' + file_id + '&&path=' + file_folder + '" target="_blank"><button class="btn btn-secondary"><i class="bi bi-download"></i> 다운로드</button></a>'
                            a += '<button class="btn btn-danger" onclick="makeUploadSliderModal()"><i class="bi bi-x-circle-fill"></i> 첨부파일 수정하기</button></div>';
                            $('#fileUploadSection').html(a);
                        }
                    }

                })
            }

        )
        }
        // return address;
    }


    function deleteSlide() {

    }
</script>