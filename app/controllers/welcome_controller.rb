class WelcomeController < ApplicationController

  skip_authorization_check

  def index
    @articles = Article.all.order('created_at DESC').limit(6)
    @sponsors = Sponsor.all
    @games = Game.where('date >= ?', Date.today).order('date ASC').limit(3)
  end

  def new
    @article = Article.new
  end
 
  def create
    @article = Article.new(article_params)
   
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
   
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text, :image)
    end

end
