// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import Swiper from 'swiper';
  // import Swiper styles
  import 'swiper/css';

  

  // init Swiper:
  const swiper = new Swiper('.swiper', {
    // configure Swiper to use modules
    modules: [Navigation, Pagination],
    ...
  });

  // import Swiper from 'swiper/bundle';

  // import styles bundle
  import 'swiper/css/bundle';

  // init Swiper:
  // const swiper = new Swiper(...);
