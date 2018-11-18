class Tool < ApplicationRecord
  belongs_to :office
  validates :name, presence: true
  validates :quantity, presence: true
end
