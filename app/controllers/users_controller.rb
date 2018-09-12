class UsersController < ApplicationController
	def new
		@user = User.new
	end

  def create
		@user = User.new
		@user.nickname = params[:user][:nickname]
		@user.password = params[:user][:password]
		@user.password = params[:user][:password_confirmation]
		if @user.save
			redirect_to pictures_path
		else
			render :form
		end
  end

end
