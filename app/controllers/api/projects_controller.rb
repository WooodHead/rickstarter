class Api::ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    debugger
    @project = Project.new(project_params)
    @project.creator = currentUser
    if @project.save
      render :show
    else
      render json: @project.errors.full_messages, status: 422
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      render :show
    else
      render json: @project.errors.full_messages, status: 422
    end
  end

  def project_params
    params.require(:projects).permit(
    :title,
    :end_date,
    :funding_goal,
    :details,
    :category,
    :description
    )
  end

end
