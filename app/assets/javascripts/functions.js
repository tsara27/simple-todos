function get_home_html() {
  $.get( "/home", function(html) {
    html_response = $.parseHTML(html);
    console.log(html);
    $(".todos").html(html);
  });
};

function on_form_submit() {
  $('#todo_form').bind('ajax:success', function(data, status, xhr) {
    get_home_html();
  });
};

function move_to_doing() {
  $('.move_to').bind('ajax:success', function(data, status, xhr) {
    get_home_html();
  });
};

