require 'rails_helper'

RSpec.describe 'destroy crew and corresponding members', type: :feature do
 before :each do
    @crew = Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)
    @crew_2 = Crew.create!(name: 'Roger Pirates', ranking: 2, ship: 'Oro Jackson', worst_generation: false)

    @luffy = Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: @crew.id)
    @chopper = Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: @crew.id)
    @zoro = Character.create!(name: 'Roronoa Zoro', age: 21, devil_fruit_eater: false, epithet: 'Pirate Hunter', bounty: 11_110_000, crew_id: @crew.id)
      
    @silver = Character.create!(name: 'Silvers Rayleigh', age: 78, devil_fruit_eater: false, epithet: 'Right Hand of PK', bounty: 0, crew_id: @crew_2.id)
  end
  
  it 'can delete the crew from the show page' do
    visit "/crews/#{@crew.id}"

    click_button 'Delete'

    expect(current_path).to eq("/crews")

    expect(page).to_not have_content(@crew.name)
    expect(page).to have_content(@crew_2.name)
  end
end