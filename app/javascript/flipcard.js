function flipCard(card, backcard) {
  card.classList.toggle('is-flipped');
  setTimeout(() => {
    card.classList.toggle("transform")
  }, 300);

  backcard.classList.toggle('is-flipped');
  setTimeout(() => {
    backcard.classList.toggle("transform")
  }, 300);
};

if (cards && backcard) {
  cards.forEach((card) => {
    card.firstElementChild.firstElementChild.addEventListener('click', function () {
      flipCard(card, backcard);
    });

    card.lastElementChild.addEventListener('click', function () {
      flipCard(card, backcard);
    });
  });

  backcard.addEventListener('click', function () {
    flipCard(cards[0], backcard);
  });
};
