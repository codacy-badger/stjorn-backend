# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :user, UserType, null: false do
      description 'Finds user by username'
      argument :username, String, required: true
    end

    field :all_users, [UserType], null: false do
      description 'Returns all posts'
    end

    field :all_projects, [ProjectType], null: false
    
    field :all_todos, [TodoType], null: false

    def user(username:)
      User.find_by(username: username)
    end

    def all_users
      User.all
    end

    def workspace(workspace:)
      Workspace.find_by(workspace: workspace)
    end

    def project(project:)
      Project.find_by(project: project)
    end

    def all_projects
      Project.all
    end

    def todo(:todo)
      Todo.find_by(todo: todo)
    end

    def all_todos
      Todo.all
    end
  end
end
