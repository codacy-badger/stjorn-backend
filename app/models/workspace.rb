# frozen_string_literal: true

# container for project items
class Workspace < ApplicationRecord
  has_many :project

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 200 }
end
