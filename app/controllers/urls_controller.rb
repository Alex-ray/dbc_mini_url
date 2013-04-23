class UrlsController < ApplicationController
  def index 
    @user = current_user
    @url = Url.new()
    @urls = current_user.urls
  end
end
