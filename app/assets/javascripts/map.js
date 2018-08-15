window.addEventListener("resize", function(event) {
 if (window.innerWidth < 494){
  $("iframe")[0].setAttribute("width", 0);
  $("iframe")[0].setAttribute("height", "0");
  $(".run-half-banner-2").css("height","0px");
 }else if (window.innerWidth < 991) {
  $("iframe")[0].setAttribute("width", window.innerWidth);
  $("iframe")[0].setAttribute("height", "400");
  $(".run-half-banner-2").css("height","300px");
 }else{
  $("iframe")[0].setAttribute("width", "600");
  $("iframe")[0].setAttribute("height", "600");
  $(".run-half-banner-2").css("height","500px");
 }

}, false);


window.addEventListener("load", function(event) {
  if (window.innerWidth < 494){
    $("iframe")[0].setAttribute("width", 0);
    $("iframe")[0].setAttribute("height", "0");
    $(".run-half-banner-2").css("height","0px");
  }else if (window.innerWidth < 991) {
    $("iframe")[0].setAttribute("width", window.innerWidth);
    $("iframe")[0].setAttribute("height", "400");
    $(".run-half-banner-2").css("height","300px");
  }else{
    $("iframe")[0].setAttribute("width", "600");
    $("iframe")[0].setAttribute("height", "600");
    $(".run-half-banner-2").css("height","500px");
  }
}, false);
