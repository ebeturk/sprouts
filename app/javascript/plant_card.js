document.addEventListener('DOMContentLoaded', function () {
  var cards = document.querySelectorAll('.card');
  var backcard = document.querySelector('.backcard--back')

  cards.forEach((card) => {
    card.firstElementChild.firstElementChild.addEventListener('click', function () {
      flipCard(card, backcard);
    });

    card.lastElementChild.addEventListener('click', function () {
      flipCard(card, backcard);
    });
  });
});

function flipCard(card, backcard) {
  if (card.classList.contains('is-flipped')) {
    card.classList.remove('is-flipped');
    setTimeout(() => {
      backcard.classList.remove("transform");
    }, 300);
  } else {
    card.classList.add('is-flipped');
    setTimeout(() => {
      backcard.classList.add("transform");
    }, 300);
  }
}
