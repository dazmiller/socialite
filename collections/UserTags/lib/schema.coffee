@Schemas ||= {}

@Schemas.UserTag = new SimpleSchema(
  name:
    type: String,
    label: "Data Point Name"
    min: 3
  value:
    type: String,
    label: "Value"
    regEx: SimpleSchema.RegEx.Id
  vote:
    type: Number
    label: "Id"
    regEx: SimpleSchema.RegEx.Id
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