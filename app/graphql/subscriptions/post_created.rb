class Subscriptions::PostCreated < Subscriptions::BaseSubscription
  field :post, Types::PostType, null: false
end
