// Element
const uploadLink = document.getElementById('uploadLink');

const { data } = await axios.get('https://github.com/KizahashiLuca/Minecraft_Advancements_Disturber/releases/download/beta-2.5/Minecraft_Advancements_Disturber-beta-2.5.zip', {
  responseType: 'arraybuffer',
  headers: { Accept: 'application/zip' },
})
const blob = new Blob([data], { type: 'application/zip' })

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
          const uri = URL.createObjectURL(blob)
          const link = document.createElement('a')
          link.download = 'minecraft_advancements_disturber.zip'
          link.href = uri
          link.click()
        }
      )
      .catch(error => 
        {
          console.error('Error loading the page: ', error);
        }
      );
  }
);