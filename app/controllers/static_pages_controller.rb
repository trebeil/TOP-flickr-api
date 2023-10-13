class StaticPagesController < ApplicationController
  def show
    if params[:id]
      user_id = params[:id]
      @photos = flickr.photos.search :user_id => user_id
    end
  end
end
