class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :check_user, only: [:show]

  def show
    @user = User.find(params[:id])
  end

  private 
  
  def check_user
    redirect_to current_user unless current_user.id.to_i == params[:id].to_i
  end
end
