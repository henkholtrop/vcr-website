class VcrGamesController < ApplicationController
  
  load_and_authorize_resource
  
  def index
    @vcr_games = VcrGame.all
  end

  def show
    @vcr_game = VcrGame.find(params[:id])
  end

  def new
    @vcr_game = VcrGame.new
  end

  def create
    @vcr_game = VcrGame.new(vcr_game_params)
    @vcr_team = VcrTeam.all

    if @vcr_game.save
      redirect_to new_vcr_game_path
    else
      render 'new'
    end
  end

  def edit
    @vcr_game = VcrGame.find(params[:id])
  end

  def update
    @vcr_game = VcrGame.find(params[:id])
   
    if @vcr_game.update(vcr_game_params)
      redirect_to new_vcr_game_path
    else
      render 'edit'
    end
  end

  def destroy
    @vcr_game = VcrGame.find(params[:id])
    @vcr_game.destroy
   
    redirect_to new_vcr_game_path
  end

  private
    def vcr_game_params
      params.require(:vcr_game).permit(:date, :home_team, :away_team, :vcr_team)
    end
end
