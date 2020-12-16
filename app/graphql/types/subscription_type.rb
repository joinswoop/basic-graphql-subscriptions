class Types::SubscriptionType < GraphQL::Schema::Object
  description 'Subscriptions'

  field :post_created, subscription: Subscriptions::PostCreated
  field :post_liked, subscription: Subscriptions::PostLiked
end
