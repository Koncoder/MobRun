$( "#run_session_start_point" ).change(function() {
  user = parseFloat(this.value)
  total = parseFloat($(".number-range-word").html())
  ratio = (total - user) / total
  height = ratio*360; + 'px'
  $('.graphic-range').css('min-height', height);
  if(ratio > 0.75){
    $('.graphic-range').css('background', 'green');
  }else if(ratio > 0.35){
    $('.graphic-range').css('background', 'yellow');
  }else{
    $('.graphic-range').css('background', 'red');
  }
});
