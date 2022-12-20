class RemoveColumnFromCategory < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :expenditure_id, :references
  end
end
