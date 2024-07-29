# frozen_string_literal: true

class Cotization < ApplicationRecord
  belongs_to :economic_variable
  validates :value, presence: true

  after_create :set_cotized_at

  private

  def set_cotized_at
    return unless cotized_at.nil?

    self.cotized_at = Time.current
  end
end
