window.addEventListener("resize", function(event) {
 map()
}, false);


window.addEventListener("load", function(event) {
  map();
}, false);

function map(){
  if ($("iframe")[0]){
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
      $("iframe")[0].setAttribute("height", "500");
      $(".run-half-banner-2").css("height","400px");
    }
  }
}
