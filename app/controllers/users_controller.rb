class UsersController < ApplicationController
  def show
    # byebug
    user = User.find(session[:user_id])
    render json: user, status: :ok
  end
end
