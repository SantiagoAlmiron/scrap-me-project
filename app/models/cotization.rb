class Cotization < ApplicationRecord
  belongs_to :economic_variable
  validates :value, presence: true
end
