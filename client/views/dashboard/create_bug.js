// Generated by CoffeeScript 1.3.3
(function() {

  Template.createBug.events({
    "focus input": function(e, t) {
      return $(e.currentTarget).parent().addClass("focused");
    },
    "blur input": function(e, t) {
      return $(e.currentTarget).parent().removeClass("focused");
    }
  });

}).call(this);
