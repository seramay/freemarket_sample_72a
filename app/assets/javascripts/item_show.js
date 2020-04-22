window.addEventListener('DOMContentLoaded', function(){
  $(".sub__image").hover(function(){
    $(".main__image").attr("src", $(this).attr("src"));
  });
})