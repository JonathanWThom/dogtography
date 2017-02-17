require 'rails_helper'

describe Package do
  it { should have_many :users }
  it { should have_many(:users).through(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
end
