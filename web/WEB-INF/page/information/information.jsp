<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-27
  Time: 오전 1:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String information = (String) request.getAttribute("information");
%>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
                <div class="col-lg-12">
                    <div class="meeting-single-item">
                        <div class="card" id="information">
                            <div id="modify_button"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        makeInformation();
    })
    let information = <%=information%>;
    function makeInformation(){
        let data = $('#information');
        if(information!=null){
            let text = '';
            text+=information.description;
            let button = $('#modify_button');
            button.append('<button class="btn btn-primary" onclick="modify()">수정</button>');
            data.prepend(text);
        }
    }

    function modify(){
        var modify_button = $('#modify_button');
        var a='';
        modify_button.empty();
        a+='<textarea id="editor">'+information.description+'</textarea>';
        a+='<div id="write_post" class="my-4 col-xs-13 text-right d-flex justify-content-between">'
        a+='<button type="button" class="btn btn-secondary" style = "margin : 2px;" onclick="back()">뒤로</button>'
        a+='<button type="button" class="btn btn-primary" style = "margin : 2px;" onclick="modifyText()">수정</button>';
        a+='</div>';
        $('#information').html(a);
        CKEDITOR.replace('editor', {
            allowedContent: true,
            height: 500,
            'filebrowserUploadUrl': 'Uploader'
        });
    }
    function modifyText(){
        let content = CKEDITOR.instances.editor.getData();
        let modify=information.id+"-/-/-"+information.major+"-/-/-"+content;
        alert(modify);
        $.ajax({
            url: 'ajax.kgu',
            type : 'post',
            data :{
                req : "modifyText",
                data : modify
            },
            success : function(data){
                alert(data);
                if(data != 'fail'){
                    alert('수정 완료')
                    location.reload();
                }
                else{
                    alert('서버에러! 다음에 다시 시도해주세요');
                }
            }
        })
    }
    function back(){
        const check = confirm('작성하시던 글은 저장되지 않습니다.')
        if(check){
            location.reload();
        }
    }

</script>