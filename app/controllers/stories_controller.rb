class StoriesController < ApplicationController

  def index

  end

  def show
      @story = Story.find(params[:id])
      @comments = Comment.where(story_id: @story).order("created_at DESC")
  end

  def new

  end

  def create
      @story = Story.new(story_params)
      @story.save
      redirect_to @story
  end

  private def story_params
    params.require(:story).permit(:title, :auth, :body)
  end

end
