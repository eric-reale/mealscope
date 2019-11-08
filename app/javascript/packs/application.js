import "bootstrap";
import { initStarRating } from '../plugins/init_star_rating';
import { initSweetalert } from '../plugins/init_sweetalert';

initStarRating();

import { typedJS } from '../plugins/typed'


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

typedJS();

