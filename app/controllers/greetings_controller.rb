class GreetingsController < ApplicationController
  def random
    random_greeting = Message.order('RANDOM()').first

    response.headers['Access-Control-Allow-Origin'] = '*' # Set the CORS header

    render json: { message: random_greeting&.content }
  end
end
