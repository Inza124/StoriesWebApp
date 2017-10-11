class CommentsController < ApplicationController

  def create
    @post = Story.find(params[:story_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :body))
    redirect_to story_path(@post)
  end
end
