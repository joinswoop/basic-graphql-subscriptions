module Types
  class MutationType < Types::BaseObject
    description "The mutation root root of this schema"

    field :like_post, mutation: Mutations::LikePost
  end
end
