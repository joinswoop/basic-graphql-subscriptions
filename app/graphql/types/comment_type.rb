module Types
  class CommentType < Types::BaseObject
    field :id, Integer, null: false
    field :body, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: true
    field :post_id, Integer, null: true
  end
end
