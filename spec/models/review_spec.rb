require 'rails_helper'

describe Review do
  it { should belong_to :user }
  it { should belong_to :package }
  it { should validate_presence_of :content }
end
