class Crew < ApplicationRecord
  has_many :characters, dependent: :delete_all

  validates :name, presence: true
  validates :ship, presence: true
  validates :ranking, presence: true

  def chars_count
    characters.count
  end
  

end