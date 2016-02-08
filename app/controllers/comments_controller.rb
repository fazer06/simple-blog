class CommentsController < ApplicationController

	def create
		# We can use this because of the article_id in the comment table
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])

		@comment.destroy
		redirect_to article_path(@article)
	end
 
  private
    def comment_params
    	params.require(:comment).permit(:commenter, :body)
    end

end
