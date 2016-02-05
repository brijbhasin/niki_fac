class ProjectActivitiesController < ApplicationController
  before_action :set_project_activity, only: [:show, :edit, :update, :destroy]

  # GET /project_activities
  # GET /project_activities.json
  def index
    @project_activities = ProjectActivity.all
  end

  # GET /project_activities/1
  # GET /project_activities/1.json
  def show
  end

  # GET /project_activities/new
  def new
    @project_activity = ProjectActivity.new
  end

  # GET /project_activities/1/edit
  def edit
  end

  # POST /project_activities
  # POST /project_activities.json
  def create
    @project_activity = ProjectActivity.new(project_activity_params)

    respond_to do |format|
      if @project_activity.save
        format.html { redirect_to @project_activity, notice: 'Project activity was successfully created.' }
        format.json { render :show, status: :created, location: @project_activity }
      else
        format.html { render :new }
        format.json { render json: @project_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_activities/1
  # PATCH/PUT /project_activities/1.json
  def update
    respond_to do |format|
      if @project_activity.update(project_activity_params)
        format.html { redirect_to @project_activity, notice: 'Project activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_activity }
      else
        format.html { render :edit }
        format.json { render json: @project_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_activities/1
  # DELETE /project_activities/1.json
  def destroy
    @project_activity.destroy
    respond_to do |format|
      format.html { redirect_to project_activities_url, notice: 'Project activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_activity
      @project_activity = ProjectActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_activity_params
      params.require(:project_activity).permit(:name, :start_date, :deliver_date, :project_id, :details)
    end
end
