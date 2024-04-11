// Import
import { upload } from './upload.js';

// Element
const uploadLink = document.getElementById('uploadLink');
const uploadDialog = document.getElementById('uploadDialog');
const exitDialog = document.getElementsByClassName('exit-dialog');

// Event listener
uploadLink.addEventListener(
  'click',
  function(event)
  {
    event.preventDefault();
    const url = this.getAttribute('href');
    fetch(url)
      .then(response => response.text())
      .then(html => 
        {
          const parser = new DOMParser();
          const doc = parser.parseFromString(html, 'text/html');
          const targetContent = doc.getElementsByClassName('background-image')[0];
          if (targetContent)
          {
            uploadDialog.innerHTML = targetContent.innerHTML;
            uploadDialog.parentElement.hidden = false;
            
            var uploadCAD = document.getElementById('uploadCAD');
            if (uploadCAD)
            {
              uploadCAD.addEventListener('change', upload);
            }
          }
          else
          {
            uploadDialog.textContent = 'The specified part was not found.';
          }
        }
      )
      .catch(error => 
        {
          console.error('Error loading the page: ', error);
        }
      );
  }
);

var exitDialogs = Array.from(exitDialog);
exitDialogs.forEach(element => {
  element.addEventListener('click', function() {
    uploadDialog.innerHTML = '';
    uploadDialog.parentElement.hidden = true;
  })
});