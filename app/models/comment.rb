class Comment < ApplicationRecord
  validates :pros, presence: true
  validates :cons, presence: true
  belongs_to :user
  belongs_to :city
end
