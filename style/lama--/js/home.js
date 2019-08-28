jQuery(document).ready(function ($) {
    // Home Carousel
    var home_carousel = $('#home-carousel');
    home_carousel.owlCarousel({
        items: 1,
        lazyLoad: true,
        loop: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
        dots: true,
        dotsContainer: '#home-carousel-custom-dots'
    });

    $('.owl-dot').click(function () {
        home_carousel.trigger('to.owl.carousel', [$(this).index(), 300]);
    });

    $('#carousel-down').on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: $('#news').offset().top - 50
        }, 500);
    });

    // Home News
    $('#news').imagesLoaded(function () {
        $('.home-news-post').matchHeight();
    });

    // Home Videos
    $('#video-carousel').owlCarousel({
        loop: true,
        margin: 20,
        nav: true,
        navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            767: {
                items: 2,
            },
            991: {
                items: 3
            }
        }
    });
});