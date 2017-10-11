class PagesController < ApplicationController

  def about
    @stories = Story.all
  end

end
