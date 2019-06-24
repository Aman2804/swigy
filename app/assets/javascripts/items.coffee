# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on("click", "#button", function() {
   $.ajax({
   var price = $('#price').val();
   url: "/restaurant_items/create",
   type: "POST",
   data: {'price='+price},
   success: function(data) {
       alert('successfully');
     }
   });
});
