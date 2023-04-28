import { Controller } from "stimulus";
import Swiper, { Navigation, Pagination, Scrollbar } from 'swiper';

export default class extends Controller {
  connect() {
    // console.log("SWIPER CONTROLLER CONNECTED");

    Swiper.use([Navigation, Pagination, Scrollbar]);

    const buttonGrid = document.querySelectorAll('.button-grid');
    const buttonSwipe = document.querySelectorAll('.button-swipe');
    const swipeView = document.querySelector('.swiper');
    const cardsView = document.querySelector('.cards');
    const sproutsToggle = document.getElementById('sprouts-toggle');
    let swiper;

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
  }
}
