class Api::SkillsController < ApplicationController
  def create
    @skill = Skill.new(skill_params)

    if @skill.save
      render :show
    else
      render json: @skill.errors.full_messages, status: 422
    end
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      render :show
    else
      render json: @skill.errors.full_messages, status: 422
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy!
    render :show
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def index
    @skill = Skill.all
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :sport_id)
  end

end
