require 'rails_helper'

RSpec.describe 'the crews show page', type: :feature do
  let!(:crew) {Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)}
  
  describe 'when a user goes to the crews show page' do 
    it 'shows the name of specific crew' do
      visit "/crews/#{crew.id}"

      expect(page).to have_content(crew.name)
      expect(page).to have_content(crew.id)
      expect(page).to have_content(crew.ranking)
      expect(page).to have_content(crew.ship)
      expect(page).to have_content(crew.worst_generation)
      expect(page).to have_content(crew.created_at)
      expect(page).to have_content(crew.updated_at)
    end
  end
end