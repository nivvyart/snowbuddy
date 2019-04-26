document.addEventListener("turbolinks:load", function(){
  $input = $("[data-behavior='autocomplete']")


  let options = {
    getValue: "name",
    url: function(phrase) {
      return "/search.json?q=" + phrase;
    },
    categories: [
      {
        listLocation: "fields",
        header: "<strong>Resorts</strong>",
      },
      {
        listLocation: "regions",
        header: "<strong>Regions</strong>",
      }
    ],
    list: {
      onChooseEvent: function() {
        var url = $input.getSelectedItemData().url
        $input.val("")
        Turbolinks.visit(url)

      }
    },
    theme: "square"
  }
  $input.easyAutocomplete(options)
});
