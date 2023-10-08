class BillsController < ApplicationController
  before_action :set_bill, only: %i[ show update destroy ]

  # GET /bills
  def index
    @bills = Bill.all

    render json: @bills
  end

  # GET /bills/1
  def show
    render json: @bill
  end

  # POST /bills
  def create
    @bill = Bill.new(bill_params)

    if @bill.save
      render json: @bill, status: :created, location: @bill
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bills/1
  def update
    if @bill.update(bill_params)
      render json: @bill
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bills/1
  def destroy
    @bill.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill
      @bill = Bill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bill_params
      params.require(:bill).permit(:bill_no, :open_date, :open_time, :close_date, :close_time, :bill_status_id, :open_staff_id, :cashier_staff_id, :cancel_staff_id, :table_id, :booking_id, :total_price, :discount, :price_after_discount, :pay, :changes, :payment_type_id, :properties, :member_id)
    end
end
