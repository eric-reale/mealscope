const heartToggle = () => {
  const heart = document.querySelector('.index-heart-toggle')
  heart.addEventListener('click', (event) => {
  console.log('here');
     event.currentTarget.classList.toggle(''); // Toggle create/destroy pins
  });
};

  export { heartToggle }
