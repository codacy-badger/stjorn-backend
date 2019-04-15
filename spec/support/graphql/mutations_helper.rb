# frozen_string_literal: true

module GraphQL
  module MutationsHelper
    def create_user_mutation
      %(
				mutation CreateUser(
					$username: String!,
					$email: String!,
					$password: String!,
				) {
					createUser(input: {
						username:$username,
						email:$email,
						password:$password,
					}) {
						user {
							id
							username
							email
						}
						errors,
					}
				}
			)
    end
  end
end
