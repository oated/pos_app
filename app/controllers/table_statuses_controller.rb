class TableStatusesController < ApplicationController
  before_action :set_table_status, only: %i[ show update destroy ]

  # GET /table_statuses
  def index
    @table_statuses = TableStatus.all

    render json: @table_statuses
  end

  # GET /table_statuses/1
  def show
    render json: @table_status
  end

  # POST /table_statuses
  def create
    @table_status = TableStatus.new(table_status_params)

    if @table_status.save
      render json: @table_status, status: :created, location: @table_status
    else
      render json: @table_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /table_statuses/1
  def update
    if @table_status.update(table_status_params)
      render json: @table_status
    else
      render json: @table_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /table_statuses/1
  def destroy
    @table_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_status
      @table_status = TableStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def table_status_params
      params.require(:table_status).permit(:name)
    end
end
