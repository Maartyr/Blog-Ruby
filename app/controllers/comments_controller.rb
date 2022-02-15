class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    binding.pry
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: 303
  end

 #Isso é errado, uma atrocidade... mas funcionou :)
#   def show
#     @article = Article.find(params[:article_id])
#     @comment = @article.comments.find(params[:id])
#     @comment.destroy
#     redirect_to article_path(@article)
# end


  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
