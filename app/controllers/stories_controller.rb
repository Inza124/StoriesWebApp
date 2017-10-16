class StoriesController < ApplicationController

  def index
    @stories = Story.all.includes(:comments)
  end

  def edit
      @story = Story.find(params[:id])
  end

  def update
  @story = Story.find(params[:id])
  @story.update(title: params[:title], body: params[:body])
  redirect_to about_path
  end


  def status_approved
    story = Story.find(params[:id])
    story.update_attribute(:status, 3)
    story.save
    redirect_to about_path
  end

  def status_archive
    story = Story.find(params[:id])
    story.update_attribute(:status, 1)
    story.save
    redirect_to about_path
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
