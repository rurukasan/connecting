class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email [:name, profile_attributes:[
      :nickname, 
      :image, 
      :term, 
      :style, 
      :seat_number, 
      :twitter, 
      :former_job,
      :shout_message
      ]
    ])
  end
end
