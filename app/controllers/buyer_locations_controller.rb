class BuyerLocationsController < ApplicationController
  before_action :set_buyer_location, only: %i[ show edit update destroy  ]

  # GET /buyer_locations or /buyer_locations.json
  def index
    @buyer_locations = BuyerLocation.all
  end

  # GET /buyer_locations/1 or /buyer_locations/1.json
  def show
  end

  def new
    @buyer_location = BuyerLocation.new
  end

  def create
    @buyer_location = BuyerLocation.new(buyer_location_params)

    respond_to do |format|
      if @buyer_location.save
        format.html { redirect_to buyer_location_url(@buyer_location), notice: "buyer_location was successfully created." }
        format.json { render :show, status: :created, buyer_location: @buyer_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @buyer_location.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end
  def update
    respond_to do |format|
      if @buyer_location.update(buyer_location_params)
        format.html { redirect_to buyer_location_url(@buyer_location), notice: "buyer_location was successfully created." }
        format.json { render :show, status: :created, buyer_location: @buyer_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @buyer_location.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @buyer_location.destroy

    respond_to do |format|
      format.html { redirect_to buyer_locations_url, notice: "buyer_location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyer_location
      @buyer_location = BuyerLocation.find(params[:id])
    end

    def buyer_location_params
      params.require(:buyer_location).permit(:location_id, :buyer_id, :active)
    end

end
