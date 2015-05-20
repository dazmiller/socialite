// Generated by CoffeeScript 1.3.3
(function() {

  Template.userSignUp.events({
    "focus input": function(e, t) {
      return $(e.currentTarget).parent().addClass("focused");
    },
    "blur input": function(e, t) {
      return $(e.currentTarget).parent().removeClass("focused");
    }
  });

  AutoForm.hooks({
    signUpForm: {
      onSubmit: function(doc) {
        var that;
        this.event.stopPropagation();
        that = this;
        Meteor.call('/api/accounts/create', doc, function(error, result) {
          if (error) {
            Session.set("error", "Cannot sign up");
          } else {
            Session.set("success", "Signed up successfully");
            Meteor.loginWithPassword(doc.email, doc.password);
            Router.go(AccountsHelper.afterSignInPath());
          }
          return that.done();
        });
        return false;
      }
    }
  });

}).call(this);