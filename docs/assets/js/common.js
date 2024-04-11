// Element
const headerContent = document.getElementById('headerContent');
const footerContent = document.getElementById('footerContent');

// Fetch header and footer
fetch('/include/header.html')
  .then((response) => response.text())
  .then((data) => headerContent.innerHTML = data);
fetch('/include/footer.html')
  .then((response) => response.text())
  .then((data) => footerContent.innerHTML = data);
