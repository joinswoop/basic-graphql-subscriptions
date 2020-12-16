module Mutations
  class LikePost < GraphQL::Schema::Mutation
    description 'Give user ability to like post'

    # Input
    argument :id, ID, required: true

    # Output
    field :post, Types::PostType, null: false

    def resolve(id:)
      post = ::Post.find(id)
      post.like!
      {post: post}
    end
  end
end
