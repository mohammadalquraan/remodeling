class ServiceBuyersController < ApplicationController
  before_action :set_service_buyer, only: %i[ show edit update destroy  ]

  # GET /service_buyers
  def new
    @service_buyer = ServiceBuyer.new
  end

  # GET /service_buyers or /service_buyers.json
  def index
    @service_buyers = ServiceBuyer.all
  end

  # GET /service_buyers/1 or /service_buyers/1.json
  def show
  end

  def create
    @service_buyer = ServiceBuyer.new(service_buyer_params)

    respond_to do |format|
      if @service_buyer.save
        format.html { redirect_to service_buyer_url(@service_buyer), notice: "service_buyer was successfully created." }
        format.json { render :show, status: :created, service_buyer: @service_buyer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end
  def update
      respond_to do |format|
        if @service_buyer.update(service_buyer_params)
          format.html { redirect_to service_buyer_url(@service_buyer), notice: "service_buyer was successfully created." }
          format.json { render :show, status: :created, service_buyer: @service_buyer }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @service_buyer.errors, status: :unprocessable_entity }
        end
      end
  end

  # DELETE /@service_buyer/1 or /@service_buyer/1.json
  def destroy
    @service_buyer.destroy

    respond_to do |format|
      format.html { redirect_to service_buyers_url, notice: "service_buyer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_buyer
      @service_buyer = ServiceBuyer.find(params[:id])
    end

  def service_buyer_params
    params.require(:service_buyer).permit(:service_id, :buyer_id, :payout, :active)
  end

end
