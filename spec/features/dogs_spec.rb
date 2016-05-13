require 'rails_helper'

feature 'i see dogs' do
  scenario 'rails rendered html' do
    visit root_path
    expect(page).to have_content "Dogs"
  end

  scenario 'VueJs rendered dogs', js: :true do
    visit root_path
    expect(page).to_not have_content "Lucky"

    Dog.create!(name: "Lucky")

    visit root_path
    expect(page).to have_content "Lucky"
  end
end
