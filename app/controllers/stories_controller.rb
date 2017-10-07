class StoriesController < ApplicationController

  def index
      @stories = Story.all
  end

  def show
      @story = Story.find(params[:id])
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
