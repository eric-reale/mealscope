import Typed from 'typed.js';

const searchInput = document.querySelector("#search-index-input");

const typedJS = () => {
  if (searchInput) {
    const options = {
      strings: ['Italian', 'Avocado toast', 'Vegan', "Vietnamese", 'Breakfast', "Gluten-free", 'Spaghetti carbonara', 'Sushi', 'Dessert', 'Pad thai', 'Keto', 'Salmon', 'French', 'Pizza', 'Vegetarian', 'Peruvian', 'Cajun', 'Dairy-free', 'Brunch', 'Poke bowl'],
      typeSpeed: 30
    }

    const typed = new Typed('.sinput', options);

    onComplete: (self) => {}
  }
};

export { typedJS }

// `${DietTag::DIET_TAG.sample}`
