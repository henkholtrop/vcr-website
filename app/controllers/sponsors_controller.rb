class SponsorsController < ApplicationController

  load_and_authorize_resource

  def index
    @sponsors = Sponsor.all
  end

  def show
    @sponsor = Sponsor.find(params[:id])
  end

  def new
    @sponsor = Sponsor.new
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  def create
    @sponsor = Sponsor.new(sponsor_params)

    if @sponsor.save
      redirect_to sponsors_path
    else
      render 'new'
    end
  end

  def update
    @sponsor = Sponsor.find(params[:id])
   
    if @sponsor.update(sponsor_params)
      redirect_to sponsors_path
    else
      render 'edit'
    end
  end

  def destroy
    @sponsor = Sponsor.find(params[:id])
    @sponsor.destroy
 
    redirect_to sponsors_path
  end

  private
    def sponsor_params
      params.require(:sponsor).permit(:title, :logo)
    end
end
