require 'rails_helper'

feature 'i see dogs' do
  Dog.create!(name: "Lucky")

  scenario 'rails rendered html' do
    visit root_path
    expect(page).to have_content "Dogs"
  end

  scenario 'VueJs rendered dogs', js: :true do
    visit root_path
    expect(page).to have_content "Lucky"
  end

end
