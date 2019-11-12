
import "bootstrap";
import { initStarRating } from '../plugins/init_star_rating';
import { initSweetalert } from '../plugins/init_sweetalert';

initStarRating();

import { typedJS } from '../plugins/typed'
import { starsOnIndex } from '../components/starsOnIndex'
import { heartToggle} from '../components/heartToggle'

// import ahoy from "ahoy.js";

// ahoy.trackAll();


// typedJS();
// starsOnIndex();

initSweetalert('#sweet-alert-demo', {
  title: "Are you sure?",
  text: "Once deleted, you will not be able to recover it",
  icon: "warning",
  buttons: true,
  dangerMode: true,
}, (value) => {
  console.log(value);
}
);

// typedJS();

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

  const wrapper = document.querySelector('#new_review')
  const hearts = document.querySelector(".far")
  hearts.addEventListener('click', e => {
    // console.log('Im here');
    // console.log(wrapper);
    let initialHref = wrapper.getAttribute('action').split('/')
    const link = initialHref[2]
    console.log(link)
})


    // const link = wrapper.getAttribute('action').replace('/meals/', '');
    // hearts.addEventListener('click', e => {
    //   console.log('Im here')
    //   const wrapper = document.querySelector('#new_review')
    //   const indexHearts = document.querySelectorAll('.index-heart-toggle');
    //   indexHearts.forEach(heart => {
    //     console.log(heart)
    //     let initialHref = heart.getAttribute('action').split('/')
    //     console.log(initialHref)
    //     initialHref[2] = link
    //     const finalHref = initialHref.join('/')
    //     heart.setAttribute('action', finalHref);
    //   })
    // })



// heartToggle();



