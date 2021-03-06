Router.onRun () -> 
  GAnalytics.pageview() if typeof GAnalytics != "undefined" 
  @next()

Router.route '/', {name: "landing", controller: "LandingController"}
Router.route "/dashboard", {controller: "DashboardController"}
Router.route "/logout", {controller: "LogoutController"}
Router.route "/invitation/:_id", {controller: "InvitationController"}
Router.route "/profile", {controller: "ProfileController"}