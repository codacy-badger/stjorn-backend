module Types
    class TodoType < Types::BaseObject
        field :id, ID, null: false
        field :items, String, null: false
    end
end
