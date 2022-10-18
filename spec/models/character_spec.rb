require 'rails_helper'

RSpec.describe Character, type: :model do
  let!(:crew) {Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)}
  let!(:luffy) {Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: crew.id)}
  let!(:chopper) {Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: crew.id)}
  let!(:zoro) {Character.create!(name: 'Rorona Zoro', age: 21, devil_fruit_eater: false, epithet: 'Swordsmen', bounty: 107657, crew_id: crew.id)}

  it {should belong_to(:crew)}

  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:age)}
    it {should validate_presence_of(:epithet)}
    it {should validate_presence_of(:bounty)}
  end

  describe 'class methods' do
    describe '#names_sorted' do
      it 'returns all characters sorted by name' do
        expect(Character.names_sorted).to eq([luffy, zoro, chopper])
      end
    end

    describe '#bounties_higher_than' do
      it 'returns characters with bounties higher than given' do
        expect(Character.bounties_higher_than(1000)).to eq([luffy, zoro])
        expect(Character.bounties_higher_than(200_000)).to eq([luffy])
      end
    end
  end

end