//= require_tree .

if (!PureAdmin) {
  console.error('You must load the PureAdmin JavaScript first before loading this JavaScript.');
}

PureAdmin.inputs.autocompleter = {
  init: function(context) {
    var autocompleters = $('.pure-admin-autocompleter:not(.initialised)', context);

    autocompleters.each(function() {
      input = $(this);
      input.addClass('initialised');

      input.select2({
        ajax: {
          accepts: { json: 'application/x-autocomplete+json, application/json' },
          dataType: 'json',
          delay: 250,

          data: function(params) {
            return {
              query: params.term,
            };
          },

          processResults: function(data, params) {
            return {
              results: data,
            };
          },

          cache: true
        },

        escapeMarkup: function(markup) {
          return markup;
        },

        multiple: false,
        theme: 'pure-admin',
        minimumInputLength: 3,
        templateResult: PureAdmin.inputs.select.formatResult,
        templateSelection: PureAdmin.inputs.select.formatResult
      });
    });
  },
};
