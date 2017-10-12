class CommentsController < ApplicationController
before_action :find_post
  def create
    @story = Story.find(params[:story_id])
    @comment = @story.comments.create(params[:comment].permit(:content))
    @comment.user_id = current_user.id
    @comment.save
    if @comment.save
    redirect_to about_path
  else
    render 'new'
  end
end


private
def find_post
  @story = Story.find(params[:story_id])
end

end
