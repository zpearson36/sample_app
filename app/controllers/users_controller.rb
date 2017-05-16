class UsersController < ApplicationController
  def new
	  @user = User.new
  end

  def show
	  @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      error_count = @user.errors.count
      err_msg = "There are " + error_count.to_s + " error(s) present:"
      @user.errors.full_messages.each do |msg|
        err_msg = err_msg + "<br> - " + msg
      end
      flash[:danger] = err_msg
      redirect_to action: 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
