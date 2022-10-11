require 'rails_helper'

RSpec.describe Crew, type: :model do
  let!(:crew_1) {Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)}

  it {should have_many(:characters)}

  describe 'validations' do
    it 'validates the presence of a specific attribute' do
      expect(crew_1.validate_presence_of(:name)).to be(true)
      expect(crew_1.validate_presence_of(:ranking)).to be(true)
      expect(crew_1.validate_presence_of(:ship)).to be(true)
      expect(crew_1.validate_presence_of(:worst_generation)).to be(true)
      expect(crew_1.validate_presence_of(:created_at)).to be(true)
      expect(crew_1.validate_presence_of(:updated_at)).to be(true)
      expect(crew_1.validate_presence_of(:id)).to be(true)
    end
  end
  
end