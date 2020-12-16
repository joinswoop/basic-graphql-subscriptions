class Subscriptions::PostLiked < Subscriptions::BaseSubscription
  field :post, Types::PostType, null: false

  argument :id, ID, description: 'The ID of post you would like to get notifications for', required: true
end
