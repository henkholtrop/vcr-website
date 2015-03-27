class VcrTeamsController < ApplicationController
  def index
    @vcr_teams = Vcr_teams.all
  end

  def new
    @vcr_team = Vcr_teams.new
  end
end
