class ArticlesController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]

	def index
		@articles = Article.all
		@popular_articles = Article.order('articles.view_count DESC').limit(3)
		@tags = Tag.all
	end

	def new
		@article = current_user.articles.build
	end

	def create
		@article = current_user.articles.build(article_params)
		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def show
		@article = Article.find(params[:id])
		# Increment the counter using the increase_view_counter method
		@article.increment!(:view_count)
	end

	def edit
		@article = Article.find(params[:id])
	end

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

	private

		# http://weblog.rubyonrails.org/2012/3/21/strong-parameters/
		def article_params 
			params.require(:article).permit(:title, :body, :category_id, :tag_list)
		end

end
