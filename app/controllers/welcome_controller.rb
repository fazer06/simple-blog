class WelcomeController < ApplicationController

	def index
		@articles = Article.limit(1)
		@popular_articles = Article.order('articles.view_count DESC').limit(3)
		@tags = Tag.all
	end

end
