class AddCategoryKeyToExpenditures < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenditures, :category, foreign_key: true
  end
end
