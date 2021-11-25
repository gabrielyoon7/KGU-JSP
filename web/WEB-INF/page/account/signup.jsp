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
%>
<div class="container">

    <div class="row">
        <div class="col-lg-12">
            <div class="meeting-single-item">
                <div class="card">
                    <div><%=google_id%></div>
                    <div><%=google_name%></div>
                    <div><%=google_email%></div>
                    <div><%=google_imageUrl%></div>
                </div>
            </div>
        </div>
    </div>
</div>
