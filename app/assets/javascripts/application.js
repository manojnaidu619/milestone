// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require semantic-ui
//= require_tree .

$(document).on('turbolinks:load',function() {          // On turbolinks load, perform all the functions 
  $('.close').click(function() {
    $('#error_messages_display').fadeOut(375);
  });
  var simplemde = new SimpleMDE({ element: $("#description_box")[0] });
});
