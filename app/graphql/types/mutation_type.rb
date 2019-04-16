# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_workspace, mutation: Mutations::CreateWorkspace
    field :create_project, mutation: Mutations::CreateProject
    field :create_todo, mutation: Mutations::CreateTodo
  end
end
