import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    function init() {

      var cards = document.querySelectorAll('.card');
      var backcard = document.querySelector('.backcard');
      var menuButton = document.querySelector('.side-menu-btn');
      var sideMenu = document.querySelector('.side-menu');

      if (!sideMenu) {
        return;
      }

          function toggleSideMenu(event) {
            sideMenu.classList.toggle('side-menu-collapsible');
            event.stopImmediatePropagation();
        };

        if (menuButton && sideMenu) {
          menuButton.addEventListener('click', toggleSideMenu);
        };

        function checkScreenSize() {
          if (window.innerWidth <= 767) {
            sideMenu.classList.add('on-card');
            sideMenu.classList.remove('side-menu-collapsible');
          } else {
            sideMenu.classList.remove('on-card');
            sideMenu.classList.add('side-menu-collapsible');
          };
        };

        // Create and add the "Actions" button to the card
        var sideMenuButton = document.createElement('button');
        sideMenuButton.classList.add('side-menu-btn');
        sideMenuButton.innerHTML = '<i class="fas fa-bars"></i>';
        sideMenuButton.addEventListener('click', function(event) {
          toggleSideMenu(event);
        });

        if (cards.length > 0) {
          cards[0].appendChild(sideMenuButton);
        }


        checkScreenSize(); // Check the screen size when the page loads
        window.addEventListener('resize', checkScreenSize); // Check the screen size when the window is resized

      }

      if (document.readyState === 'loading') {
        document.addEventListener('readystatechange', function () {
          if (document.readyState === 'interactive') {
            init();
          }
        });
      } else {
        init();
      }

  }
}
