import Rails from '@rails/ujs';

document.addEventListener("turbolinks:load", function() {

  Rails.ajax({
    type: "GET",
    url: "/customer/organizations",
    data: { },
    success: function(repsonse){ },
    error: function(repsonse){ }
  })

});
