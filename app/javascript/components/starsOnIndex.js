const starsOnIndex = () => {
  const card = document.querySelector('.ug-thumb-wrapper')
  card.addEventListener("mouseover", (event) => {
      // card.createElement(div);
      card.innerHTML = "Test";
      event.currentTarget.classList.add('.add-right-div');
    });
};


// const starsOnIndex = () => {
//   var newDiv = document.createElement("div");
//   var addStars= document.createTextNode("Insert Star here");
//   newDiv.appendChild(addStars);

//   const card = document.querySelector('.ug-thumb-wrapper');
//   document.body.insertBefore(newDiv, card);
// };

  export { starsOnIndex }
