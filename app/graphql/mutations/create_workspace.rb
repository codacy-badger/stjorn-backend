module Mutations
    class CreateWorkspace < BaseMutation

        arguement :name, String, required: true
        arguement :description, String, required: true


        type Types::WorkspaceType

        def resolve(name: nil, description: nil)
            Workspace.create!(
                name: name,
                description: description,
            )
        end
    end
end