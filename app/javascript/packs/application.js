import "bootstrap";
import { initStarRating } from '../plugins/init_star_rating';

initStarRating();

import { typedJS } from '../plugins/typed'
import { starsOnIndex } from '../components/starsOnIndex'
import { heartToggle} from '../components/heartToggle'

// typedJS();
// starsOnIndex();


// Bringing meal_id and collection_id into Pin params for creating
document.addEventListener('DOMContentLoaded', () => {
  const wrapper = document.querySelectorAll('.ug-tiles-wrapper a.ug-thumb-wrapper')
  wrapper.forEach(wrapper => {
    const link = wrapper.getAttribute('href').replace('/meals/', '');
    wrapper.addEventListener('click', e => {
      const indexHearts = document.querySelectorAll('.index-heart-toggle');
      indexHearts.forEach(heart => {
        let initialHref = heart.getAttribute('href').split('/')
        // console.log(initialHref)
        initialHref[2] = link
        console.log(initialHref)
        const finalHref = initialHref.join('/')
        heart.setAttribute('href', finalHref);
      })
    })
  })
})

heartToggle();


