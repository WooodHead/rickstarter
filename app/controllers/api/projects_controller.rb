require 'active_support/core_ext/string'

class Api::ProjectsController < ApplicationController
  def index
    @projects = Project.includes(:creator, :backers, :rewards)
    # if @project.rewards.count > 0 
    #   @rewards = Reward.includes(:pledgings).find_by(project_id: @project.id)
    # end

  end

  def show
    @project = Project.includes(:creator, :backers).find(params[:id])
    @rewards = Reward.includes(:pledgings).where(project_id: @project.id)
    debugger
    render :show
  end


  def create
    params[:project][:rewards_attributes] = JSON.parse(params[:project][:rewards_attributes])
    @project = Project.new(project_params)
    @project.creator = current_user
    if @project.save
      render :show
    else
      render json: @project.errors.full_messages, status: 422
    end
  end

  def update
    debugger
    @project = Project.find(params[:id])

    if @project.update(project_params)
      render :show
    else
      render json: @project.errors.full_messages, status: 422
    end
  end

  def project_params
    params.require(:project).permit(
    :title,
    :end_date,
    :funding_goal,
    :details,
    :category,
    :description,
    :image,
    rewards_attributes: [
      :title,
      :pledge_amount,
      :description,
      :project_id,
      :num_allowed,
      :num_backers
    ]
    )
  end

end
