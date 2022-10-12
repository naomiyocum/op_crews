class Character < ApplicationRecord
  belongs_to :crew

  validates :name, presence: true
  validates :age, presence: true
  validates :epithet, presence: true
  validates :bounty, presence: true
  validates :crew_id, presence: true
end