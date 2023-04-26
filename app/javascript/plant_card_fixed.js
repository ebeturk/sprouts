document.addEventListener('DOMContentLoaded', function () {
  var cards = document.querySelectorAll('.card');
  var backcard = document.querySelector('.backcard--back');
  var menuButton = document.querySelector('.side-menu-btn');
  var sideMenu = document.querySelector('.side-menu');


  function toggleSideMenu(event) {
    event.stopPropagation(); // Prevent the event from triggering the flip
    sideMenu.classList.toggle('side-menu-collapsible');
  }

  if (cards) {
    cards.forEach((card) => {
      const backcard = card.querySelector('.backcard');

      // Create and add the side-menu button to the card
      var menuButton = document.createElement('button');
      menuButton.classList.add('side-menu-btn');
      menuButton.innerHTML = '<i class="fas fa-bars"></i>'; // Replace 'Actions' text with a Font Awesome icon
      menuButton.addEventListener('click', toggleSideMenu);
      card.appendChild(menuButton);

      if (backcard) {
        card.addEventListener('click', function (event) {
          // Check if the click event is not triggered by the side-menu button or its children
          if (!event.target.classList.contains('side-menu-btn') && !event.target.closest('.side-menu-btn')) {
            flipCard(card, backcard);
          }
        });
      }
    });
  }

  function flipCard(card, backcard) {
    if (card.classList.contains('is-flipped')) {
      card.classList.remove('is-flipped');
      backcard.style.display = 'none';
    } else {
      card.classList.add('is-flipped');
      backcard.style.display = 'block';
    }
  }

  function checkScreenSize() {
    const screenWidth = window.innerWidth;
    if (screenWidth <= 768) {
      cards.forEach((card) => {
        const backcard = card.querySelector('.backcard');
        card.classList.remove('is-flipped');
        backcard.style.display = 'none';
      });
    }
  }

  checkScreenSize();
  window.addEventListener('resize', checkScreenSize);
});
