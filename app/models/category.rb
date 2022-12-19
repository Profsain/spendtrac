class Category < ApplicationRecord
  belongs_to :user
  belongs_to :expenditure
end
