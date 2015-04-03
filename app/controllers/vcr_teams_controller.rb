class VcrTeamsController < ApplicationController

  def index
    @vcr_teams = VcrTeam.all.order('title ASC')
    @senioren = VcrTeam.where("age_group = 'Senioren'").order('title ASC')
    @junioren = VcrTeam.where("age_group = 'Junioren'").order('title ASC')
    @pupillen = VcrTeam.where("age_group = 'Pupillen'").order('title ASC')
  end

  def new
    @vcr_team = VcrTeam.new
  end

  def edit
    @vcr_team = VcrTeam.find(params[:id])
  end

  def show
    @vcr_team = VcrTeam.find(params[:id])
    @players = Member.where('team == ?', @vcr_team.id).where('occupation == ?', 'Speler')
    @sponsors = Sponsor.all
    @games = Game.where('date >= ?', Date.today).order('date ASC').limit(3)
  end

  def create
    @vcr_team = VcrTeam.new(vcr_team_params)
    @age_group = "Senioren", "Junioren", "Pupillen"
 
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
    params.require(:vcr_team).permit(:title, :age_group, :cover_image, :team_image)
  end
end