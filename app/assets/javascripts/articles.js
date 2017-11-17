// <a data-confirm="Are you sure?" class="jets-delete" rel="nofollow" data-method="delete" href="/articles/6">Destroy</a>
$(function() {
  function handler(e) {
    var link = $(e.target);
    if (link.hasClass("jets-delete")) {
      event.preventDefault();
      var message = link.data("confirm");
      if (message) {
        var yes = true // confirm(message);
        if (yes) {
          console.log("The item was deleted");
          deleteRecord(link);
        } else {
          console.log("You cancelled");
        }
      }
    }
  }

  function deleteRecord(link) {
    var resource = link.attr("href");
    console.log("resource %o", resource);
    var request = $.ajax({
      url: resource,
      method: "DELETE",
      dataType: "json"
    });

    request.done(function(msg) {
      console.log("success %o", msg);
    });

    request.fail(function(jqXHR, textStatus) {
      console.log("Request failed: " + textStatus);
    });
  }

  $('body').click(handler)
});
