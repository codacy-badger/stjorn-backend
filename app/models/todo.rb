# frozen_string_literal: true

# Todo object storage
class Todo < ApplicationRecord
  belongs_to :workspace
end
