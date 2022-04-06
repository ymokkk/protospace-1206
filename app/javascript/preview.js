document.addEventListener('DOMContentLoaded', function(){
  const prototypeForm = document.getElementById('new_prototype');
  const previewList = document.getElementById('previews');

  const fileField = document.querySelector('input[type="file"][name="prototype[image]"]');
  fileField.addEventListener('change', function(e){
    const alreadyPreview = document.querySelector('.preview');
    if(alreadyPreview) {
      alreadyPreview.remove();
    };
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
    const previewWrapper = document.createElement('div');
    previewWrapper.setAttribute('class', 'preview');
    const previewImage = document.createElement('img');
    previewImage.setAttribute('class', 'preview-image');
    previewImage.setAttribute('src', blob);
    previewImage.classList.add('preview-size');

    previewWrapper.appendChild(previewImage);
    previewList.appendChild(previewWrapper);
  });
});