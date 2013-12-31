require 'spec_helper'

feature "Employee adds a food" do
  it "displays item after its added" do
    visit '/inventories/new'
    fill_in "Title", with: "Donuts"
    fill_in "Description", with: "Delicious"
    fill_in "Quantity", with: 12
    click_on "Save Inventory"

    expect(page).to have_content "Inventory was successfully created"
  end

  it "requires the fields" do
    visit '/inventories/new'
    click_on "Save Inventory"
    expect(page).to have_content "can't be blank"
  end

end
