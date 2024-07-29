# frozen_string_literal: true

class UvaCotizationV1Job < ApplicationJob
  URL = 'https://prestamos.ikiwi.net.ar/api/v1/engine/uva/valores'

  def perform(date = Time.current)
    response = HTTParty.get(URL)
    return unless response.code == 200

    data = JSON.parse(response.body)
    return unless response.success?

    update_cotization(data, date)
  end

  private

  def update_cotization(data, date)
    economic_variable = EconomicVariables::Uva.last
    return unless economic_variable

    today_cotization = data.find { |c| Time.parse(c['fecha']).to_date == date.to_date }

    economic_variable.cotizations.create(
      value: today_cotization['valor'],
      cotized_at: date
    )
  end
end
