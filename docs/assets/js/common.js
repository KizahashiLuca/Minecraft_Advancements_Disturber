// Element
const headerContent = document.getElementById('headerContent');
const footerContent = document.getElementById('footerContent');

// Fetch header and footer
fetch('/Minecraft_Advancements_Disturber/include/header.html')
  .then((response) => response.text())
  .then((data) => headerContent.innerHTML = data);
fetch('/Minecraft_Advancements_Disturber/include/footer.html')
  .then((response) => response.text())
  .then((data) => footerContent.innerHTML = data);
