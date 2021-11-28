<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-28
  Time: 오전 1:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String getUser = (String) request.getAttribute("getUser");
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
                <div class="card">
                    <table class="boardtable" id="user_table" data-toggle="table"
                           data-pagination="true" data-toolbar="#toolbar"
                           data-search="true" data-side-pagination="true" data-click-to-select="true" data-height="960"
                           data-page-list="[10,20,30,50,100,200]">
                        <thead>
                        <tr>
                            <th data-field="state" data-checkbox="true"></th>
                            <th data-field="action">설정</th>
                            <th data-field="google_email" data-sortable="true">아이디</th>
                            <th data-field="google_name" data-sortable="true">이름</th>
                            <th data-field="univ_id" data-sortable="true">생년월일</th>
                            <th data-field="name" data-sortable="true">이메일</th>
                            <th data-field="birthday" data-sortable="true">전화번호</th>
                            <th data-field="gender" data-sortable="true">구분</th>
                            <th data-field="phone" data-sortable="true">희망구분</th>
                            <th data-field="type" data-sortable="true">희망구분</th>
                            <th data-field="major" data-sortable="true">희망구분</th>
                        </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    $(document).ready(function () {
        callSetupUserTableView();
    })

    function callSetupUserTableView() {
        $('#user_table').bootstrapTable('append', tableData());
        $('#user_table').bootstrapTable('refresh');
    }
    callSetupUserTableView();
    function tableData() {
        let makeUserAll = <%=getUser%>;
        let rows = [];

        for (let i = 0; i < makeUserAll.length; i++) {
            let user = makeUserAll[i];
            let action = '<button class="btn btn-danger" type="button" onclick="deleteUser(' + i + ')">삭제</button>'
            rows.push({
                action: action,
                google_email: user.google_email,
                google_name: user.google_name,
                univ_id: user.univ_id,
                name: user.name,
                birthday: user.birthday,
                gender: user.gender,
                phone: user.phone,
                type: user.type,
                major: user.major
            });
        }
        return rows;
    }
</script>