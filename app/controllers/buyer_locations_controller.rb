class BuyerLocationsController < ApplicationController
  before_action :set_buyer_location, only: %i[ show ]

  # GET /buyer_locations or /buyer_locations.json
  def index
    @buyer_locations = BuyerLocation.all
  end

  # GET /buyer_locations/1 or /buyer_locations/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyer_location
      @buyer_location = BuyerLocation.find(params[:id])
    end

end
