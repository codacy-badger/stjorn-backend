# frozen_string_literal: true

module Mutations
  class CreateUser < Mutations::BaseMutation
    argument :username, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    def resolve(username: nil, email: nil, password: nil)
      # TODO: return session/token/jwt
      user = User.new(username: username, email: email, password: password)
      if user.save
        {
          user: user,
          errors: []
        }
      else
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end
end
