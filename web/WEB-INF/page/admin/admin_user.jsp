<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-28
  Time: 오전 1:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="meeting-single-item">
                <div class="card" id="sideMenu">
                    dd
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="meeting-single-item">
                <div class="card">
                    dd
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        makeSidePageMenu();
    })

    function makeSidePageMenu(){
        let menuPages =  <%=menuPages%>;
        let sideMenu = $('#sideMenu');
        let text='';
        for(let j = 0 ; j < menuPages.length; j++){
            if(menuPages[j].tab_id ==menuTabs[i].tab_id){
                text+='<li><a href="'+menuPages[j].page_path+'?major='+major+'&num='+menuPages[j].page_id+'">'+menuPages[j].page_title+'</a></li>';
            }
        }
        sideMenu.append(text);
    }

</script>