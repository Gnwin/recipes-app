require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Apple Pie') }

  it 'a new user is valid' do
    expect(subject).to be_valid
  end

  it 'a new user without name is not valid' do
    new_user = User.new
    expect(new_user).to_not be_valid
  end
end
