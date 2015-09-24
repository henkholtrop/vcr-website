class ArticlesController < ApplicationController
  load_and_authorize_resource

  def new
  end

  def index
    @articles = Article.order('created_at DESC').paginate(:page => params[:page], :per_page => 12)
    @games = Game.where('date >= ?', Date.today).order('date ASC').limit(3)
  end
 
  def create
   
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @sponsors = Sponsor.all
    @games = Game.where('date >= ?', Date.today).order('date ASC').limit(3)
  end

  def update
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
   
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text, :image)
    end

end
