class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
    @skill = @user.skills.first
  end

  def update
    @user = User.find(params[:id])
    @skill = @user.skills.first
    @skill.update(params[:user][:skill].permit!)
      if @user.update(user_params)
        redirect_to user_path
      else
        render edit
      end
  end

  def create
    @user = User.new user_params
    @skills = @user.skills.new
      if @user.save && @skills.save
        session[:user_id] = @user.id
        redirect_to edit_user_path @user
      else
        render 'new'
      end
  end

  def show
    @user = User.find_by(params[:id])
    @skills = @user.skills
    @skills.first(1)

  end


  def delete
  end

private
  def user_params
    params.require(:user).permit(:id, :email, :password, :password_confirmation, :first_name, :last_name, :street, :city, :state, :zip, :phone, {:skills => [:sk_block_mason, :sk_brick_mason, :sk_finisher, :sk_stone_mason, :sk_form_setter]})
  end
end
