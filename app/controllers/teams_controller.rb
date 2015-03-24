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
    
    @game1 = Game.where(home_team = @team)
    @game1.destroy

    @game2 = Game.where(away_team = @team)
    @game2.destroy

    @team.destroy
 
    redirect_to teams_path
  end

private
  def team_params
    params.require(:team).permit(:title, :logo)
  end

end
