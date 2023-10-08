class OrderItemStatusesController < ApplicationController
  before_action :set_order_item_status, only: %i[ show update destroy ]

  # GET /order_item_statuses
  def index
    @order_item_statuses = OrderItemStatus.all

    render json: @order_item_statuses
  end

  # GET /order_item_statuses/1
  def show
    render json: @order_item_status
  end

  # POST /order_item_statuses
  def create
    @order_item_status = OrderItemStatus.new(order_item_status_params)

    if @order_item_status.save
      render json: @order_item_status, status: :created, location: @order_item_status
    else
      render json: @order_item_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /order_item_statuses/1
  def update
    if @order_item_status.update(order_item_status_params)
      render json: @order_item_status
    else
      render json: @order_item_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /order_item_statuses/1
  def destroy
    @order_item_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_item_status
      @order_item_status = OrderItemStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_item_status_params
      params.require(:order_item_status).permit(:name)
    end
end
