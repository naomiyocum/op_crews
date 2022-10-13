class Crew < ApplicationRecord
  has_many :characters

  validates :name, presence: true
  validates :ship, presence: true
  validates :ranking, presence: true
  

end