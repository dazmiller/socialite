@Invitations.after.insert( (userId, doc) ->
  Email.send(
    from: "noreply@serviceme.com",
    to: doc.email
    subject: "Invitation to serviceme.com"
    text:
      """
        Hi

        You have received an invitation to serviceme
        just visit: #{Meteor.absoluteUrl()}invitation/#{doc._id}

        Thanks
      """
  )
)