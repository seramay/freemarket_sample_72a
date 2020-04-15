window.addEventListener('DOMContentLoaded', function(){
  // ニックネーム
  $("input#user_nickname").blur(function(){
    if($(this).val() == ""){
      $("#nickname_error").html("ニックネームは必須です");
    }else if($(this).val().length > 20){
      $("#nickname_error").html("ニックネームは20字以内で入力してください");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("input#user_nickname").val() == ""){
      $("#nickname_error").html("ニックネームは必須です");
      return false;
    }else if($("input#user_nickname").val().length > 20){
      $("#nickname_error").html("ニックネームは20字以内で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // メールアドレス
  $("input#user_email").blur(function(){
    if($(this).val() == ""){
      $("#email_error").html("メールアドレスは必須です");
    }else if(!$(this).val().match( /^[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}$/)){
      $("#email_error").html("＠とドメインを含めて入力してください。");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("input#user_email").val() == ""){
      $("#email_error").html("メールアドレスは必須です");
      return false;
    }else if(!$("input#user_email").val().match( /^[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}$/)){
      $("#email_error").html("＠とドメインを含めて入力してください。");
      return false;
    }else{
      console.log();
    }
  });
  // パスワード
  $("input#user_password").blur(function(){
    if($(this).val() == ""){
      $("#password_error").html("パスワードは必須です");
    }else if($(this).val().length < 7){
      $("#password_error").html("7文字以上で入力してください");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("input#user_password").val() == ""){
      $("#password_error").html("パスワードは必須です");
      return false;
    }else if($("input#user_password").val().length < 7){
      $("#password_error").html("7文字以上で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // パスワード再入力
  $("input#user_password_confirmation").blur(function(){
    if($(this).val() == ""){
      $("#password_confirmation_error").html("パスワードは必須です");
    }else if($(this).val().length < 7){
      $("#password_confirmation_error").html("7文字以上で入力してください");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("input#user_password_confirmation").val() == ""){
      $("#password_confirmation_error").html("パスワードは必須です");
      return false;
    }else if($("input#user_password_confirmation").val().length < 7){
      $("#password_confirmation_error").html("7文字以上で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 電話番号
  $("input#user_phone_number").blur(function(){
    if($(this).val() == ""){
      $("#phone_number_error").html("電話番号は必須です");
    }else if((!$(this).val().match(/^0\d{2,3}-\d{1,4}-\d{4}$/))||($(this).val().length > 13)){
      $("#phone_number_error").html("半角数字とハイフンを入れて入力してください");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("input#user_phone_number").val() == ""){
      $("#phone_number_error").html("電話番号は必須です");
      return false;
    }else if((!$("input#user_phone_number").val().match(/^0\d{2,3}-\d{1,4}-\d{4}$/))||($(this).val().length > 13)){
      $("#phone_number_error").html("半角数字とハイフンを入れて入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 苗字
  $("input#user_first_name").blur(function(){
    if($(this).val() == ""){
      $("#first_name_error").html("苗字は必須です");
    }else if(!$(this).val().match(/^[ぁ-んァ-ン一-龥]/)){
      $("#first_name_error").html("苗字を全角で入力してください");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("input#user_first_name").val() == ""){
      $("#first_name_error").html("苗字は必須です");
      return false;
    }else if(!$("input#user_first_name").val().match(/^[ぁ-んァ-ン一-龥]/)){
      $("#first_name_error").html("苗字を全角で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 名前
  $("input#user_last_name").blur(function(){
    if($(this).val() == ""){
      $("#last_name_error").html("名前は必須です");
    }else if(!$(this).val().match(/^[ぁ-んァ-ン一-龥]/)){
      $("#last_name_error").html("名前を全角で入力してください");
    }else{
      console.log();
    }
  });
  $("submit").click(function(){
    if($("input#user_last_name").val() == ""){
      $("#last_name_error").html("名前は必須です");
      return false;
    }else if(!$("input#user_last_name").val().match(/^[ぁ-んァ-ン一-龥]/)){
      $("#last_name_error").html("名前を全角で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 苗字(カナ)
  $("input#user_first_name_reading").blur(function(){
    if($(this).val() == ""){
      $("#first_name_reading_error").html("苗字(カナ)は必須です");
    }else if(!$(this).val().match(/^([ァ-ン]|ー)+$/)){
      $("#first_name_reading_error").html("苗字を全角(カナ)で入力してください");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("input#user_first_name_reading").val() == ""){
      $("#first_name_reading_error").html("苗字(カナ)は必須です");
      return false;
    }else if(!$("input#user_first_name_reading").val().match(/^([ァ-ン]|ー)+$/)){
      $("#first_name_reading_error").html("苗字を全角(カナ)で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 名前(カナ)
  $("input#user_last_name_reading").blur(function(){
    if($(this).val() == ""){
      $("#last_name_reading_error").html("名前(カナ)は必須です");
    }else if(!$(this).val().match(/^([ァ-ン]|ー)+$/)){
      $("#last_name_reading_error").html("名前を全角(カナ)で入力してください");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("input#user_last_name_reading").val() == ""){
      $("#last_name_reading_error").html("名前(カナ)は必須です");
      return false;
    }else if(!$("input#user_last_name_reading").val().match(/^([ァ-ン]|ー)+$/)){
      $("#last_name_reading_error").html("名前を全角(カナ)で入力してください");
      return false;
    }else{
      console.log();
    }
  });
  // 年号
  $("select#user_birthday_year").blur(function(){
    if($(this).val() == "--"){
      $("#birthday_year_error").html("年号を選択してください");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("select#user_birthday_year").val() == "--"){
      $("#birthday_year_error").html("年号を選択してください");
      return false;
    }else{
      console.log();
    }
  });
  // 誕生月
  $("select#user_birthday_month").blur(function(){
    if($(this).val() == "--"){
      $("#birthday_month_error").html("誕生月を選択してください");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("select#user_birthday_month").val() == "--"){
      $("#birthday_month_error").html("年号を選択してください");
      return false;
    }else{
      console.log();
    }
  });
  // 誕生日
  $("select#user_birthday_day").blur(function(){
    if($(this).val() == "--"){
      $("#birthday_day_error").html("誕生日を選択してください");
    }else{
      console.log();
    }
  });
  $("#submit").click(function(){
    if($("select#user_birthday_day").val() == "--"){
      $("#birthday_day_error").html("年号を選択してください");
      return false;
    }else{
      console.log();
    }
  });
});
