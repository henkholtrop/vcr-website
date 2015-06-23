class GroupsController < ApplicationController
  load_and_authorize_resource param_method: :group_params

  def index
  end

  def new
  end

  def show
  end

  def create
    if @group.save
      #whoop whoop!
    else
      render :new
    end
  end

  private
    def :group_params
      params.require(:group).permit(:name)
    end
end
