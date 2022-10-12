require 'rails_helper'

RSpec.describe 'index of crews', type: :feature do
  let!(:crew) {Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)}
  let!(:crew_2) {Crew.create!(name: 'Roger Pirates', ranking: 2, ship: 'Oro Jackson', worst_generation: false)}

  describe 'when a user visits the crews index' do
    it 'shows the name of each crew' do
      visit '/crews'
      
      expect(page).to have_content(crew.name)
      expect(page).to have_content(crew_2.name)
    end

    it 'shows when each crew was created' do
      visit '/crews'

      expect(page).to have_content(crew.created_at)
      expect(page).to have_content(crew_2.created_at)
    end
  end
end