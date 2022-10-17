require 'rails_helper'

RSpec.describe 'the crew creation', type: :feature do
  it 'links to the new page from the artist index' do
    visit '/crews'

    click_link('New Crew')
    expect(current_path).to eq("/crews/new")
  end

  it 'can create a new crew' do
    visit '/crews/new'

    fill_in('Name', with: 'Kid Pirates')    
    fill_in('Ranking', with: '24')    
    fill_in('Ship', with: 'Victoria Punk')    
    select('true', from: :worst_generation)   

    click_button('Create Crew')

    new_crew_id = Crew.last.id
    expect(current_path).to eq("/crews")
    expect(page).to have_content("Kid Pirates")
  end

end