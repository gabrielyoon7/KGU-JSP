<%--
  Created by IntelliJ IDEA.
  User: YOON
  Date: 2021-11-22
  Time: 오전 4:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

<script src="/assets/js/isotope.min.js"></script>
<script src="/assets/js/owl-carousel.js"></script>
<script src="/assets/js/lightbox.js"></script>
<script src="/assets/js/tabs.js"></script>
<script src="/assets/js/video.js"></script>
<script src="/assets/js/slick-slider.js"></script>
<%--<script src="/assets/js/custom.js"></script>--%>

<%--    Bootstrap Table--%>
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.css">
<script src="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.js"></script>

<script>
    //according to loftblog tut
    $('.nav li:first').addClass('active');

    var showSection = function showSection(section, isAnimate) {
        var
            direction = section.replace(/#/, ''),
            reqSection = $('.section').filter('[data-section="' + direction + '"]'),
            reqSectionPos = reqSection.offset().top - 0;

        if (isAnimate) {
            $('body, html').animate({
                    scrollTop: reqSectionPos },
                800);
        } else {
            $('body, html').scrollTop(reqSectionPos);
        }

    };

    var checkSection = function checkSection() {
        $('.section').each(function () {
            var
                $this = $(this),
                topEdge = $this.offset().top - 80,
                bottomEdge = topEdge + $this.height(),
                wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
                var
                    currentId = $this.data('section'),
                    reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                reqLink.closest('li').addClass('active').
                siblings().removeClass('active');
            }
        });
    };

    $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
        e.preventDefault();
        showSection($(this).attr('href'), true);
    });

    $(window).scroll(function () {
        checkSection();
    });
</script>