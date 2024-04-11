// Element
const uploadCAD = document.getElementById('uploadCAD');

// upload function
function upload()
{
  var uploadCAD = document.getElementById('uploadCAD');
  const file = uploadCAD.files[0];
  const formData = new FormData();
  formData.append('cad', file);

  fetch('/portal/',
    {
      method: 'POST',
      body: formData,
    }
  )
  .then(response => response.json())
  .then(data => 
    {
      if (data.success)
      {
        window.location.href = `/portal/edit/${data.newStem}`;
      }
      else
      {
        alert('Upload failed.');
      }
    }
  )
  .catch(error =>
    {
      alert(error.message);
    }
  );
}

// Event listener
if (uploadCAD)
{
  uploadCAD.addEventListener('change', upload);
}

// Export
export
{
  upload
};