class CoffeesController < ApplicationController
  def index
    @coffees = Coffee.all
    render "coffees/index"
  end

  def show
    @coffee = Coffee.find_by(id: params[:id])
    render "coffees/show"
  end
end
