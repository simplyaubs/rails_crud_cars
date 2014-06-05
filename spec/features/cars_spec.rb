require 'spec_helper'

feature 'CRUD favorite Cars' do
  scenario 'User can create a city' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Car'
    fill_in 'Make', with: 'Jeep'
    fill_in 'Model', with: 'Wrangler'
    click_on 'Create Car'
    expect(page).to have_content 'Jeep'
    expect(page).to have_content 'Wrangler'
  end
end