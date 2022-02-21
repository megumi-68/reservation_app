class UsersController < ApplicationController

    def index
        @users = User.all
       end
       
       def account
        @user = current_user
       end
       
       def profile
        @user = current_user
       end
       
       def edit
        @user = current_user
       end
       
       def update
        @user = current_user
        @user.update(user_params)
        @user.update(image: nil) if params[:image_delete].present?
        if @user.update(user_params)
         flash[:notice] = "ユーザー情報を更新しました"
         redirect_to profile_path
        else
         redirect_to root_path
        end
       end
       
       def user_params
        params.require(:user).permit(:name, :email, :introduce, :image, :encrypted_password)
       end
end
