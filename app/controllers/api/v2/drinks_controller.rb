class Api::V2::DrinksController < ApplicationController
  def index
    @drinks = Drink.all
    render 'index.json.jbuilder'
  end

  def show
    @drink = Drink.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @drink = Drink.new(
      name: params[:name],
      ingredients: params[:ingredients])
    @drink.save
    render 'show.json.jbuilder'
  end

  def update
    @drink = Drink.find_by(id: params[:id])
    @drink.name = params[:name] || @drink.name
    @drink.ingredients = params[:ingredients] || @drink.ingredients

    render 'show.json.jbuilder'
  end

  def destroy
    @drink = Drink.find_by(id: params[:id])
    @drink.destroy

    render json: { my_message: "Drink destroyed!"}
  end
end
