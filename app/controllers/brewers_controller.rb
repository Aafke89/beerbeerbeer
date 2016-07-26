class BrewersController < ApplicationController
  before_action :find_brewery, only: [:show]
  before_action :show_nearby_brewery, only: [:index, :show]

  def index

  end

  def show

  end

  private

  def find_brewery
     @brewery = Brewer.find(params[:id])
     # @zipcode = params[:zipcode]
  end

  def show_nearby_brewery
    @breweries = Brewer.all
    @zipcode = params[:zipcode]
    if @zipcode
      @brewery = @breweries.near(@zipcode, 100, order: "distance").first
    end
  end




end
