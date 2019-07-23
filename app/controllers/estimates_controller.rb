class EstimatesController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @estimate = @project.estimates.create(params[:estimate].permit(:estimate))
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @estimate = @project.estimates.find(params[:id])
    @estimate.destroy
    redirect_to project_path(@project)
  end

end
