@ProfileController = RouteController.extend
  layoutTemplate: 'generalLayout'
  template: 'userprofile'
  onBeforeAction: -> AccountsHelper.signInRequired(@)
  #waitOn: () -> [
   # Meteor.subscribe('companies'),
   # Meteor.subscribe('bugs_with_votes')
  #]
 # data: () ->
  #  company: Companies.findOne()
  #  bugs: Bugs.find()