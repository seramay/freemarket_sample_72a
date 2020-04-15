window.addEventListener('DOMContentLoaded', function(){
  // 苗字
  $("input#deliver_address_first_name").blur(function(){
    if($(this).val() == ""){
      $("#address_first_name_error").html("苗字は必須です");
    }else if(!$(this).val().match(/^[ぁ-んァ-ン一-龥]/)){
      $("#address_first_name_error").html("苗字を全角で入力してください");
    }else{
      console.log();
    }
  });
  $("form").submit(function(){
    if($("input#deliver_address_first_name").val() == ""){
      $("#address_first_name_error").html("苗字は必須です");
      return false;
    }else if(!$("input#deliver_address_first_name").val().match(/^[ぁ-んァ-ン一-龥]/)){
      $("#address_first_name_error").html("苗字を全角で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 名前
  $("input#deliver_address_last_name").blur(function(){
    if($(this).val() == ""){
      $("#address_last_name_error").html("名前は必須です");
    }else if(!$(this).val().match(/^[ぁ-んァ-ン一-龥]/)){
      $("#address_last_name_error").html("名前は全角で入力してください");
    }else{
      console.log();
    }
  });
  $("form").submit(function(){
    if($("input#deliver_address_last_name").val() == ""){
      $("#address_last_name_error").html("名前は必須です");
      return false;
    }else if(!$("input#deliver_address_last_name").val().match(/^[ぁ-んァ-ン一-龥]/)){
      $("#address_last_name_error").html("名前は全角で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 苗字(カナ)
  $("input#deliver_address_first_name_reading").blur(function(){
    if($(this).val() == ""){
      $("#address_first_name_reading_error").html("苗字(カナ)は必須です");
    }else if(!$(this).val().match(/^([ァ-ン]|ー)+$/)){
      $("#address_first_name_reading_error").html("苗字(カナ)を全角で入力してください");
    }else{
      console.log();
    }
  });
  $("form").submit(function(){
    if($("input#deliver_address_first_name_reading").val() == ""){
      $("#address_first_name_reading_error").html("苗字(カナ)は必須です");
      return false;
    }else if(!$("input#deliver_address_first_name_reading").val().match(/^([ァ-ン]|ー)+$/)){
      $("#address_first_name_reading_error").html("苗字(カナ)を全角で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 名前(カナ)
  $("input#deliver_address_last_name_reading").blur(function(){
    if($(this).val() == ""){
      $("#address_last_name_reading_error").html("名前(カナ)は必須です");
    }else if(!$(this).val().match(/^([ァ-ン]|ー)+$/)){
      $("#address_last_name_reading_error").html("名前(カナ)は全角で入力してください");
    }else{
      console.log();
    }
  });
  $("form").submit(function(){
    if($("input#deliver_address_last_name_reading").val() == ""){
      $("#address_last_name_reading_error").html("名前(カナ)は必須です");
      return false;
    }else if(!$("input#deliver_address_last_name_reading").val().match(/^([ァ-ン]|ー)+$/)){
      $("#address_last_name_reading_error").html("名前(カナ)は全角で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 郵便番号
  $("input#deliver_address_post_code").blur(function(){
    if($(this).val() == ""){
      $("#post_code_error").html("郵便番号は必須です");
    }else if(!$(this).val().match(/^\d{3}-?\d{4}$/)){
      $("#post_code_error").html("正しい郵便番号を入力してください");
    }else{
      console.log();
    }
  });
  $("form").submit(function(){
    if($("input#deliver_address_post_code").val() == ""){
      $("#post_code_error").html("郵便番号は必須です");
      return false;
    }else if(!$("input#deliver_address_post_code").val().match(/^\d{3}-?\d{4}$/)){
      $("#post_code_error").html("正しい郵便番号を入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 都道府県
  $("select#deliver_address_prefecture_id").blur(function(){
    if($(this).val() == ""){
      $("#prefecture_id_error").html("都道府県を選択してください");
    }else{
      console.log();
    }
  });
  $("form").submit(function(){
    if($("select#deliver_address_prefecture_id").val() == ""){
      $("#prefecture_id_error").html("都道府県を選択してください");
      return false;
    }else{
      console.log();
    }
  });
  // 市区町村
  $("input#deliver_address_address_city").blur(function(){
    if($(this).val() == ""){
      $("#address_city_error").html("市区町村は必須です");
    }else{
      console.log();
    }
  });
  $("form").submit(function(){
    if($("input#deliver_address_address_city").val() == ""){
      $("#address_city_error").html("市区町村は必須です");
      return false;
    }else{
      console.log();
    }
  });
  // 番地
  $("input#deliver_address_address_street").blur(function(){
    if($(this).val() == ""){
      $("#address_street_error").html("番地は必須です");
    }else{
      console.log();
    }
  });
  $("form").submit(function(){
    if($("input#deliver_address_address_street").val() == ""){
      $("#address_street_error").html("番地は必須です");
      return false;
    }else{
      console.log();
    }
  });
  // 電話番号
  $("input#deliver_address_phone_number").blur(function(){
    if((!$(this).val().match(/^0\d{2,3}-\d{1,4}-\d{4}$/))||($(this).val().length > 13)){
      $("#address_phone_number_error").html("半角数字とハイフンを入れて入力してください");
    }else{
      console.log();
    }
  });
});