class ArticlesController < ApplicationController # inherits from ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params) # instantiating Article

    if @article.save # saving new Article instance to DB. 
    # returns boolean whether the article was saved or not
        redirect_to @article
    else
        render 'new'
    end
  end

  # used when you want to update a record that already exists
  # accepts a hash containing the attributes you want to update
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

  # strong parameter:
  private # private method ensures it can't be called outside its intended context
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
