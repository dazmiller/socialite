@UserTags.attachSchema(@Schemas.UserTag)
@UserTags._transform = (UserTag) -> _.extend(UserTag, @Transforms.UserTag)