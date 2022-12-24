require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    User.new(
      name: 'John Doe',
      email: 'john@gmail.com',
      password: 'password',
      password_confirmation: 'password'
    )

    Category.new(
      name: 'Feeding',
      user_id: @user
    )
  end

  before(:each) { subject.save }

  describe 'Validations' do
    it 'should have a name Feeding' do
      expect(subject.name).to eq('Feeding')
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a user_id' do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end
  end
end
