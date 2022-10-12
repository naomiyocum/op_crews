require 'rails_helper'

RSpec.describe Crew, type: :model do
  let!(:crew_2) {Crew.create!(name: 'Roger Pirates', ranking: 2, ship: 'Oro Jackson', worst_generation: false)}
  let!(:crew_1) {Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)}
  
  it {should have_many(:characters)}

  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:ship)}
    it {should validate_presence_of(:ranking)}
  end
  
end