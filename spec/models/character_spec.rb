require 'rails_helper'

RSpec.describe Character, type: :model do
  let!(:crew) {Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)}
  let!(:luffy) {Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: crew.id)}
  let!(:chopper) {Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: crew.id)}

  it {should belong_to(:crew)}

  describe 'validations' do
    it 'validates the presence of a specific attribute' do
      expect(luffy.validate_presence_of(:name)).to be(true)
      expect(luffy.validate_presence_of(:id)).to be(true)
      expect(luffy.validate_presence_of(:age)).to be(true)
      expect(luffy.validate_presence_of(:devil_fruit_eater)).to be(true)
      expect(luffy.validate_presence_of(:epithet)).to be(true)
      expect(luffy.validate_presence_of(:crew_id)).to be(true)
      expect(luffy.validate_presence_of(:bounty)).to be(true)
    end
  end
end