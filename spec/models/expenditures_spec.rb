require 'rails_helper'

RSpec.describe Expenditure, type: :model do
  subject do
    User.new(
      name: "John Doe",
      email: "john@gmail.com",
      password: "password",
      password_confirmation: "password"
    )

    Expenditure.new(
      name: "Food",
      amount: 100,
      user_id: @user
    )
  end

  before(:each) { subject.save }

  describe "Validations" do
    it "should have a name Food" do
      expect(subject.name).to eq("Food")
    end

    it "should have an amount of 100" do
      expect(subject.amount).to eq(100)
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an amount" do
      subject.amount = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a user_id" do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end
  end
end