// Activates the Carousel
$('.carousel').carousel({
  interval: 5000
})

// Activates Tooltips for Social Links
$('.tooltip-social').tooltip({
  selector: "a[data-toggle=tooltip]"
})

$(document).ready(function(){
    $("a img").mouseenter(function(){
        $(this).fadeTo("fast", .8);
    })
    $("a img").mouseleave(function(){
        $(this).fadeTo("fast", 1);
    })
})