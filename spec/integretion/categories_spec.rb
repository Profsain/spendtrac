require 'rails_helper'

describe 'Categories', type: :system do
  before(:example) do
    @user = User.create(name: 'john', email: 'john@gmail.com', password: '123456')
    @category = Category.create(name: 'Food', user_id: @user.id) 
    @expenditure = Expenditure.create(name: 'Burger', amount: 10, category_id: @category.id, user_id: @user.id)
  end

  describe 'GET /index' do
    it 'is a success' do
      visit '/categories'
      expect(page).to have_content('Food')
    end
  end

  describe 'Get /:id' do
    it 'is a success' do
      visit '/categories/'
      expect(page).to have_content('Burger')
    end
  end

end