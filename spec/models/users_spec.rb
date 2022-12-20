require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(
      name: 'John Doe',
      email: 'john@gmail.com',
      password: 'password',
      password_confirmation: 'password'
    )
  end

  before { subject.save }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a password_confirmation' do
      subject.password_confirmation = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid if password and password_confirmation do not match' do
      subject.password_confirmation = 'not_password'
      expect(subject).to_not be_valid
    end
  end
end
