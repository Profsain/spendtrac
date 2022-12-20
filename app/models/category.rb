class Category < ApplicationRecord
  belongs_to :user
  has_many :expenditures

  # Validations
  validates :name, presence: true, length: { maximum: 50 }
end
