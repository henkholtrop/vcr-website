class GamesController < ApplicationController

  load_and_authorize_resource

  def index
    @games = Game.all.order('date ASC')
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to games_path
    else
      render 'new'
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
   
    if @game.update(game_params)
      redirect_to games_path
    else
      render 'edit'
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
   
    redirect_to games_path
  end

  private
    def game_params
      params.require(:game).permit(:home_score, :away_score, :home_team, :away_team, :date)
  end

end