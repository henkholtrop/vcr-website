class VcrTeamsController < ApplicationController

  def index
    @vcr_teams = VcrTeam.all.order('title ASC')
  end

  def new
    @vcr_team = VcrTeam.new
  end

  def edit
    @vcr_team = VcrTeam.find(params[:id])
  end

  def show
    @vcr_team = VcrTeam.find(params[:id])
  end

  def create
    @vcr_team = VcrTeam.new(vcr_team_params)
 
    if @vcr_team.save
      redirect_to vcr_teams_path
    else
      render 'new'
    end
  end

  def update
    @vcr_team = VcrTeam.find(params[:id])
   
    if @vcr_team.update(vcr_team_params)
      redirect_to vcr_teams_path
    else
      render 'edit'
    end
  end

  def destroy
    @vcr_team = VcrTeam.find(params[:id])
    @vcr_team.destroy
   
    redirect_to vcr_teams_path
  end

private
  def vcr_team_params
    params.require(:vcr_team).permit(:title, :age_group)
  end

end
