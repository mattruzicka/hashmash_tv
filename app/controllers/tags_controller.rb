class TagsController < ApplicationController
  
  def show
    
  end

  def edit
  end

  def update
    @tag = params[:tag]
    render show
  end
end
