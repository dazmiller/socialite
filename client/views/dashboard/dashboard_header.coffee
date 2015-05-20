Template.dashboardHeader.helpers {
  showInvitation: () ->
    Session.get("isInviteFormVisible")
}


Template.dashboardHeader.events {
  "click .invite-link": (e, t) ->
    if typeof Session.get("isInviteFormVisible") is 'undefined' then Session.set("isInviteFormVisible", false)
    # if Session.get("isInviteFormVisible")==false  then vis=true else vis=false

    Session.set("isInviteFormVisible",true)
  "click .toggle-button a": () ->
    Session.set("isInviteFormVisible", false)
}

AutoForm.hooks {
  createInvitation: {
    onSuccess: () ->
      Session.set("isInviteFormVisible", false)
      Session.set("success", "Invitation sent to the user")
  }
}