# frozen_string_literal: true

class StjornBackendSchema < GraphQL::Schema
  # mutation(Types::MutationType)
  query(Types::QueryType)
end
