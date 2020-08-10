class ArticlesController < ApplicationController
include ArticlesHelper
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

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article)
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
end
