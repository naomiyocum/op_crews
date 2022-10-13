require 'rails_helper'

RSpec.describe 'edits the crew', type: :feature do
  before :each do
    @crew = Crew.create!(name: 'Stroop', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)
  end

  it 'links to the edit page' do
    visit "/crews/#{@crew.id}"

    click_button 'Update Crew'

    expect(current_path).to eq("/crews/#{@crew.id}/edit")
  end

  it 'can edit the crew' do
    visit "/crews/#{@crew.id}"

    expect(page).to have_content('Stroop')

    click_button 'Update Crew'

    fill_in 'Name', with: 'Straw Hat Pirates'
    fill_in 'Ranking', with: 1
    fill_in 'Ship', with: 'Thousand Sunny'
    fill_in id:"worst", with: true

    click_button 'Update Crew'

    expect(current_path).to eq("/crews/#{@crew.id}")

    expect(page).to have_content('Straw Hat Pirates')
  end
end