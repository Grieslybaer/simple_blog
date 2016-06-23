require_dependency "simple_blog/application_controller"

module SimpleBlog
  class CommentsController < ApplicationController
    def create
      @article = Article.find(params[:arctile_id])
      @comment = @article.comments.create(comment_params)
      redirect_to articles_path
    end

    private
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
end
