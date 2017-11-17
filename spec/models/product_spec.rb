require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :country_of_origin }
  it { should validate_presence_of :price }
  it { should validate_presence_of :created_at }
  it { should validate_presence_of :updated_at }
end
