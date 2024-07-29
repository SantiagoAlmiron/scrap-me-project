# frozen_string_literal: true

class UvaCotizationV1Job < ApplicationJob
  URL = 'https://prestamos.ikiwi.net.ar/api/v1/engine/uva/valores'
  queue_as :cotizations

  def perform(date = Time.current)
    response = HTTParty.get(URL)
    return unless response.code == 200

    data = JSON.parse(response.body)
    return unless response.success?

    update_cotization(data, date)
  end

  private

  # As convention in this project methods always should return
  # true or false if not returns a value or raises en error
  def update_cotization(data, date)
    economic_variable = EconomicVariables::Uva.last
    return false unless economic_variable

    today_cotization = data.find { |c| Time.parse(c['fecha']).to_date == date.to_date }
    return true if economic_variable.current_cotization == today_cotization['valor']

    economic_variable.cotizations.create(
      value: today_cotization['valor'],
      cotized_at: date
    )
  end
end
