require 'rails_helper'

RSpec.describe 'the character creation', type: :feature do
  before :each do
    @crew = Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)
  end

  it 'links to the new page from the character index' do
    visit "/crews/#{@crew.id}/characters"

    click_link "Create Member"
    
    expect(current_path).to eq("/crews/#{@crew.id}/characters/new")
  end

  it 'can create a new character' do
    visit "/crews/#{@crew.id}/characters/new"

    fill_in('Name', with: 'Sanji')
    fill_in('Age', with: 21)
    fill_in(id:"devil", with: false)
    fill_in('Epithet', with: 'Black Leg')
    fill_in('Bounty', with: 10320000)

    click_button 'Create Member'

    expect(current_path).to eq("/crews/#{@crew.id}/characters")
    expect(page).to have_content('Sanji')
  end
end