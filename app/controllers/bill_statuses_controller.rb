class BillStatusesController < ApplicationController
  before_action :set_bill_status, only: %i[ show update destroy ]

  # GET /bill_statuses
  def index
    @bill_statuses = BillStatus.all

    render json: @bill_statuses
  end

  # GET /bill_statuses/1
  def show
    render json: @bill_status
  end

  # POST /bill_statuses
  def create
    @bill_status = BillStatus.new(bill_status_params)

    if @bill_status.save
      render json: @bill_status, status: :created, location: @bill_status
    else
      render json: @bill_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bill_statuses/1
  def update
    if @bill_status.update(bill_status_params)
      render json: @bill_status
    else
      render json: @bill_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bill_statuses/1
  def destroy
    @bill_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_status
      @bill_status = BillStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bill_status_params
      params.require(:bill_status).permit(:name)
    end
end
