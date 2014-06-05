require 'spec_helper'

feature 'CRUD favorite Cars' do
  scenario 'User can create a car' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Car'
    fill_in 'Make', with: 'Jeep'
    fill_in 'Model', with: 'Wrangler'
    click_on 'Create Car'
    expect(page).to have_content 'Jeep'
    expect(page).to have_content 'Wrangler'
  end

  scenario 'User can update a car' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Car'
    fill_in 'Make', with: 'Jeep'
    fill_in 'Model', with: 'Wrangler'
    click_on 'Create Car'
    expect(page).to have_content 'Jeep'
    expect(page).to have_content 'Wrangler'
    click_on 'Jeep'
    click_on 'Edit'
    fill_in 'Make', with: 'Honda'
    fill_in 'Model', with: 'Accord'
    click_on 'Update'
    expect(page).to have_content 'Honda'
    expect(page).to have_content 'Accord'
    expect(page).to_not have_content 'Jeep'
    expect(page).to_not have_content 'Wrangler'
  end

  scenario 'User can delete a car' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Car'
    fill_in 'Make', with: 'Jeep'
    fill_in 'Model', with: 'Wrangler'
    click_on 'Create Car'
    expect(page).to have_content 'Jeep'
    expect(page).to have_content 'Wrangler'
    click_on 'Jeep'
    click_on 'Delete'
    expect(page).to_not have_content 'Jeep'
    expect(page).to_not have_content 'Wrangler'
  end
end