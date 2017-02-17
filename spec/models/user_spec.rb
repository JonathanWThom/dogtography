require 'rails_helper'

describe User do
  it { should have_many :packages }
  it { should have_many(:packages).through(:reviews) }
end
