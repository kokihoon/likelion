class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def new
  end

  def create
    #binding.pry
    @article = Article.new(article_params)
    @article.save
    redirect_to @article  # redirect_to article_url(@article.id)

  end

  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end