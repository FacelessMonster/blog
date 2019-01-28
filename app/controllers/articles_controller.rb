class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

def index
  @articles = Article.all
end

  def new
  end

  def create
    @article = Article.new(params_article)
    if @article.valid?
      @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

def edit 
  @article = Article.find(params[:id])
end

def update
  @article = Article.find(params[:id])
  if @article.update(params_article)
    redirect_to @article
  else
    render action: 'edit'
  end
end

  private
  def params_article
    params.require(:article).permit(:title, :content)
  end
end
