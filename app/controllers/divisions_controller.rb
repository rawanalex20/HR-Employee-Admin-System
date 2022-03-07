class DivisionsController < ApplicationController
  before_action :set_division, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /divisions or /divisions.json
  def index
    @divisions = Division.all
  end

  # GET /divisions/1 or /divisions/1.json
  def show
  end

  # GET /divisions/new
  def new
    @division = Division.new
  end

  # GET /divisions/1/edit
  def edit
  end

  # POST /divisions or /divisions.json
  def create
    params[:division]["teams"].shift
    teams = params[:division]["teams"]
    teams.each_index do |index|
      team = Team.find(teams[index])
      params[:division]["teams"][index] = team
    end
    @division = Division.new(division_params)

    respond_to do |format|
      if @division.save
        params[:division]["teams"].each do |team|
          team.division = @division
          team.save
        end
        format.html { redirect_to division_url(@division), notice: t('.success') }
        format.json { render :show, status: :created, location: @division }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divisions/1 or /divisions/1.json
  def update
    teams = @division.teams
    teams.each do |team|
      team.division = nil
      team.save
    end
    params[:division]["teams"].shift
    teams = params[:division]["teams"]
    teams.each_index do |index|
      team = Team.find(teams[index])
      params[:division]["teams"][index] = team
    end
    
    respond_to do |format|
      if @division.update(division_params)
        params[:division]["teams"].each do |team|
          team.division = @division
          team.save
        end
        format.html { redirect_to division_url(@division), notice: t('.success') }
        format.json { render :show, status: :ok, location: @division }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divisions/1 or /divisions/1.json
  def destroy
    @division.destroy

    respond_to do |format|
      format.html { redirect_to divisions_url, notice: t('.success') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_division
      @division = Division.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def division_params
      params.require(:division).permit(:name, :description, :manager_id, teams:[])
    end
end
