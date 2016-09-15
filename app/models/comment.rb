class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :city
  validates :stars, presence: true
end
