require 'rails_helper'

RSpec.describe 'index of characters', type: :feature do
  let!(:crew) {Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)}
  let!(:luffy) {Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: crew.id)}
  let!(:chopper) {Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: crew.id)}

  describe ' when a user visits the characters index' do 
    it 'shows the name of each character' do
      visit '/characters'

      expect(page).to have_content(luffy.name)
      expect(page).to have_content(chopper.name)
    end
  end

  it 'shows each characters attributres', type: :feature do
    visit '/characters'
    
    expect(page).to have_content(luffy.id)
    expect(page).to have_content(chopper.id)

    expect(page).to have_content(luffy.age)
    expect(page).to have_content(chopper.age)

    expect(page).to have_content(luffy.devil_fruit_eater)
    expect(page).to have_content(chopper.devil_fruit_eater)

    expect(page).to have_content(luffy.epithet)
    expect(page).to have_content(chopper.epithet)

    expect(page).to have_content(luffy.bounty)
    expect(page).to have_content(chopper.bounty)

    expect(page).to have_content(luffy.crew_id)
    expect(page).to have_content(chopper.crew_id)

    expect(page).to have_content(luffy.created_at)
    expect(page).to have_content(chopper.created_at)

    expect(page).to have_content(luffy.updated_at)
    expect(page).to have_content(chopper.updated_at)
  end
end