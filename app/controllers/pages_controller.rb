class PagesController < ApplicationController


  def about
    @stories = Story.all.includes(:comments)
  end

  def show
      @comments = Comment.where(story_id: @story).order("created_at DESC")
  end

  private def story_params
    params.require(:story).permit(:title, :auth, :body)
  end



end
