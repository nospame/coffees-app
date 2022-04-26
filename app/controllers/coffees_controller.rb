class CoffeesController < ApplicationController
  def index
    @coffees = Coffee.all
    render "coffees/index"
  end

  def new
    render "coffees/new"
  end

  def show
    @coffee = Coffee.find_by(id: params[:id])
    render "coffees/show"
  end

  def create
    coffee = Coffee.new(
      name: params[:name],
      origin: params[:origin],
      price: params[:price],
      roast: params[:roast],
      image: params[:image]
    )
    coffee.save
    redirect_to "/coffees/#{coffee.id}"
  end
end
