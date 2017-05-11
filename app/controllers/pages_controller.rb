class PagesController < ApplicationController
  def home
  	@name = "Gwen"
  end

  def map
  	@trips = Article.all.where.not('articles.lat' => nil)
  end

  def themes
  	@articles = Article.all
  	@tags = Tag.all
  	@words = []
  	@tags.each do |t|
    		@weight = 0
  		@articles.each do |a|
  			if a.tags.include?(t)
  				@weight += 1 
  			end
  		end
  		@words << {:text => t.name, :weight => @weight, :link => "themes/#{t.id}"}
  	end
  end

  def showTheme
  	@theme = Tag.find(params[:id])
  	@allArticles = Article.all
  	@articles = []
  	@allArticles.each do |a|
  		if a.tags.include?(@theme)
  			@articles.push a
  		end
  	end
  end

  def search
  	
  end
end
