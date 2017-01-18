def sign_up(name, email, password)
  visit '/'
  click_link 'Sign up'
  fill_in 'Username', with: name
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  fill_in 'Password confirmation', with: password
  click_button 'Sign up'
end

def select_city_london
  select 'London', from: 'cities_from_model'
  click_button "Submit"
end
