jQuery.extend(verge);
jQuery(document).ready(function ($) {
    $('.navbar-nav .dropdown-menu a').on('mouseenter focus', function (e) {
        $(this).parents('li.dropdown').addClass('active');
    });

    $('.navbar-nav .dropdown-menu a').on('mouseleave blur', function (e) {
        $(this).parents('li.dropdown').removeClass('active');
    });

    // Mobile menu
    $('#menu-toggle').on('click', function (e) {
        e.preventDefault();
        $('#mobile-menu-container').toggleClass('open');
        $(this).attr('aria-expanded', 'true');
        $('#mobile-menu-container').attr('aria-expanded', 'true');
        $('#menu-close').attr('aria-expanded', 'true');
    });

    $('#menu-close').on('click', function (e) {
        e.preventDefault();
        $('#mobile-menu-container').removeClass('open');
        $(this).attr('aria-expanded', 'false');
        $('#mobile-menu-container').attr('aria-expanded', 'false');
        $('#menu-toggle').attr('aria-expanded', 'false');
    });

    // Sticky nav
    function stickyNav() {
        var nav_height = $('#header-nav').outerHeight();
        var viewport_w = $.viewportW();
        var scroll_top = $(window).scrollTop();
        var main_offset_top = $('#main').offset().top;
        if (viewport_w > 767) {
            if (scroll_top > main_offset_top - nav_height) {
                $('#header-nav').addClass('sticky');
                $('#header').css('margin-bottom', nav_height + 'px');
            }
            else {
                $('#header-nav').removeClass('sticky');
                $('#header').css('margin-bottom', '0px');
            }
        }
    }

    $(window).scroll(function () {
        stickyNav();
    });

    // Social Popup Open
    $('.social-actions a:not(.fb-view), .share-links a').on('click', function (e) {
        e.preventDefault();
        var link = $(this).attr("href");
        window.open(link, "popupWindow", "width=670,height=378,scrollbars=no");
    });

    // Photos
    $('.photo a').magnificPopup({
        gallery: {
            enabled: true
        },
        type: 'image'
    });

    // Videos
    $('.video-item a').magnificPopup({
        type: 'iframe'
    });

    // Issues
    $('.issue-content').matchHeight();
    
    // Snapchat
    $('.snapchat-link').magnificPopup({type: 'image'});
});