module Types
  class PostType < Types::BaseObject
    field :id, Integer, null: false
    field :body, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: true
    field :comments, [CommentType], null: true
    field :num_likes, Integer, null: true
  end
end
