require 'rails_helper'


describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add A Product'
    fill_in 'Name', :with => 'Calculator'
    fill_in 'Description', :with => 'A small computer for calculations'
    fill_in 'Country of origin', :with => 'USA'
    fill_in 'Price', :with => 5.00
    click_on 'Create Product'
    expect(page).to have_content 'Calculator'
    expect(page).to have_content 'A small computer for calculations'
  end

  it "Checks error messaging when adding a new product" do
    visit products_path
    click_link 'Add A Product'
    fill_in 'Name', :with => ''
    fill_in 'Description', :with => 'A small computer for calculations'
    fill_in 'Country of origin', :with => 'USA'
    fill_in 'Price', :with => 5.00
    click_on 'Create Product'
    expect(page).to have_content 'Name can\'t be blank'
  end


end
