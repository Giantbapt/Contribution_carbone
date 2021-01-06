class ArticlesController < ApplicationController
	before_action :authenticate_admin!, only: [:new, :edit, :destroy]

def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
    @article.save!
    redirect_to root_path
  end

  def edit
    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article)
  end

  def index
  	@articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])

  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to dashboard_path, notice:"Nous avons bien supprimé votre article"
  end


  private

  def article_params
  	params.require(:article).permit(:id, :title, :text, :address, :author, :numbers_of_characters, :duration, :photo, :date, :meta_description, :meta_title, :meta_image)
  end
end
