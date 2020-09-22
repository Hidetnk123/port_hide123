if (document.URL.match( /new/ ) || document.URL.match( /edit/ )) {
  document.addEventListener('DOMContentLoaded', function(){
    const imageList = document.getElementById('item-image');

    // 選択した画像を表示する関数
    const createImageHTML = (blob) => {
      // 画像を表示するためのdiv要素を生成
     const imageElement = document.createElement('div');
     imageElement.setAttribute('id', "image-element")
     let imageElementNum = document.querySelectorAll('#image-element').length

     // 表示する画像を生成
     const blobImage = document.createElement('img');
     blobImage.setAttribute('src', blob);
     // 生成したHTMLの要素をブラウザに表示させる

     // ファイル選択ボタンを生成
     const inputHTML = document.createElement('input')
     inputHTML.setAttribute('id', `items_image_${imageElementNum}`)
     inputHTML.setAttribute('name', 'product[images][]')
     inputHTML.setAttribute('type', 'file')

     imageElement.appendChild(blobImage);
     imageElement.appendChild(inputHTML)
     imageList.appendChild(imageElement);

     inputHTML.addEventListener('change', (e) => {
      file = e.target.files[0];
      blob = window.URL.createObjectURL(file);

      createImageHTML(blob)
    })
   };

    document.getElementById('items_image').addEventListener('change', function(e){
      // 画像が表示されている場合のみ、すでに存在している画像を削除する
      //const imageContent = document.querySelector('img');
      //if (imageContent){
      //  imageContent.remove();
      //}
      
      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      createImageHTML(blob);
    });
  });
}