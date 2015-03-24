class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end
 
  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end
 
  def edit
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.new(team_params)
 
    if @team.save
      redirect_to teams_path
    else
      render 'new'
    end
  end

  def update
    @team = Team.find(params[:id])
   
    if @team.update(team_params)
      redirect_to teams_path
    else
      render 'edit'
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @home_team = Game.where(["home_team = ?", @team])
    @away_team = Game.where(["away_team = ?", @team])

    if !@home_team.present? && !@away_team.present?
      @team.destroy
      redirect_to teams_path
    elsif @home_team.present? && @away_team.present?
      Game.delete_all(["home_team = ?", @team])
      Game.delete_all(["away_team = ?", @team])
      @team.destroy
      redirect_to teams_path
    elsif @home_team.present?
      Game.delete_all(["home_team = ?", @team])
      @team.destroy
      redirect_to teams_path
    elsif @away_team.present?
      Game.delete_all(["away_team = ?", @team])
      @team.destroy
      redirect_to teams_path
    end
  end

private
  def team_params
    params.require(:team).permit(:title, :logo)
  end

end
