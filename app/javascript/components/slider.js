function initSliderLogic() {

  const slider1 = document.getElementById("lower_range");
  const displaySpan1 = document.getElementById("slider1");
  displaySpan1.innerHTML = slider1.value;

  const slider2 = document.getElementById("upper_range");
  const displaySpan2 = document.getElementById("slider2");
  displaySpan2.innerHTML = slider2.value;

  slider1.oninput = function() {
    displaySpan1.innerHTML = this.value;
  }

  slider2.oninput = function() {
    displaySpan2.innerHTML = this.value;
  }
}

export { initSliderLogic };
