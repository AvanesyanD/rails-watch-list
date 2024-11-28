class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, uniqueness: true, presence: true

  before_destroy :check_for_bookmarks_association

  protected

  def check_for_bookmarks_association
    self.bookmarks == nil
  end
end
