class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :delete]
  before_action :authorize, except: [:index, :show]

  def index
    @liste_articles = Article.page(params[:page]).per(50)
  end
  
  def create
    @article = Article.new(article_params)
    @article.date = Time.zone.now
    
    params[:tags].each do |id, tag_name|
      @article.tags << Tag.find_by_name(tag_name)
    end

    if @article.save
      redirect_to "/articles"
    else
      render action: "new"
    end
  end

  def newArticle
    @tags = Tag.all
    @article = Article.new
  end

  def show
    @tags = Tag.all
  end

  def update
    @article.tags.clear
    params[:tags].each do |id, tag_name|
      @article.tags << Tag.find_by_name(tag_name)
    end

    if @article.update_attributes(article_params)
      redirect_to "/articles/#{params[:slug]}"
    else
      render action: "show"
    end
  end

  def destroy
    @article.destroy
    redirect_to "/articles"
  end

  def manageTags
    @new_tag = Tag.new
    @liste_tags = Tag.all
  end

  def destroyTag
    Tag.find(params[:id]).destroy
    redirect_to "/tags"
  end

  def createTag
    if params[:tag] and params[:tag]["name"]
      @tag = Tag.create name: params[:tag]["name"]
      redirect_to "/tags"
    else
      redirect_to "/tags", notice: "Le nom est vide"
    end
  end

private
  def set_article
    @article = Article.friendly.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :main_image, :country, :place, :content, :lat, :lgn)
  end
end

