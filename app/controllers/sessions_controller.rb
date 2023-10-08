class SessionsController < ApplicationController
  before_action :set_session, only: %i[ show update destroy ]
  skip_before_action :authenticate, only: [:create]

  # GET /sessions
  def index
    @sessions = Session.all

    render json: @sessions
  end

  # GET /sessions/1
  def show
    render json: @session
  end

  # POST /sessions
  def create
    staff = Staff.authen(params[:username],params[:password])
    if staff
      session = Session.create(staff_id: staff.id)
      render json: session
    else
      render json: { success: false, msg: "Wrong Username or Password." }, status: 401
    end
  end

  # PATCH/PUT /sessions/1
  def update
    if @session.update(session_params)
      render json: @session
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sessions/1
  def destroy
    @session.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def session_params
      params.require(:session).permit(:staff_id, :access_token, :expire_datetime, :is_enable)
    end
end
