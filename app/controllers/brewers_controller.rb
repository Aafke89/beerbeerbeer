class BrewersController < ApplicationController
  before_action :find_brewery, only: [:show]
  before_action :show_brewery, only: [:index, :show]

  def index

  end

  def show

  end

  private

  def find_brewery
     @brewery = Brewer.find(params[:id])
     # @zipcode = params[:zipcode]
  end

  def show_brewery
    @breweries = Brewer.all
    @zipcode = params[:zipcode]
    @brew_show = params[:brewery]
    if @zipcode
      @brewery = @breweries.near(@zipcode, 100, order: "distance").first
    elsif @brew_show
      @brewery = Brewer.find(@brew_show)
    end
    beers
  end

  def beers
    if @brewery
      @beers = Beer.where(brewery: @brewery.name)
    end
  end
end
