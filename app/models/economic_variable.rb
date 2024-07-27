class EconomicVariable < ApplicationRecord
  validates :name, :description, :font_link, presence: true
  has_many :cotizations, dependent: :destroy

  def current_cotization
    cotizations.last.value
  end
end
