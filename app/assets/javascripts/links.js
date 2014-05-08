var ready;
ready = function() {

  if ($('#new-link').length > 0) {
    new AuthorTypeahead();
  }

};
$(document).ready(ready);
$(document).on('page:load', ready);

var AuthorTypeahead = function() {
  var linkAuthors = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    local: [],
    remote: '/api/v0/authors/search_by_name?authorName=%QUERY'
  });

  linkAuthors.initialize();

  $('.author-field .typeahead').typeahead({
    hint: true,
    highlight: true,
    minLength: 1
  },
  {
    name: 'link-authors',
    displayKey: 'name',
    source: linkAuthors.ttAdapter()
  });
}
