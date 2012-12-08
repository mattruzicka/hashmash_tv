class TagsController < ApplicationController
  
  def show
    @tag = params[:tag]
    @data = Instagram.tag_recent_media(@tag, {count: 200}).data
  end

  def edit
  end
  
  def update
    redirect_to "/tags/#{params[:tag]}"
  end
  
end
