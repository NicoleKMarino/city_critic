class City < ApplicationRecord
  validates :name, presence: true
  belongs_to :state
  has_many :comments

  def average_review
    stars = self.comments.pluck(:stars)
    stars.reduce(:+)/stars.count
  end

end
