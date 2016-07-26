class BrewersController < ApplicationController

  def index
    @breweries = Brewer.all
  end

  def show
    @brewery = Brewer.find(params[:id])
  end

end
