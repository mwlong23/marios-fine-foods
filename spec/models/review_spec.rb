require 'rails_helper'

describe Review do
  it { should validate_presence_of :username }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :review }
  it { should validate_presence_of :created_at }
  it { should validate_presence_of :updated_at }

end
