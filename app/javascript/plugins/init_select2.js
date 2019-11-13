import $ from "jquery"
import select2 from "select2"

const selectdropdown = () => {
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

export { selectdropdown }
