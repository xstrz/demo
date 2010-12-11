class PagesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.post
  end

end
