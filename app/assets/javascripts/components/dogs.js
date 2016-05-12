;(function () {
  "use strict"

  Vue.component('vue-dogs', {
    template: '#vue-dogs-template',
    data: function() {
      return {
        dogs: [],
      }
    },

    ready: function () {
      var self = this
      $.ajax({
        url: "/api/dogs",
        method: "GET"
      }).then(function (response) {
        self.dogs = response
      })
    },

  })

})();


