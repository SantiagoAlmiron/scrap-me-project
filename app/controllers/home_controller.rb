# frozen_string_literal: true

# This is the controller for the home page
class HomeController < ApplicationController
  def index
    @economic_variables = EconomicVariable.all
  end
end
