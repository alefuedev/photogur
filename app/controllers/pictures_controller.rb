class PicturesController < ApplicationController
	before_action :ensured_logged_in, except: [:show, :index]
	before_action :load_picture, only: [:show, :edit, :update, :destroy]
	before_action :ensure_user_owns_picture, only: [:edit, :update, :destroy]

  def index
		@pictures_last = Picture.newest_first
  end

  def show
  end

  def new
		@picture = Picture.new					
  end

	def create
		@picture = Picture.new
		@picture.title = params[:picture][:title]
		@picture.artist = params[:picture][:artist]
		@picture.url = params[:picture][:url]
		@picture.user_id = current_user.id
		if @picture.save
			 redirect_to pictures_path
		else
			render :new
		end
	end

  def edit
  end

	def update
		@picture.title = params[:picture][:title]
		@picture.artist = params[:picture][:artist]
		@picture.url = params[:picture][:url]
		@picture.user_id = current_user.id
		if @picture.save
			 redirect_to picture_path(@picture)
		else
			render :edit
		end
	end

	def destroy
		@picture.destroy
		redirect_to pictures_path
	end
	
	def load_picture
		@picture = Picture.find(params[:id])
	end

	def ensure_user_owns_picture 
		unless current_user == @picture.user
			flash[:alert] = "Please Login"
			redirect_to new_session_path
		end
	end

end
