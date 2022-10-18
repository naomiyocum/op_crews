class Character < ApplicationRecord
  belongs_to :crew

  validates :name, presence: true
  validates :age, presence: true
  validates :epithet, presence: true
  validates :bounty, presence: true
  validates :crew_id, presence: true

  def self.names_sorted
    order(:name)
  end

  def self.bounties_higher_than(yen)
    select {|char| char.bounty > yen}
  end
end