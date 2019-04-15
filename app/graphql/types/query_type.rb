# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :user, UserType, null: false do
      description "Finds user by username"
      argument :username, String, required: true
    end

    field :all_users, [UserType], null: false do
      description "Returns all posts"
    end

    def user(username:)
      User.find_by(username: username)
    end

    def all_users
      User.all
    end
  end
end
