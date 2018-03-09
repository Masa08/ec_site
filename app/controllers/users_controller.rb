class UsersController < ApplicationController
  def show
  	@user = current_user
  end

  def edit
  	@user = current_user

  end
  def update
  	user = current_user
  	user.update(user_params)
  	redirect_to user_path(user)
  end

  def history_show
  	@user = current_user
  end

  def goodbye_confirmation
  end

  private
   def user_params
       params.require(:user).permit(:user_name_kanji, :user_name_kana, :postal_code, :address, :phone_number, :email)
    end
end
