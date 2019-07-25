class EstimatesController < ApplicationController
  before_action :set_estimate, only: [:show, :edit, :update, :destroy]

  # GET /estimates
  # GET /estimates.json
  def index
    @estimates = Estimate.all
  end

  # GET /estimates/1
  # GET /estimates/1.json
  def show
  end

  # GET /estimates/new
  def new
    @project = Project.find(params[:project_id])
    @estimate = @project.estimates.new
  end

  # GET /estimates/1/edit
  def edit
  end

  # POST /estimates
  # POST /estimates.json
  def create
    @project = Project.find(params[:project_id])
    @estimate = @project.estimates.create(params[:estimate].permit(:estimate))

    #respond_to do |format|
        redirect_back(fallback_location: root_path)
    #  else
    #    render :new
      #end
    #end
  end

  # PATCH/PUT /estimates/1
  # PATCH/PUT /estimates/1.json
  def update
    @project = Project.find(params[:project_id])

    respond_to do |format|
      if @estimate.update(estimate_params)
        redirect_to project_path(@project)
      else
        render :edit
      end
    end
  end

  # DELETE /estimates/1
  # DELETE /estimates/1.json
  def destroy
    @project = Project.find(params[:project_id])
    @estimate = @project.estimates.find(params[:id])

    @estimate.destroy
    respond_to do |format|
      redirect_to project_path(@project)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estimate
      @estimate = Estimate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estimate_params
      params.fetch(:estimate, {})
    end
end
