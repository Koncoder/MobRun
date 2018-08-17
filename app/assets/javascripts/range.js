total = parseFloat($(".number-range-word").html());


// Work for DecomDesign
//JQUI slider
$( "#uislider" ).slider({
  range: "max",
  min: 0,
  max: total*10,
  value: total*10,
  slide: function( event, ui ) {
    $( "#run_session_start_point" ).val( Math.round((total - ui.value / 10) * 100) / 100);
    $( "#run_session_length" ).html(ui.value / 10 );
    //sliderValue = ui.value;
    if( ui.value >= 0 && ui.value <= total*10/3 ) {
      $('.color').css("background-color" , 'red')
      $('.ui-slider-handle').css("background-color" , 'red')

    }
    if(ui.value > total*10/3 && ui.value <= 2*total*10/3 ) {
        $('.color').css("background-color" , "#fa8231");
        $('.ui-slider-handle').css("background-color" , "#fa8231");

    }
    if( ui.value > 2*total*10/3 && ui.value <= total*10 ) {
      console.log("red");
      $('.color').css("background-color" , '#20bf6b');
      $('.ui-slider-handle').css("background-color" , '#20bf6b');


    }
  }
});
$( "#run_session_start_point" ).val( 0);
$( "#run_session_length" ).html($( "#uislider").slider( "value" )/10);

