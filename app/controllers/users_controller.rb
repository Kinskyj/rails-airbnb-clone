class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def dashboard
    @user = current_user
    if @user.nil?
      redirect_to new_user_session_path
    end
  end

  def edit
  end

  def update
    current_user.update(set_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def set_params
    params.require(:user).permit(:first_name, :last_name, :email, :description, :language)
  end

end
