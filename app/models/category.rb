class Category < ApplicationRecord
  belongs_to :user
  belongs_to :expenditure

  # Validations
  validates :name, presence: true, length: { maximum: 50 }
  validates :user_id, presence: true, foreign_key: true
end
