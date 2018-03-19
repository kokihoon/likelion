// 메뉴바 상단 고정
window.onscroll = function() {
    myFunction()
};
var navbar = this.document.getElementById("nav");
var sticky = navbar.offsetTop;
function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky");
    } else {
        navbar.classList.remove("sticky");
    }
}

// 스크롤 부드럽게 내리기
$(document).ready(function(){
    $('a[href^="#"]').on('click',function (e) {
        e.preventDefault();
        var target = this.hash;
        var $target = $(target);
        $('html, body').stop().animate({
            'scrollTop': $target.offset().top
        }, 900, 'swing', function () {
            window.location.hash = target;
        });
    });
});

//클릭하면 화면 나오기

$('#open-popup').magnificPopup({
    items: [
    {
        src: './image/time1.jpg',
        title: 'Peter & Paul fortress in SPB'
    },
    {
        src: './image/time2.jpg',
        type: 'iframe' // this overrides default type
    }
    ],
    gallery: {
    enabled: true
    },
    type: 'image' // this is a default type
});