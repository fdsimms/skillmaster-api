class Api::SportsController < ApplicationController
  def create
    @sport = Sport.new(sport_params)

    if @sport.save
      render :show
    else
      render json: @sport.errors.full_messages, status: 422
    end
  end

  def update
    @sport = Sport.find(params[:id])
    if @sport.update(sport_params)
      render :show
    else
      render json: @sport.errors.full_messages, status: 422
    end
  end

  def destroy
    @sport = Sport.find(params[:id])
    @sport.destroy!
    render :show
  end

  def show
    @sport = Sport.find(params[:id])
  end

  def index
    @sport = Sport.all
  end

  private

  def sport_params
    params.require(:sport).permit(:name)
  end

end
