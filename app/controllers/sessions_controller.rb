class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    # byebug
    render json: user
  end

  def destroy
    session.delete :user_id
    head :no_content
  end
end
