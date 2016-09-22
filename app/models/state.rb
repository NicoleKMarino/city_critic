class State < ApplicationRecord
  has_many :cities
  validates :name, presence: true
  validates :abbreviation, presence: true
end
