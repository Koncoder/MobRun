
var myMap = document.getElementsByTagName('iframe')[0];
myMap.addEventListener("load", function() {
  console.log("cargada");
  var graphic = document.getElementById('elevation-profile');
  console.log($("iframe").contents().find("#elevation-profile"))
  $("iframe").contents().find("#elevation-profile").style.border = '1px solid #000000'
  console.log("despues");
});
