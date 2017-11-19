$(function() {
  function handler(e) {
    var link = $(e.target);
    if (link.hasClass("jets-delete")) {
      event.preventDefault();
      var message = link.data("confirm");
      if (message) {
        var sure = confirm(message);
        if (sure) {
          deleteItem(link);
        } else {
          console.log("Deletion cancelled");
        }
      }
    }
  }

  function deleteItem(link) {
    var node = link.closest('.jets-element-to-delete');
    node.hide(); // immediately hide element

    var resource = link.attr("href");
    var request = $.ajax({
      url: resource,
      method: "DELETE",
      dataType: "json"
    });

    request.done(function(msg) {
      console.log("msg %o", msg)
      node.remove();
    });

    request.fail(function(jqXHR, textStatus) {
      console.log("textStatus %o", textStatus)
      node.show(); // in the event of a failure re-display the node
    });
  }

  $('body').click(handler)
});
