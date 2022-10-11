require 'rails_helper'

RSpec.describe 'the characters show page', type: :feature do
  let!(:crew) {Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)}
  let!(:luffy) {Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: crew.id)}
  let!(:chopper) {Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: crew.id)}

  describe 'character show page' do
    it 'shows the attributes for the specific character' do
      visit "/characters/#{luffy.id}"
      save_and_open_page
      expect(page).to have_content(luffy.name)
      expect(page).to have_content(luffy.id)
      expect(page).to have_content(luffy.age)
      expect(page).to have_content(luffy.devil_fruit_eater)
      expect(page).to have_content(luffy.epithet)
      expect(page).to have_content(luffy.bounty)
      expect(page).to have_content(luffy.crew_id)
    end
  end
end