class ArticlesController < ApplicationController
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

  private
  def params_article
    params.require(:article).permit(:title, :content)
  end
end
