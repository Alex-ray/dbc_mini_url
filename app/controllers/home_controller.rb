class HomeController < ApplicationController
  def signup
    @user = User.new
  end
end
