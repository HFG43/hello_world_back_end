class Api::V1::GreetingsController < ApplicationController
  def daily_greeting
    greeting = Greeting.order('RANDOM()').first
    render json: { greeting: greeting.message }
  end
end
