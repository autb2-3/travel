class UsersController < ApplicationController
def show
     @user = current_user
end
def update
  @user = User.new(params.require(:user).permit(:image,:name,:profile))
   
  if User.update(params.require(:user).permit(:image,:name,:profile))
    redirect_to users_show_path
    flash[:notice] = "Profile was successfully updated."
  else
    render users_show_path
  end
end
  
end