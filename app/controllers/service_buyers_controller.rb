class ServiceBuyersController < ApplicationController
  before_action :set_service_buyer, only: %i[ show ]

  # GET /service_buyers or /service_buyers.json
  def index
    @service_buyers = ServiceBuyer.all
  end

  # GET /service_buyers/1 or /service_buyers/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_buyer
      @service_buyer = ServiceBuyer.find(params[:id])
    end

end
