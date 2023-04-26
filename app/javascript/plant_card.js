document.addEventListener('DOMContentLoaded', function () {
  var cards = document.querySelectorAll('.card');
  var backcard = document.querySelector('.backcard--back');
  var menuButton = document.querySelector('.side-menu-btn');
  var sideMenu = document.querySelector('.side-menu');

  function toggleSideMenu() {
    sideMenu.classList.toggle('side-menu-collapsible');
  }

  if (menuButton && sideMenu) {
    menuButton.addEventListener('click', toggleSideMenu);
  }

  if (cards && backcard) {
    cards.forEach((card) => {
      card.firstElementChild.firstElementChild.addEventListener('click', function () {
        flipCard(card, backcard);
      });

      card.lastElementChild.addEventListener('click', function () {
        flipCard(card, backcard);
      });
    });
  }

  function checkScreenSize() {
    if (window.innerWidth <= 767) {
      sideMenu.classList.add('on-card');
      sideMenu.classList.remove('side-menu-collapsible');
    } else {
      sideMenu.classList.remove('on-card');
      sideMenu.classList.add('side-menu-collapsible');
    }
  }

  // Create and add the "Actions" button to the card
  var sideMenuButton = document.createElement('button');
  sideMenuButton.classList.add('side-menu-btn');
  sideMenuButton.innerHTML = '<i class="fas fa-bars"></i>'; // Replace 'Actions' text with a Font Awesome icon
  sideMenuButton.addEventListener('click', toggleSideMenu);
  cards[0].appendChild(sideMenuButton);

  checkScreenSize(); // Check the screen size when the page loads
  window.addEventListener('resize', checkScreenSize); // Check the screen size when the window is resized
});

function flipCard(card, backcard) {
  if (card.classList.contains('is-flipped')) {
    card.classList.remove('is-flipped');
    setTimeout(() => {
      backcard.classList.remove('transform');
    }, 300);
  } else {
    card.classList.add('is-flipped');
    setTimeout(() => {
      backcard.classList.add('transform');
    }, 300);
  }
}
