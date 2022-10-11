require 'rails_helper'

RSpec.describe 'index of characters' do
  it 'shows the name of each character' do
    crew = Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)
    luffy = Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: crew.id)
    
    visit '/characters'
    
    expect(page).to have_content(luffy.name)
  end

  it 'shows each characters attributres' do
    crew = Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)
    luffy = Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: crew.id)
    
    visit '/characters'
    
    expect(page).to have_content(luffy.id)
    expect(page).to have_content(luffy.age)
    expect(page).to have_content(luffy.devil_fruit_eater)
    expect(page).to have_content(luffy.epithet)
    expect(page).to have_content(luffy.bounty)
    expect(page).to have_content(luffy.crew_id)

    expect(page).to have_content(luffy.created_at)
    expect(page).to have_content(luffy.updated_at)
  end
end