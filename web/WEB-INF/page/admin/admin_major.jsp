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
                                        data-bs-target="#staticBackdrop" onclick="makeMajorAddModal()">전공 추가
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
                + '<a href="#"><div style="background-color: '+majors[i].color+'; height: 150px;"></div></a>'
                + '</div>'
                + '<div class="down-content">'
                + '<button class="btn btn-danger" onclick="deleteSlide('+i+')">슬라이드 삭제</button>'
                + '</div>'
                + '</div>'
                + '</div>'
        }
        card.prepend(text);
    }

    function makeMajorAddModal(){
        let majorList = <%=majorAllInfo%>;

        let modalHeader = $('#modal-header');
        let headerText = '<h5 class="modal-title" id="exampleModalLabel">전공 홈페이지 추가하기</h5>'
            + '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>';
        modalHeader.html(headerText);

        let modalBody = $('#modal-body');
        let bodyText = '<div>전공 아이디 (영문/숫자 혼용 가능) </div>'
            + '<input type="text" class="form-control" id="add_major_id" name="new_table" value="" placeholder="전공아이디를 입력해주세요(수정 불가능)">'
            +'<mark>※ 한번 생성하신 전공 아이디는 수정하실 수 없습니다.<br>url을 비롯하여 시스템 내부적으로 사용되는 값이므로<br>전공의 약자(略字) 등을 활용하여 신중하게 결정해주세요.<br>(ex. 컴퓨터과학과(Computer Science) => 전공 아이디 : cs)</mark>'
            + '<div>전공이름</div><input type="text" class="form-control" id="add_major_name" name="new_table" value="" placeholder="전공이름을 입력해주세요">'
            + '<div>전공색상</div><input type="color" class="form-control" id="add_major_color" name="new_table" value="" placeholder="색을 선택해주세요">';
        modalBody.html(bodyText);

        let modalFooter = $('#modal-footer');
        let footerText = '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button> <button type="button" class="btn btn-primary" onclick="insertMajor()">추가</button>';
        modalFooter.html(footerText);
    }

    function insertMajor(){
        let code = $('#add_major_id').val();
        let major = $('#add_major_name').val();
        let color = $('#add_major_color').val();

        let data = code+'-/-/-'+major+'-/-/-'+color;

        $.ajax({
            url: "ajax.kgu", //AjaxAction에서
            type: "post",
            data: {
                req: "insertMajor", //이 메소드를 찾아서
                data: data
            },
            success: function (data) { //성공 시
                if(data=='success'){
                    alert('전공이 정상적으로 추가되었습니다.');
                    location.reload();
                }
                else {
                    alert('오류');
                }
            }
        })
    }

</script>
