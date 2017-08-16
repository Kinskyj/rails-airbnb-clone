const boxComment = document.getElementById("two").offsetHeight;

$(function() {
  $("#one").sticky({bottomSpacing: 90 + boxComment});
});
