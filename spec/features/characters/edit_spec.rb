require 'rails_helper'

RSpec.describe 'edit the member', type: :feature do
  before :each do
    @crew = Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)
    @luffy = Character.create!(name: 'Monks', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: @crew.id)
  end

  it 'links us to the member edit page' do
    visit "/characters/#{@luffy.id}"

    click_link 'Update Me'

    expect(current_path).to eq("/characters/#{@luffy.id}/edit")
  end

  it 'can edit the member' do
    visit "/characters/#{@luffy.id}"
    expect(page).to have_content('Monks')

    click_link 'Update Me'

    fill_in 'Name', with: 'Monkey D. Luffy'
    fill_in 'Age', with: 21
    fill_in id:"devil", with: true
    fill_in 'Epithet', with: 'Straw Hat'
    fill_in 'Bounty', with: 458748574

    click_button 'Update Me'

    expect(current_path).to eq("/characters/#{@luffy.id}")

    expect(page).to have_content('Monkey D. Luffy')
    expect(page).to have_content(458748574)
  end
end