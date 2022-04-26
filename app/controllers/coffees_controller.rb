class CoffeesController < ApplicationController
  def index
    @coffees = Coffee.all
    render "coffees/index"
  end
end
