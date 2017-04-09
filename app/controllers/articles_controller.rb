class ArticlesController < ApplicationController # inherits from ApplicationController
  def new
  end

  def create
    @article = Article.new(article_params) # instantiating Article

    @article.save # saving new Article instance to DB. 
    # returns boolean whether the article was saved or not
    redirect_to @article
  end

  # strong parameter:
  private # private method ensures it can't be called outside its intended context
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
