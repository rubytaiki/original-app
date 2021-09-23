document.addEventListener('DOMContentLoaded', function(){
  if ( document.getElementById("food-image")){
    const ImageList = document.getElementById("image-list");
    document.getElementById('food-image').addEventListener('change', function(e){
      
      // 画像が表示されている場合のみ、すでに存在している画像を削除する
      const imageContent = document.querySelector('img');
      if (imageContent){
        imageContent.remove();
      }

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);
      
      const imageElement = document.createElement('div');
      const blobImage = document.createElement('img');
      blobImage.setAttribute('src', blob );

      imageElement.appendChild(blobImage);
      ImageList.appendChild(imageElement);
    });
  }
});
