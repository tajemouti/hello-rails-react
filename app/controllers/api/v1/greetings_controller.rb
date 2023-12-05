class Api::V1::GreetingsController < ApplicationController
  before_action :set_default_format

  def index
    @greeting = Greeting.order('RANDOM()').first
  end

  private

  def set_default_format
    request.format = :json
  end
end
