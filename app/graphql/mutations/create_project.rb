module Mutations
    class CreateProject < BaseMutation

        arguement :name, String, required: true
        
        type Types::ProjectType

        def resolve(name: nil)
            Project.create!(
                name: name,
            )
        end
    end
end