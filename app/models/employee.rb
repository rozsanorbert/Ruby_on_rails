class Employee < ApplicationRecord
  belongs_to :office
  validates :name, presence: true
  validates :birth, presence: true
  validates :address, presence: true
end
