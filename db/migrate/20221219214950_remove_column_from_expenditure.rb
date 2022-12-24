class RemoveColumnFromExpenditure < ActiveRecord::Migration[7.0]
  def change
    remove_column :expenditures, :category_id, :references
  end
end
