class ContentPageController < ApplicationController
  
  def new
    @content_page = ContentPage.new
  end

  def create
    @content_page = ContentPage.new(content_page_params)

    if @content_page.save
      redirect_to @content_page
    else
      render 'new'
    end
  end

  def edit
    @content_page = ContentPage.find(params[:id])
  end

  def update
    @content_page = ContentPage.find(params[:id])

    if @content_page.update(content_page_params)
      redirect_to @content_page
    else
      render 'edit'
    end
  end

  def index
    @content_pages = ContentPage.all
  end

  def show
    @content_page = ContentPage.find(params[:id])
  end

  def destroy
    @content_page.find(params[:id])

    redirect_to content_page_path
  end

  private
  def content_page_params
    params.require(:content_page).permit(:title, :content, :club_type)
  end
end