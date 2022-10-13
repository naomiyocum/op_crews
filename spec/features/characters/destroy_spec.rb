require 'rails_helper'

RSpec.describe 'destroy character', type: :feature do
  before :each do
    @crew = Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)

    @luffy = Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: @crew.id)
    @chopper = Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: @crew.id)
  end

  it 'can delete the character' do
    visit "/characters/#{@luffy.id}"

    click_button 'Delete'

    expect(current_path).to eq("/characters")

    expect(page).to_not have_content(@luffy.name)
    expect(page).to have_content(@chopper.name)
  end
end