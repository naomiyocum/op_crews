require 'rails_helper'

RSpec.describe Crew, type: :model do
  let!(:crew_2) {Crew.create!(name: 'Roger Pirates', ranking: 2, ship: 'Oro Jackson', worst_generation: false)}
  let!(:crew_1) {Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)}
  let!(:crew_3) {Crew.create!(name: 'Buggy Pirates', ranking: 100, ship: 'Big Top', worst_generation: false)}
  
  let!(:chopper) {Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: crew_1.id)}
  let!(:zoro) {Character.create!(name: 'Roronoa Zoro', age: 21, devil_fruit_eater: false, epithet: 'Pirate Hunter', bounty: 11_110_000, crew_id: crew_1.id)}
  let!(:luffy) {Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: crew_1.id)}
  let!(:silver) {Character.create!(name: 'Silvers Rayleigh', age: 78, devil_fruit_eater: false, epithet: 'Right Hand of PK', bounty: 0, crew_id: crew_2.id)}
  
  it {should have_many(:characters)}

  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:ship)}
    it {should validate_presence_of(:ranking)}
  end

  describe '#chars_count' do
    it 'returns the character count for each crew' do
      expect(crew_1.chars_count).to eq(3)
      expect(crew_2.chars_count).to eq(1)
    end
  end
  
  describe '#sorted_crews' do
    it 'returns the crews ordered by character count' do
      expect(Crew.sorted_crews).to eq([crew_1, crew_2, crew_3])
    end
  end
end