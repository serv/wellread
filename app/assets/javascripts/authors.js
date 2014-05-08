// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var Author = function() {

};

Author.ajaxSearchByName = function(name) {
  $.ajax({
    type: 'GET',
    url: '/api/v0/authors/search_by_name',
    data: {authorName: name}

  }).done(function(data) {
  });
}
