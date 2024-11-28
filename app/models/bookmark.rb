class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list, message: "has already been added to this list" }
  validates :comment, length: { minimum: 6, message: "must be at least 6 characters long" }
end
