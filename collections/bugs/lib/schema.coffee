@Schemas ||= {}

@Schemas.Bug = new SimpleSchema(
  name:
    type: String,
    label: "How can we save you money? Write it here"
    min: 3
  companyId: 
    type: String,
    label: "Company"
    regEx: SimpleSchema.RegEx.Id
  vote: 
    type: Number
    label: "Vote"
    defaultValue: 0
  createdAt:
    type: Date,
    autoValue: () ->
      if (@isInsert) 
        return new Date
      else if this.isUpsert
        return {$setOnInsert: new Date}
      else
        @unset()
)