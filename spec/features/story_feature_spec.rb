require 'rails_helper'


feature 'stories' do
  context 'Visiting story profile page' do
    before do
      sign_up('Tudor', 'tudor@email.com', '123456')
      city = City.create(name: "London")
      adventure = Adventure.create(name: 'Jack the Riper', city_id: city.id)
      Story.create(adventure_id: adventure.id, description: "Starting your Jack the Ripper adventure", image_url: "http://littleatoms.com/sites/default/files/2015/jack_the_ripper_museum/jack-the-ripper-mitre-square.png", location: "co-ordinates")
      # Game.create(user_id: @user_id, adventure_id: @adventure.id)
      # @game = Game.first
    end

    scenario 'When we visit story page it should display a title, description and choices' do
      visit("/story/1")
      expect(page).to have_content("Starting your Jack the Ripper adventure")
      expect(page).to have_content("http://littleatoms.com/sites/default/files/2015/jack_the_ripper_museum/jack-the-ripper-mitre-square.png")
      expect(page).to have_content("co-ordinates")
    end
  end
end
