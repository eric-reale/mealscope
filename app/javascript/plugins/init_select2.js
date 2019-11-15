  import $ from "jquery"
import select2 from "select2"

const selectdropdown = () => {
  if (document.querySelector("#cuisine_tags")) {
  console.log($("#cuisine_tags").data().options)
  const options = {
    data: $("#cuisine_tags").data().options,
    width: "100%",
    multiple: true
  }
  console.log(options.data)
  $(document).ready(function() {
    $("#cuisine_tags").select2(options)
  })
};
}

const cuisinetype = () => {
  if (document.querySelector("#cuisine_addameal_type")) {
  console.log($("#cuisine_addameal_type").data().options)
  const options = {
    data: $("#cuisine_addameal_type").data().options,
    width: "100%",
    multiple: true
  }
  console.log(options.data)
  $(document).ready(function() {
    $("#cuisine_addameal_type").select2(options)
  })
};
}

const dietrestrict = () => {
  if (document.querySelector("#diet_restrict_type")) {
  console.log($("#diet_restrict_type").data().options)
  const options = {
    data: $("#diet_restrict_type").data().options,
    width: "100%",
    multiple: true
  }
  console.log(options.data)
  $(document).ready(function() {
    $("#diet_restrict_type").select2(options)
  })
};
}

const mealtype = () => {
  if (document.querySelector("#meal_addmeal_type")) {
  console.log($("#meal_addmeal_type").data().options)
  const options = {
    data: $("#meal_addmeal_type").data().options,
    width: "100%",
    multiple: true
  }
  console.log(options.data)
  $(document).ready(function() {
    $("#meal_addmeal_type").select2(options)
  })
};
}

const restaurantDropdown = () => {
  if (document.querySelector("#restaurant_search")) {
  console.log($("#restaurant_search").data().options)
  const options = {
    data: $("#restaurant_search").data().options,
    width: "100%"
  }
    console.log(options)
  console.log(options.data)
  $(document).ready(function() {
    $("#restaurant_search").select2(options)
  })
};
}


export { selectdropdown }
export { cuisinetype }
export { dietrestrict }
export { mealtype }
export { restaurantDropdown }
