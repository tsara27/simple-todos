function on_form_submit() {
  $('#todo_form').bind('ajax:success', function(data, status, xhr) {
    $.get( "/home", function(html) {
      html_response = $.parseHTML(html);
      console.log(html);
      $(".todos").html(html);
    });
  });
};