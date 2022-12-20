class Expenditure < ApplicationRecord
  belongs_to :user
  has_many :category_expenditures, dependent: :destroy
  has_many :categories, through: :category_expenditures

  # Validations
  validates :name, presence: true, length: { maximum: 50 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
