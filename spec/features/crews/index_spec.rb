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

    it 'shows in order by most recently created' do
      visit '/crews'

      expect(crew.name).to appear_before(crew_2.name)
    end

    it 'has an edit button for every crew' do
      visit '/crews'

      expect(page).to have_selector(:link_or_button, 'Edit')

    end

    it 'has a delete button for every crew' do
      visit '/crews'

      expect(page).to have_selector(:link_or_button, 'Delete')
    end
  end
end