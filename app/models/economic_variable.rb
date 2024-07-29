# frozen_string_literal: true

class EconomicVariable < ApplicationRecord
  validates :name, :description, :font_link, presence: true
  has_many :cotizations, dependent: :destroy

  def current_cotization
    cotizations.last.value
  end

  def last_cotization_date
    cotizations.last.cotized_at
  end
end
