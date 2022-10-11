require 'rails_helper'

RSpec.describe Crew, type: :model do

  describe 'instance methods' do
    
    describe '#straw_hat?' do
      it 'returns true if the crew name includes Straw Hat' do
        crew = Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)

        expect(crew.straw_hat?).to be(true)
      end
    end
  end
end