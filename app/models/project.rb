# frozen_string_literal: true

# Projects will contain all workspaces and todo items
class Project < ApplicationRecord
  belongs_to :workspace

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 30 }
end
