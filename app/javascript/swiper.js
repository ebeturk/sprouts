import Swiper, { Navigation, Pagination, Scrollbar } from 'swiper';
Swiper.use([Navigation, Pagination, Scrollbar]);

document.addEventListener('DOMContentLoaded', function () {
  var buttonGrid = document.querySelectorAll('.button-grid');
  var buttonSwipe = document.querySelectorAll('.button-swipe');
  var swipeView = document.querySelector('.swiper');
  var cardsView = document.querySelector('.cards');
  var sproutsToggle = document.getElementById('sprouts-toggle');
  var swiper;

  function initializeSwiper() {
    if (!swiper) {
      swiper = new Swiper('.swiper', {
        // Optional parameters
        loop: true,
        // If we need pagination
        pagination: {
          el: '.swiper-pagination',
        },
        // Navigation arrows
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
        // And if we need scrollbar
        scrollbar: {
          el: '.swiper-scrollbar',
        },
      });
    }
  }

  function destroySwiper() {
    if (swiper) {
      swiper.destroy();
      swiper = null;
    }
  }

  function toggleViews() {
    if (swipeView.style.display === 'inline-block') {
      destroySwiper();
      cardsView.style.display = 'grid';
      swipeView.style.display = 'none';
    } else {
      swipeView.style.display = 'inline-block';
      cardsView.style.display = 'none';
      initializeSwiper();
    }
  }

  buttonGrid.forEach(function (item) {
    item.addEventListener('click', toggleViews);
  });

  buttonSwipe.forEach(function (item) {
    item.addEventListener('click', toggleViews);
  });

  if (sproutsToggle) {
    sproutsToggle.addEventListener('click', function (event) {
      event.preventDefault();
      toggleViews();
    });
  }

  initializeSwiper();
});
