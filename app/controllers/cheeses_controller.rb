class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end
  
  def show
    #FIND CHEESE USING THE ID ROM THE URL
    cheese = Cheese.find_by(id:params[:id])
    #SEND A JSON RESPONSE USING THAT CHEESE BJECT
    render json: cheese
  end

end
