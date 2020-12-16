class BasicSchema < GraphQL::Schema
  # Root types
  mutation(Types::MutationType)
  query(Types::QueryType)

  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST

  # Add built-in connections for pagination
  use GraphQL::Pagination::Connections

  # Add subscription support w/ action cable
  use GraphQL::Subscriptions::ActionCableSubscriptions
  subscription(Types::SubscriptionType)
end
