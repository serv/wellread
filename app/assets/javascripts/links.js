var ready;
ready = function() {

  if ($('#new-link').length > 0) {
    new AuthorTypeahead();
    new CategoryTypeahead();
    toggleSuggestions();
  }
  if ($('#more-info').length > 0) {
    datePickerPublicationDate();
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

var CategoryTypeahead = function() {
  var linkCategories = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    local: [],
    remote: '/api/v0/categories/search_by_name?categoryName=%QUERY'
  });

  linkCategories.initialize();

  $('.category-field .typeahead').typeahead({
    hint: true,
    highlight: true,
    minLength: 1
  },
  {
    name: 'link-categories',
    displayKey: 'name',
    source: linkCategories.ttAdapter()
  });
}

var toggleSuggestions = function() {
  var selectors = [
    {inputSelect: '#link_title', suggestSelect: '#selected-title'},
    {inputSelect: '#link_url', suggestSelect: '#selected-url'},
    {inputSelect: '.author-field input', suggestSelect: '#selected-author'},
    {inputSelect: '.category-field input', suggestSelect: '#selected-category'}
  ];

  _.each(selectors, function(element){
    $(element['inputSelect']).on('focus', function(){
      $('#form-suggestion').children().hide();
      $(element['suggestSelect']).show();
    });
  });
};

var datePickerPublicationDate = function() {
  $('.input-group.date').datepicker({
    startView: 1,
    todayBtn: true
  });
};
