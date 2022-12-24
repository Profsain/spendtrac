require 'rails_helper'

describe 'Expenditures', type: :system do
  before(:example) do
    @user = User.create(name: 'john', email: 'john@gmail.com', password: '123456')
    @category = Category.create(name: 'Food', user_id: @user.id)
    @expenditure = Expenditure.create(name: 'Burger', amount: 10, category_id: @category.id, user_id: @user.id)
  end

  describe 'GET /new' do
    it 'is a success' do
      visit new_expenditure_path
      expect(page).to have_content('Create a new transaction:')
    end

    it 'is a success' do
      visit new_expenditure_path
      expect(page).to have_content('Name')
    end

    it 'is a success' do
      visit new_expenditure_path
      expect(page).to have_content('Amount')
    end

    it 'is a success' do
      visit new_expenditure_path
      expect(page).to have_content('Category')
    end
  end
end
