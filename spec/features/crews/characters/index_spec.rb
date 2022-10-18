require 'rails_helper'

RSpec.describe 'list characters of specific crew', type: :feature do
  let!(:crew) {Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)}
  let!(:crew_2) {Crew.create!(name: 'Roger Pirates', ranking: 2, ship: 'Oro Jackson', worst_generation: false)}

  let!(:chopper) {Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: crew.id)}
  let!(:zoro) {Character.create!(name: 'Roronoa Zoro', age: 21, devil_fruit_eater: false, epithet: 'Pirate Hunter', bounty: 11_110_000, crew_id: crew.id)}
  let!(:luffy) {Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: crew.id)}
  let!(:silver) {Character.create!(name: 'Silvers Rayleigh', age: 78, devil_fruit_eater: false, epithet: 'Right Hand of PK', bounty: 0, crew_id: crew_2.id)}

  describe 'when a user visits the crew character index' do
    it 'lists each character and corresponding attributes associated to that crew' do
      visit "crews/#{crew.id}/characters"

      expect(page).to have_content(luffy.name)
      expect(page).to have_content(chopper.name)
      expect(page).to have_content(zoro.name)
    end

    it 'shows a link to sort characters alphabetically' do
      visit "crews/#{crew.id}/characters"

      click_link 'Alphabetize'

      expect(luffy.name).to appear_before(zoro.name)
      expect(zoro.name).to appear_before(chopper.name)
    end

    it 'shows an edit button next to each character' do
      visit "crews/#{crew.id}/characters"

      expect(page).to have_selector(:link_or_button, 'Edit')
    end

    it 'has a delete button near each character' do
      visit "crews/#{crew.id}/characters"

      expect(page).to have_selector(:link_or_button, 'Delete')
    end

    it 'has a form allowing input for bounties' do 
      visit "crews/#{crew.id}/characters"

      fill_in('yen', with: 100000)
      click_button 'Submit'

      expect(page).to_not have_content(chopper.name)
    end
  end
end