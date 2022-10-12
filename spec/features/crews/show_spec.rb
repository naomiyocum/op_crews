require 'rails_helper'

RSpec.describe 'the crews show page', type: :feature do
  before :each do
    @crew = Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)
    @crew_2 = Crew.create!(name: 'Roger Pirates', ranking: 2, ship: 'Oro Jackson', worst_generation: false)

    @luffy = Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: @crew.id)
    @chopper = Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: @crew.id)
    @zoro = Character.create!(name: 'Roronoa Zoro', age: 21, devil_fruit_eater: false, epithet: 'Pirate Hunter', bounty: 11_110_000, crew_id: @crew.id)
      
    @silver = Character.create!(name: 'Silvers Rayleigh', age: 78, devil_fruit_eater: false, epithet: 'Right Hand of PK', bounty: 0, crew_id: @crew_2.id)
  end
  
  describe 'when a user goes to the crews show page' do 
    it 'shows the name of specific crew' do
      visit "/crews/#{@crew.id}"

      expect(page).to have_content(@crew.name)
      expect(page).to have_content(@crew.id)
      expect(page).to have_content(@crew.ranking)
      expect(page).to have_content(@crew.ship)
      expect(page).to have_content(@crew.worst_generation)
      expect(page).to have_content(@crew.created_at)
      expect(page).to have_content(@crew.updated_at)
    end

    it 'shows the number of characters associated with the crew' do
      visit "/crews/#{@crew.id}"
      
      expect(page).to have_content(@crew.characters.count)
    end

    it 'displays a link to take user to the characters of the crew' do
      visit "/crews/#{@crew.id}"

      click_on @crew.characters.count

      expect(current_path).to eq("/crews/#{@crew.id}/characters")
    end
  end
end