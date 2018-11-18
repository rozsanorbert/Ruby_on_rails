class Office < ApplicationRecord
  has_many :tools
  has_many :employees
  validates :country, presence: true
  validates :city, presence: true
  validates :address, presence: true
end
