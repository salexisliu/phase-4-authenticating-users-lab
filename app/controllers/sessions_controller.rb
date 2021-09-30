class SessionsController < ApplicationController
  # before_action :find_user, only: [:create]

  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    render json: user
  end

  def destroy
    session.delete :user_id
    head :no_content
  end


  private
  # def find_user
  #   @user = User.find_by(username: params[:username])
  # end
end
