module Mutations
    class CreateTodo < BaseMutation

        arguement :items, String, required: true
        
        type Types::TodoType

        def resolve(items: nil)
            Todo.create!(
                items: items,
            )
        end
    end
end