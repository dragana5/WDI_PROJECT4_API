class SwimsController < ApplicationController
  before_action :set_swim, only: [:show, :update, :destroy]

  # GET /swims
  def index
    @swims = Swim.all

    render json: @swims
  end

  # GET /swims/1
  def show
    render json: @swim
  end

  # POST /swims
  def create
    @swim = Swim.new(swim_params)

    if @swim.save
      render json: @swim, status: :created, location: @swim
    else
      render json: @swim.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /swims/1
  def update
    if @swim.update(swim_params)
      render json: @swim
    else
      render json: @swim.errors, status: :unprocessable_entity
    end
  end

  # DELETE /swims/1
  def destroy
    @swim.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swim
      @swim = Swim.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def swim_params
      params.require(:swim).permit(:title, :description, :startDate, :endDate, :venue_id, :created_by, user_ids: [])
    end
end
