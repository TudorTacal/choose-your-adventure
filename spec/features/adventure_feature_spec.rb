require 'rails_helper'

feature 'Adventure' do
  before do
    city = City.create(name: 'London', id:1)
    Adventure.create(name: "Jack the Ripper", city_id: city.id )
  end
  context 'User can see the story about the adventure they have chosen' do
    scenario 'it should show the text and image about the adventure' do
      sign_up('Asuka', 'test@email', 'password')
      select_city_london
      expect(page).to have_content('Jack the Ripper')
      expect(page).to have_content('More than a century ago, a ruthless serial killer')
      expect(page).to have_css('image')
    end
  end
end
