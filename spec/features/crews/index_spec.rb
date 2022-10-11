require 'rails_helper'

RSpec.describe 'index of crews' do
  it 'shows the name of each crew' do
    crew = Crew.create(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)
    
    visit '/crews'

    expect(page).to have_content(crew)
  end
end