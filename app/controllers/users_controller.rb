class UsersController < ApplicationController
<<<<<<< HEAD
=======
  
>>>>>>> sign-up
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
<<<<<<< HEAD
  end

  def create
    @user = User.new(user_params)   
    if @user.save
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @user
    else
        render 'new'
    end
=======
>>>>>>> sign-up
  end

  private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation,
                                        :dob, :gender)
    end
end
