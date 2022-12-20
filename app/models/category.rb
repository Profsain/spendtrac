class Category < ApplicationRecord
  belongs_to :user
  has_many :category_expenditures, dependent: :destroy
  has_many :expenditures, through: :category_expenditures

  # Validations
  validates :name, presence: true, length: { maximum: 50 }
end
