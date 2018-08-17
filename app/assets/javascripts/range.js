total = parseFloat($(".number-range-word").html());


// Work for DecomDesign
//JQUI slider
$( "#uislider" ).slider({
  range: "max",
  min: 0,
  max: total,
  value: 0,
  slide: function( event, ui ) {
  $( "#run_session_start_point" ).val( ui.value );
    console.log(ui);
    //sliderValue = ui.value;
    if( ui.value >= 0 && ui.value <= total/3 ) {
      console.log("green");
        $('.color').css("background-color" , 'green');
        $('.ui-slider-handle').css("background-color" , 'green');
        $('.run_session_start_point input').css("background-color" , 'green');

    }
    if(ui.value > total/3 && ui.value <= 2*total/3 ) {
      console.log("orange");
        $('.color').css("background-color" , 'orange');
        $('.ui-slider-handle').css("background-color" , 'orange');
        $('.run_session_start_point input').css("background-color" , 'orange');
    }
    if( ui.value > 2*total/3 && ui.value <= total ) {
      console.log("red");
        $('.color').css("background-color" , 'red')
        $('.ui-slider-handle').css("background-color" , 'red')
        $('.run_session_start_point input').css("background-color" , 'red');
    }
  }
});

$( "#run_session_start_point" ).val($( "#uislider").slider( "value" ));


