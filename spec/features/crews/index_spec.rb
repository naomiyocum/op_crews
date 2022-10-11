require 'rails_helper'

RSpec.describe 'index of crews' do
  it 'shows the name of each crew' do
    crew = Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)
    crew_2 = Crew.create!(name: 'Roger Pirates', ranking: 2, ship: 'Oro Jackson', worst_generation: false)
    
    visit '/crews'
    
    expect(page).to have_content(crew.name)
    expect(page).to have_content(crew_2.name)
  end
end