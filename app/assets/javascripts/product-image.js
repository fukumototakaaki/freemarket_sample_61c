$(window).on('load', ()=> {
  const buildFileField = (num)=> {

    const html = `
                  <input class="image-box__images__input"
                  id="item_images_attributes_${num}_image" type="file"
                  name="item[images_attributes][${num}][image]">
                  `;
    return html;
  }

  const buildImg = (index, url)=> {
    const html2 = `
    <div class= "image-box__images__box">
      <img class= "image-box__images__box__image${index}" img src="${url}" width="110px" height="120px"></img>
      <div class= "image-box__images__box__delete" id="image-box__images__box__delete" width="110px" height="20px">削除</div>
    </div>
      `;
    return html2;
  }

  const buildFileField_edit = (id)=> {

    const html3 = `
                  <input class="image-box__images__input"
                  id="item_images_attributes_${id}_image" type="file"
                  name="item[images_attributes][${id}][image]">
                  `;
    return html3;
  }

  const buildImg_edit = (index, url)=> {
    const html4 = `
    <div class= "image-box__images__box">
      <img class= "image-box__images__box__image${index}" img src="${url}" width="110px" height="120px"></img>
      <div class= "image-box__images__box__delete__edit" id="image-box__images__box__delete__${index}" width="110px" height="20px">削除</div>
    </div>
      `;
    return html4;
  }


  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  lastIndex = $('.contents__item__upload__image__btn__area__field:last').data('index');
  fileIndex.splice(0, lastIndex);


  $('.hidden-destroy').hide();
  var  nowurl   = location.href;

  if(nowurl.match(/new/)){

    $(document).on("click", ".image-box__images__box__delete", function(event) {
      event.preventDefault();
      const num = $(".image-box__images__box").length;
      const deleteId = ("#item_images_attributes_"+num+"_image")
      $(this).closest(".image-box__images__box").remove();
      $(deleteId).remove();
      if (num == 9){
        $('#image-box').prepend(buildFileField(9))
      }
    });

    $('#image-box').on('change', function(e) {
      const targetIndex = $(this).parent().data('index');
      const num = $(".image-box__images__box").length;
      const file = e.target.files[0];
      const blobUrl = window.URL.createObjectURL(file);
      if (num != 9){
        $('.image-box__images').before(buildImg(num, blobUrl));

        $('#image-box').prepend(buildFileField(num+1));

        $('.text').remove();
        } else {
          $('.image-box__images').before(buildImg(num, blobUrl));
        }
    });
  }


  if(nowurl.match(/edit/)){
    // 新規のものを追加する処理
    $('.label-box').on('change', function(e) {
      const targetIndex = $(this).parent().data('index');
      const num = $(".image-box__images__box").length;
      const file = e.target.files[0];
      const blobUrl = window.URL.createObjectURL(file);

      var id = $(this).attr('id').replace(/[^0-9]/g, '');
      $('.label-box').attr({id: `label-box--${Number(id)+1}`,for: `item_images_attributes_${Number(id)+1}_image`});

      if (num != 9){
        $('.image-box__images').append(buildImg_edit(num, blobUrl));
        $('.image-box__images').after(buildFileField_edit(Number(id)+1));
        $('.text').remove();
        } else {
          $('.image-box__images').append(buildImg_edit(num, blobUrl));
        }
    });

    // 既存のものを消去する処理
    $('#image-box').on('click', '.image-box__images__box__delete', function(e) {

      event.preventDefault();
      const targetIndex = $(this).data('index')
      const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`); 

      if (hiddenCheck) hiddenCheck.prop('checked', true);
        $(this).parent().remove();
        $(`img[data-index="${targetIndex}"]`).remove();

    });

    // 新規のものを消去する処理
    $('#image-box').on('click', '.image-box__images__box__delete__edit', function(e) {

      event.preventDefault();
      const num = $(".image-box__images__box").length;
      const id = $(this).attr('id').match(/\d{1,2}/)
      const result = Number( id ) + 1
      const emptyform = ("#item_images_attributes_"+id+"_image")
      const deleteId = ("#item_images_attributes_"+result+"_image")
      if (num != 10){
        $(emptyform).val("");
        $(deleteId).remove();
        $(this).parent().remove();
        var ids = $(".label-box").attr('id').replace(/[^0-9]/g, '');
        $('.label-box').attr({id: `label-box--${Number(ids)-1}`,for: `item_images_attributes_${Number(ids)-1}_image`});
      }

      if (num == 10){
        const targetIndex = $(this).data('index')
        const id = $(".label-box").attr('id').match(/\d{1,2}/)
        $("#item_images_attributes_9_image").val("");
        $(this).parent().remove();
        var ids = $(".label-box").attr('id').replace(/[^0-9]/g, '');
        $('.label-box').attr({id: `label-box--${Number(ids)-1}`,for: `item_images_attributes_${Number(ids)-1}_image`});
      }

      // if (hiddenCheck) hiddenCheck.prop('checked', true);
      //   $(this).parent().remove();
      //   $(`img[data-index="${targetIndex}"]`).remove();

    });
  }

});
