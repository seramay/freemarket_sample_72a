$(document).on('turbolinks:load', ()=> {
  // 画像用のinputを生成する関数
  var buildFileField = (index)=> {
    var html = `<div data-index="${index}" class="preview--zone js-file_group" id="preview--zone${index}">
                    <div class="img" id="img${index}"></div>
                    <div class="buttons">
                      <label class="buttons--edit">編集
                        <input class="editbtn js-file" type="file"
                          name="item[item_images_attributes][${index}][image_url]"
                          id="item_item_images_attributes_${index}_image_url" value="編集">
                      </label>
                      <div class="buttons--delete js-remove">削除</div>
                    </div>
                  </div>`;
    return html;
  }


  // プレビュー用のimgタグを生成する関数
  var buildImg = (index, url)=> {
    var html = `<img data-index="${index}" src="${url}">`;
    return html;
  }
  // 画像の動的index
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];
  var lastIndex = $('.js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);

  // 画像の投稿
  $('.container-box__area').on('click', function(){
    $('#preview').append(buildFileField(fileIndex[0]));
    $(`#item_item_images_attributes_${fileIndex[0]}_image_url`).on('click', function(e){
      e.stopPropagation();
    });
    $(`#item_item_images_attributes_${fileIndex[0]}_image_url`).click();
    $(`#item_item_images_attributes_${fileIndex[0]}_image_url`).on('change', function(e){
      var file = e.target.files[0];
      var blobUrl = window.URL.createObjectURL(file);
      $(`#img${fileIndex[0]}`).append(buildImg(fileIndex[0], blobUrl));
      fileIndex.shift();
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    });
  })

  //出品中のプレビュー編集
  $('#preview').on('change', '.js-file', function(e) {
    var targetIndex = $(this).parent().parent().parent().data('index');
    var file = e.target.files[0];
    var blobUrl = window.URL.createObjectURL(file);
    img = $(`img[data-index="${targetIndex}"]`)[0];
    img.setAttribute('src', blobUrl);
  });

  //出品時の投稿画像削除
  $('#preview').on('click', '.js-remove', function() {
    $(this).parent().parent().remove();
  });
  
  // 価格によって手数料、利益を計算し表示
  $('.selling-input--form').on('keyup', function(){
    var price = $(this).val();
    var price_fee = Math.floor(price * 0.1)
    var seller_gain = price - price_fee
    
    if (price >= 300 && price <= 9999999) {
      $('.price-fee--display').text('¥' + price_fee.toLocaleString())
      $('.price-profit--display').text('¥' + seller_gain.toLocaleString())
    } else {
      $('.price-fee--display').text('--')
      $('.price-profit--display').text('--')
    }
  })

});