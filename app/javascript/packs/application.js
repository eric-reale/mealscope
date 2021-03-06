
import "bootstrap";
import { initStarRating } from '../plugins/init_star_rating';
import { initSweetalert } from '../plugins/init_sweetalert';

initStarRating();

import { previewImageOnFileSelect } from '../components/photo_preview';

import { typedJS } from '../plugins/typed'
import { starsOnIndex } from '../components/starsOnIndex';
import { heartToggle} from '../components/heartToggle';
import { selectdropdown } from '../plugins/init_select2';
import { cuisinetype } from '../plugins/init_select2';
import { dietrestrict } from '../plugins/init_select2';
import { mealtype } from '../plugins/init_select2';
import { restaurantDropdown } from '../plugins/init_select2';
// import ahoy from "ahoy.js";

// ahoy.trackAll();
selectdropdown()
cuisinetype()
dietrestrict()
mealtype()
restaurantDropdown()
// typedJS();
// starsOnIndex();

let currentMealId;


// input.addEventListener('keyup', (event) => {
//  console.log(event);
//  // console.log(event.currentTarget.value);
//   const phrase = event.currentTarget.value;
//   searchDictionaryAPI(phrase);
// });


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
        initialHref[2] = link
        currentMealId = initialHref[2];
        const finalHref = initialHref.join('/')
        heart.setAttribute('href', finalHref);
      })
    })
  })

  const mealCard = document.querySelectorAll('a.index-heart i.far.fa-heart');
  const modalCollections = document.querySelector('#collections');
  mealCard.forEach(card => {
    card.addEventListener('click', e => {
      const mealId = e.currentTarget.dataset.mealId;
      currentMealId = mealId;
      modalCollections.insertAdjacentHTML('beforeend', `
        <div class="d-none">
         <p><a id="heart-toggle" href="/meals/${mealId}/pins?collection_id=150" data-controller="pins" data-method="post" data-remote="true"><i class="far fa-heart"></i></a></p>
        </div>
      `)
    })
  })

  const closeModal = document.querySelector('#heart-modal > div > div > div.modal-header > button');
  closeModal.addEventListener('click', (event) => {
    const heartToggles = document.querySelectorAll('.collection a');
    heartToggles.forEach(heart => {
      console.log('inital heart', heart);
      if (heart.dataset.method === 'delete') {
        const heartCollectionId = heart.classList[2].split('-')[2];
        const initialLink = heart.href.split('/');
        const finalLink = `/meals/${currentMealId}/pins?collection_id=${heartCollectionId}`
        // initialLink.push(`pins?collection_id=${heartCollectionId}`);
        // console.log(initialLink)
        // heart.href = initialLink.join('/');
        console.log('Final link', finalLink);
        heart.href = finalLink
        heart.innerHTML = '<i class="far fa-heart"></i>';
        heart.dataset.method = 'post';
        console.log('modified heart', heart);
      }
    })
  })

  const doneModal = document.querySelector('#button.mt-3.py-2.px-5');
  doneModal.addEventListener('click', (event) => {
    const heartToggles = document.querySelectorAll('.collection a');
    heartToggles.forEach(heart => {
      console.log('inital heart', heart);
      if (heart.dataset.method === 'delete') {
        const heartCollectionId = heart.classList[2].split('-')[2];
        const initialLink = heart.href.split('/');
        const finalLink = `/meals/${currentMealId}/pins?collection_id=${heartCollectionId}`
        // initialLink.push(`pins?collection_id=${heartCollectionId}`);
        // console.log(initialLink)
        // heart.href = initialLink.join('/');
        console.log('Final link', finalLink);
        heart.href = finalLink
        heart.innerHTML = '<i class="far fa-heart"></i>';
        heart.dataset.method = 'post';
        console.log('modified heart', heart);
      }
    })
  })


})



const inputBox = document.querySelector('#input-query');
const submitButton = document.querySelector('#navbar-form-btn');
if (inputBox) {
  inputBox.addEventListener('keyup', e => {
    if (e.code === 'Enter') {
      submitButton.click();
    }
  })
}

//   const wrapper = document.querySelector('#new_review')
//   const hearts = document.querySelector(".far")
//   hearts.addEventListener('click', e => {
//     // console.log('Im here');
//     // console.log(wrapper);
//     let initialHref = wrapper.getAttribute('action').split('/')
//     const link = initialHref[2]
//     console.log(link)
// })


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





